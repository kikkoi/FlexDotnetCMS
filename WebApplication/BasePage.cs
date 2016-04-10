﻿using FrameworkLibrary;
using HtmlAgilityPack;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public class BasePage : System.Web.UI.Page
    {
        private FrameworkBaseMedia frameworkBaseMedia;
        private Dictionary<string, string> templateVars = new Dictionary<string, string>();
        private string currentPageVirtualPath = "";

        private List<string> uriSegments = new List<string>();
        private IEnumerable<Role> roles = new List<Role>();
        protected string masterFilesDirPath = "";
        private IEnumerable<Control> mobiles = new List<Control>();
        private IEnumerable<Control> nonMobiles = new List<Control>();
        public WebFormHelper WebFormHelper = new WebFormHelper();

        private PageStatePersister pageStatePersister;

        protected override PageStatePersister PageStatePersister
        {
            get
            {
                // Unlike as exemplified in the MSDN docs, we cannot simply return a new PageStatePersister
                // every call to this property, as it causes problems
                return pageStatePersister ?? (pageStatePersister = new Handlers.CustomPageStatePersister(this));
            }
        }

        public BasePage()
        {
            this.PreInit += new EventHandler(Page_PreInit);
            this.Init += new EventHandler(Page_Init);
            this.PreLoad += new EventHandler(Page_PreLoad);
            this.Load += new EventHandler(Page_Load);
            this.PreRender += new EventHandler(Page_PreRender);
        }

        public static Settings GetSettings()
        {
            return SettingsMapper.GetSettings();
        }

        public void Page_PreRender(object sender, EventArgs e)
        {
            WebFormHelper.GetJSIncludes(this.Page);

            if (AppSettings.CombineCssAndJsIncludes)
            {
                var slug = StringHelper.CreateSlug(Request.Url.PathAndQuery);
                var cssLoader = WebFormHelper.GenerateCssFileTag(AppSettings.LoadCssIncludesUrl + "_" + slug, TemplateBaseUrl, null, true);
                var jsLoader = WebFormHelper.GenerateJsFileTag(AppSettings.LoadJsIncludesUrl + "_" + slug, TemplateBaseUrl, null, true);

                JsIncludesPlaceHolder.Controls.Add(jsLoader);
                CssIncludesPlaceHolder.Controls.Add(cssLoader);
            }
        }

        public void Page_Load(object sender, EventArgs e)
        {
        }

        private string HandleMobileLayout(string html)
        {
            var htmlDoc = new HtmlDocument();
            htmlDoc.LoadHtml(html);
            var items = htmlDoc.DocumentNode.SelectNodes("//*[@class='nonMobile']");

            if (items != null)
            {
                foreach (var item in items)
                    item.Remove();
            }

            htmlDoc.OptionWriteEmptyNodes = true;
            return htmlDoc.DocumentNode.InnerHtml;
        }

        private string HandleNonMobileLayout(string html)
        {
            var htmlDoc = new HtmlDocument();
            htmlDoc.LoadHtml(html);
            var items = htmlDoc.DocumentNode.SelectNodes("//*[@class='mobile']");

            if (items != null)
            {
                foreach (var item in items)
                    item.Remove();
            }
            return htmlDoc.DocumentNode.InnerHtml;
        }

        public bool CanAccessSection()
        {
            if (CurrentMediaDetail.IsProtected)
            {
                if (CurrentUser == null)
                    return false;

                if (CurrentUser.HasPermission(PermissionsEnum.AccessProtectedSections))
                    return true;

                return false;
            }

            return true;
        }

        public static bool IsInAdminSection
        {
            get
            {
                return HttpContext.Current.Request.Url.AbsoluteUri.ToLower().Contains("/admin/");
            }
        }

        public static bool IsMobileDevice
        {
            get
            {
                if (!AppSettings.EnableMobileDetection)
                    return false;

                var Request = HttpContext.Current.Request;

                if (Request.UserAgent == null)
                    return false;

                string strUserAgent = Request.UserAgent.ToString().ToLower();

                bool isMobileDevice = false;

                if (strUserAgent.Contains("ipad"))
                    return false;

                if (strUserAgent != null)
                {
                    if (Request.Browser.IsMobileDevice == true || strUserAgent.Contains("iphone") ||
                        strUserAgent.Contains("blackberry") || strUserAgent.Contains("mobile") ||
                        strUserAgent.Contains("windows ce") || strUserAgent.Contains("opera mini") ||
                        strUserAgent.Contains("palm") || strUserAgent.Contains("android"))
                    {
                        return true;
                    }
                }

                return isMobileDevice;
            }
        }

        public static bool IsMobile
        {
            get
            {
                var Request = HttpContext.Current.Request;

                string setVersion = Request["UserSelectedVersion"];

                if (setVersion == null)
                    setVersion = UserSelectedVersion.ToString();

                if (!string.IsNullOrEmpty(setVersion))
                {
                    var tmpUserSelectedVersion = RenderVersion.HTML;
                    Enum.TryParse(setVersion, out tmpUserSelectedVersion);

                    UserSelectedVersion = tmpUserSelectedVersion;

                    return (tmpUserSelectedVersion == RenderVersion.Mobile) ? true : false;
                }

                return false;
            }
        }

        public static FrameworkLibrary.RenderVersion UserSelectedVersion
        {
            get
            {
                var version = ContextHelper.Get("UserSelectedVersion", ContextType.Session);

                if (version == null)
                {
                    if (IsMobileDevice)
                        version = RenderVersion.Mobile;
                    else
                        version = RenderVersion.HTML;
                }

                return (RenderVersion)version;
            }
            set
            {
                ContextHelper.Set("UserSelectedVersion", value, ContextType.Session);
            }
        }

        public void Page_PreLoad(object sender, EventArgs e)
        {
            if ((FrameworkBaseMedia.CurrentMediaDetail != null) && (Page.Master != null))
            {
                Page.MetaDescription = StringHelper.StripExtraSpaces(StringHelper.StripHtmlTags(FrameworkBaseMedia.CurrentMediaDetail.GetMetaDescription()));
                Page.MetaKeywords = StringHelper.StripExtraSpaces(StringHelper.StripHtmlTags(FrameworkBaseMedia.CurrentMediaDetail.GetMetaKeywords()));
                Page.Title = FrameworkBaseMedia.CurrentMediaDetail.GetPageTitle();
            }
        }

        public void AddToCart(IMediaDetail detail)
        {
            CurrentCart.AddItem(detail);
        }

        public Cart CurrentCart
        {
            get
            {
                return WebApplication.Controls.ShoppingCart.ShoppingCart.CurrentCart;
            }
        }

        /*public string GetRedirectToMediaDetailUrl(MediaType mediaType, long selectedMediaId, long? parentMediaId = null, long historyVersion = 0)
        {
            return GetRedirectToMediaDetailUrl(mediaType, selectedMediaId, parentMediaId, historyVersion);
        }*/

        public static string GetRedirectToMediaDetailUrl(long mediaTypeId, long selectedMediaId, long? parentMediaId = null, long historyVersion = 0)
        {
            return "~/Admin/Views/PageHandlers/Media/Detail.aspx?mediaTypeId=" + mediaTypeId.ToString() + "&selectedMediaId=" + selectedMediaId + "&parentMediaId=" + parentMediaId + "&historyVersion=" + historyVersion.ToString();
        }

        public static void RedirectToMediaDetail(IMediaDetail detail, long historyVersion = 0)
        {
            RedirectToMediaDetail(detail.MediaTypeID, detail.MediaID, detail.Media.ParentMediaID, detail.Language, detail, historyVersion);
        }

        public static void RedirectToMediaDetail(long mediaTypeId, long selectedMediaId, long? parentMediaId = null, Language language = null, IMediaDetail detail = null, long historyVersion = 0)
        {
            if (language != null)
                FrameworkSettings.SetCurrentLanguage(language);

            HttpContext.Current.Response.Redirect(GetRedirectToMediaDetailUrl(mediaTypeId, selectedMediaId, parentMediaId, historyVersion), true);
        }

        public void Page_Init(object sender, EventArgs e)
        {
            AddCommonIncludes();
            AddDefaultTemplateVars();
        }

        public void AddToJSPreload(string preloadUrl)
        {
            PreloadHelper.AddToList(preloadUrl);
        }

        public void AddCommonIncludes()
        {
            if (Master == null)
                return;

            if (AppSettings.IsRunningOnDev)
            {
                this.AddNoIndexAndNoFollowMetaTag();
            }
        }

        public void Page_PreInit(object sender, EventArgs e)
        {
            var httpRuntimeSection = new System.Web.Configuration.HttpRuntimeSection();
            var settings = GetSettings();

            if (settings.MaxRequestLength > 0)
                httpRuntimeSection.MaxRequestLength = settings.MaxRequestLength;

            WebFormHelper.ClearIncludesList();
            PreloadHelper.PreloadList.Clear();

            if (AppSettings.UseLoadFileServiceUrl)
                WebFormHelper.LoadFileServiceUrl = AppSettings.FileServiceHandlerUrl + AppSettings.LoadFileUriSegment;
            else
                WebFormHelper.LoadFileServiceUrl = "";

            WebFormHelper.CombineCssAndJsIncludes = AppSettings.CombineCssAndJsIncludes;

            if (Request["devAction"] != null)
            {
                switch (Request["devAction"])
                {
                    case "ClearAllCache":
                        ContextHelper.ClearAllMemoryCache();
                        break;
                }
            }

            frameworkBaseMedia = FrameworkBaseMedia.GetInstance(currentPageVirtualPath, true);

            if (this.MasterPageFile != null)
            {
                var masterFilePath = GetMasterPageFilePath();

                if (File.Exists(URIHelper.ConvertToAbsPath(masterFilePath)))
                    MasterPageFile = masterFilePath;
            }

            if (currentPageVirtualPath == "")
                currentPageVirtualPath = URIHelper.GetCurrentVirtualPath();

            if (frameworkBaseMedia.CurrentMediaDetail == null)
                return;

            if (currentPageVirtualPath == "")
                currentPageVirtualPath = URIHelper.GetCurrentVirtualPath();

            if (!CanAccessSection())
            {
                FormsAuthentication.RedirectToLoginPage();
                return;
            }
        }

        public string GetMasterPageFilePath()
        {
            string masterFilePath = HttpContext.Current.Request["masterFilePath"];

            if (masterFilePath == null)
                masterFilePath = "";

            var useMobile = ((!GetType().BaseType.Namespace.Contains(".Admin") && (IsMobile)));

            if (GetType().BaseType.Namespace.Contains(".Admin"))
            {
                if (File.Exists(URIHelper.ConvertToAbsPath(masterFilePath)))
                    return masterFilePath;

                return Page.MasterPageFile;
            }

            if (string.IsNullOrEmpty(masterFilePath) && frameworkBaseMedia != null && frameworkBaseMedia.CurrentMediaDetail != null)
            {
                var mediaType = MediaTypesMapper.GetByID(frameworkBaseMedia.CurrentMediaDetail.MediaTypeID);

                var masterPage = ((MediaDetail)frameworkBaseMedia.CurrentMediaDetail).GetMasterPage();

                if (masterPage != null)
                {
                    masterFilePath = masterPage.PathToFile;

                    if (useMobile)
                        masterFilePath = masterPage.GetMobileTemplate();
                }
                else
                {
                    if ((frameworkBaseMedia.CurrentMediaDetail.Handler == null) || (frameworkBaseMedia.CurrentMediaDetail.Handler == ""))
                    {
                        if (mediaType.MasterPage == null)
                        {
                            var defaultMaster = MasterPagesMapper.GetDefaultMasterPage();
                            masterFilePath = MasterPagesMapper.GetDefaultMasterPage().PathToFile;

                            if (useMobile)
                                masterFilePath = defaultMaster.GetMobileTemplate();
                        }
                        else
                        {
                            masterFilePath = mediaType.MasterPage.PathToFile;

                            if (useMobile)
                                masterFilePath = mediaType.MasterPage.GetMobileTemplate();
                        }
                    }
                    else
                    {
                        masterPage = MasterPagesMapper.GetByPathToFile(Page.MasterPageFile);

                        if (useMobile)
                            masterFilePath = masterPage.MobileTemplate;
                        else
                            masterFilePath = masterPage.PathToFile;
                    }
                }
            }

            return masterFilePath;
        }

        public Website CurrentWebsite
        {
            get
            {
                return WebsitesMapper.GetWebsite();
            }
        }

        public Media CurrentMedia
        {
            get
            {
                return frameworkBaseMedia.CurrentMedia;
            }
        }

        public IMediaDetail CurrentMediaDetail
        {
            get
            {
                return frameworkBaseMedia.CurrentMediaDetail;
            }
        }

        public Language CurrentLanguage
        {
            get
            {
                return frameworkBaseMedia.CurrentLanguage;
            }
        }

        public User CurrentUser
        {
            get
            {
                return frameworkBaseMedia.CurrentUser;
            }
            set
            {
                frameworkBaseMedia.CurrentUser = value;
            }
        }

        public string CurrentPageVirtualPath
        {
            get
            {
                return currentPageVirtualPath;
            }
        }

        public Location CurrentVisitorLocation
        {
            get
            {
                if (AppSettings.EnableGeoLocation)
                {
                    GeoLocationHelper.APIKey = AppSettings.GeoLocationAPIKey;
                    return FrameworkBaseMedia.CurrentVisitorLocation;
                }

                return null;
            }
        }

        public Location TrackCurrentVisitorLocation()
        {
            if (AppSettings.EnableGeoLocation)
            {
                return FrameworkBaseMedia.TrackCurrentVisitorLocation();
            }

            return null;
        }


        public string CurrentVisitorIP
        {
            get
            {
                return FrameworkBaseMedia.CurrentVisitorIP;
            }
        }

        public void CheckOut(IMediaDetail detail)
        {
            CheckInAll();
            var checkInItems = new List<KeyValuePair<IMediaDetail, User>>();

            foreach (KeyValuePair<IMediaDetail, User> item in CheckedOutItems)
            {
                if (item.Value.ID == CurrentUser.ID)
                    checkInItems.Add(item);
            }

            foreach (KeyValuePair<IMediaDetail, User> item in checkInItems)
            {
                CheckedIn(item.Key);
            }

            if (CheckedOutItems != null && detail != null && CurrentUser != null)
                CheckedOutItems.Add(detail, CurrentUser);
        }

        public void CheckedIn(IMediaDetail detail)
        {
            KeyValuePair<IMediaDetail, User> item = CheckedOutItems.Where(i => i.Key.ID == detail.ID).SingleOrDefault();

            detail = item.Key;
            User checkoutUser = item.Value;

            if (CheckedOutItems.TryGetValue(detail, out checkoutUser))
            {
                if (checkoutUser.ID == CurrentUser.ID)
                    CheckedOutItems.Remove(detail);
            }
        }

        public void CheckInAll()
        {
            var items = new Dictionary<IMediaDetail, User>();

            foreach (var item in CheckedOutItems)
                items.Add(item.Key, item.Value);

            foreach (KeyValuePair<IMediaDetail, User> item in items)
                CheckedIn(item.Key);
        }

        public KeyValuePair<IMediaDetail, User> IsCheckedOut(IMediaDetail detail)
        {
            foreach (KeyValuePair<IMediaDetail, User> item in CheckedOutItems)
            {
                if (item.Key.ID == detail.ID)
                    return item;
            }

            return default(KeyValuePair<IMediaDetail, User>);
        }

        public Dictionary<IMediaDetail, User> CheckedOutItems
        {
            get
            {
                return FrameworkSettings.CheckedOutItems;
            }
        }

        public string TemplateBaseUrl
        {
            get
            {
                var masterPageFile = this.MasterPageFile;

                if (masterPageFile == null)
                    masterPageFile = URIHelper.ConvertToAbsPath(GetMasterPageFilePath());

                var tmp = URIHelper.GetUriSegments(masterPageFile).ToList();

                tmp.RemoveAt(tmp.Count - 1);
                var masterFolder = string.Join("/", tmp);

                var baseUrl = URIHelper.ConvertAbsUrlToTilda(URIHelper.ConvertAbsPathToAbsUrl(masterFolder));

                if (!baseUrl.EndsWith("/"))
                    baseUrl += "/";

                return URIHelper.ConvertToAbsUrl(baseUrl);
            }
        }

        public void AddDefaultTemplateVars()
        {
            this.TemplateVars = GetDefaultTemplateVars(TemplateBaseUrl);
            //this.TemplateVars["PageID"] = this.Page.ToString();
            Page.MaintainScrollPositionOnPostBack = true;
        }

        public static Dictionary<string, string> GetDefaultTemplateVars(string templateBaseUrl)
        {
            var templateVars = new Dictionary<string, string>();

            if (LanguagesMapper.GetAllActive().Count() > 1)
                templateVars["BaseUrlWithLanguage"] = URIHelper.BaseUrlWithLanguage;

            templateVars["BaseUrl"] = URIHelper.BaseUrl;

            //templateVars["CurrentUrl"] = URIHelper.ConvertToAbsUrl(URIHelper.GetCurrentVirtualPath());
            templateVars["LoadJsIncludesUrl"] = AppSettings.LoadJsIncludesUrl;
            templateVars["LoadCssIncludesUrl"] = AppSettings.LoadCssIncludesUrl;
            templateVars["TemplateBaseUrl"] = templateBaseUrl;
            templateVars["FlashVersionBaseUrl"] = URIHelper.BaseUrl + AppSettings.FlashVersionBaseUri;

            return templateVars;
        }

        public static bool IsAjaxRequest
        {
            get
            {
                var request = HttpContext.Current.Request;
                if (request == null)
                {
                    throw new ArgumentNullException("request");
                }
                var context = HttpContext.Current;
                var isCallbackRequest = false;// callback requests are ajax requests
                if (context != null && context.CurrentHandler != null && context.CurrentHandler is System.Web.UI.Page)
                {
                    isCallbackRequest = ((System.Web.UI.Page)context.CurrentHandler).IsCallback;
                }
                return isCallbackRequest || (request["X-Requested-With"] == "XMLHttpRequest") || (request.Headers["X-Requested-With"] == "XMLHttpRequest");
            }
        }

        protected override void Render(HtmlTextWriter writer)
        {
            System.IO.StringWriter str = new System.IO.StringWriter();
            HtmlTextWriter wrt = new HtmlTextWriter(str);

            // render html
            base.Render(wrt); //CAPTURE THE CURRENT PAGE HTML SOURCE AS STRING
            //wrt.Close();

            string html = str.ToString();

            html = ParserHelper.ParseData(html, TemplateVars);

            /*if (!IsInAdminSection)
            {
                if ((AppSettings.EnableMobileDetection) && (FrontEndBasePage.IsMobile))
                    html = HandleMobileLayout(html);
                else
                    html = HandleNonMobileLayout(html);
            }*/

            if (!IsPostBack)
            {
                if (AppSettings.MinifyOutput)
                    html = StringHelper.StripExtraSpacesBetweenMarkup(html);
            }

            HtmlAgilityPack.HtmlDocument document = null;

            if (!IsInAdminSection)
            {
                document = new HtmlAgilityPack.HtmlDocument();
                document.LoadHtml(html);

                var forms = document.DocumentNode.SelectNodes("//form");

                if (forms != null && forms.Count > 1)
                {
                    forms.RemoveAt(0);
                    foreach (HtmlNode item in forms)
                    {
                        item.ParentNode.InnerHtml = item.ParentNode.InnerHtml.Replace("form", "div data-form");
                    }

                    html = document.DocumentNode.OuterHtml;
                }
            }

            if (AppSettings.EnableGlossaryTerms && !IsInAdminSection)
            {
                if (Master.ToString().Contains("views_masterpages"))
                {
                    var selectedNodes = document.DocumentNode.SelectNodes("//p|//li");
                    var terms = GlossaryTermsMapper.GetAll();

                    if (selectedNodes != null)
                    {
                        foreach (HtmlNode node in selectedNodes)
                        {
                            foreach (var term in terms)
                            {
                                var tempTerm = term.Term.Trim();

                                node.InnerHtml = Regex.Replace(node.InnerHtml, @"\b" + Regex.Escape(tempTerm) + @"\b", me =>
                                {
                                    var template = "<span data-toggle=\"tooltip\" title=\"" + term.Definition + "\">" + me.Value + "</span>";
                                    return template;
                                }, RegexOptions.IgnoreCase);
                            }
                        }
                    }
                }

                html = document.DocumentNode.OuterHtml;
            }

            if (CurrentMediaDetail != null)
            {
                if (!IsAjaxRequest)
                {
                    html = MediaDetailsMapper.ParseSpecialTags(CurrentMediaDetail, html);

                    if (CurrentUser == null && AppSettings.EnableOutputCaching && CurrentMediaDetail.EnableCaching && CurrentMediaDetail.CanRender)
                    {
                        if (AppSettings.EnableLevel1MemoryCaching)
                        {
                            CurrentMediaDetail.SaveToMemoryCache(UserSelectedVersion, html, Request.Url.Query);
                        }

                        if (AppSettings.EnableLevel2FileCaching)
                        {
                            CurrentMediaDetail.SaveToFileCache(UserSelectedVersion, html, Request.Url.Query);
                        }
                    }

                    ContextHelper.SetToSession("CurrentMediaDetail", CurrentMediaDetail);
                }
            }

            writer.Write(html);
        }

        public string CurrentMediaVirtualPath
        {
            get
            {
                return currentPageVirtualPath.ToLower();
            }
            set
            {
                currentPageVirtualPath = value.ToLower();
            }
        }

        public List<string> UriSegments
        {
            get
            {
                return uriSegments;
            }
        }

        public FrameworkBaseMedia FrameworkBaseMedia
        {
            get
            {
                return frameworkBaseMedia;
            }
        }

        public Control JsIncludesPlaceHolder
        {
            get
            {
                return Master.FindControl(AppSettings.JsIncludesPlaceHolderID);
            }
        }

        public Control CssIncludesPlaceHolder
        {
            get
            {
                return Master.FindControl(AppSettings.CssIncludesPlaceHolderID);
            }
        }

        public Control MetaIncludesPlaceHolder
        {
            get
            {
                return Master.FindControl(AppSettings.MetaIncludesPlaceHolderID);
            }
        }

        public Dictionary<string, string> TemplateVars
        {
            get
            {
                return templateVars;
            }
            set
            {
                templateVars = value;
            }
        }

        public void ClearIncludes()
        {
            if (JsIncludesPlaceHolder != null)
                JsIncludesPlaceHolder.Controls.Clear();

            if (CssIncludesPlaceHolder != null)
                CssIncludesPlaceHolder.Controls.Clear();

            if (MetaIncludesPlaceHolder != null)
                MetaIncludesPlaceHolder.Controls.Clear();
        }

        public Control FindControlRecursive(string id)
        {
            return WebFormHelper.FindControlRecursive(this.Page, id);
        }

        public void AddJSFile(string path)
        {
            if (JsIncludesPlaceHolder == null)
                return;

            WebFormHelper.AddJSFile(path, JsIncludesPlaceHolder, TemplateBaseUrl);
        }

        public void AddNoIndexAndNoFollowMetaTag()
        {
            if (MetaIncludesPlaceHolder == null)
                return;

            StateBag bag = new StateBag();
            bag.Add("name", "robots");
            bag.Add("content", "noindex, nofollow");

            WebFormHelper.AddMetaTag(new AttributeCollection(bag), MetaIncludesPlaceHolder);
        }

        public void AddCSSFile(string path, Dictionary<string, string> attributes = null)
        {
            if (CssIncludesPlaceHolder == null)
                return;

            WebFormHelper.AddCSSFile(path, CssIncludesPlaceHolder, TemplateBaseUrl, attributes);
        }

        public void ExecuteRawJS(string js)
        {
            //ClientScript.RegisterClientScriptBlock(GetType(), Guid.NewGuid().ToString(), js, true);
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), js, true);
        }

        public void ExecuteRawJQuery(string js)
        {
            ClientScript.RegisterClientScriptBlock(GetType(), Guid.NewGuid().ToString(), "<script type='text/javascript'>$(document).ready(function(){ " + js + " });</script>");
        }

        public void JSRedirect(string location, string timeout = "1000")
        {
            ExecuteRawJS("jQuery(document).ready(function(){ setTimeout(\"window.location.href='" + location + "';\", " + timeout + ") });");
        }

        public void DisplayjGrowlMessage(jGrowlMessage message)
        {
            ExecuteRawJS(jGrowlHelper.GenerateCode(message, true));
        }

        public void DisplaySuccessMessage(string message)
        {
            DisplayjGrowlMessage(new jGrowlMessage("Success", message, jGrowlMessage.jGrowlMessageType.Success));
        }

        public void DisplayErrorMessage(string message, Elmah.Error error = null)
        {
            DisplayjGrowlMessage(new jGrowlMessage("Error", message, jGrowlMessage.jGrowlMessageType.Error, error));
        }

        public void DisplayFeedbackMessage(string message)
        {
            DisplayjGrowlMessage(new jGrowlMessage("Feedback", message, jGrowlMessage.jGrowlMessageType.Feedback));
        }

        public void DisplayjGrowlMessages(IEnumerable<jGrowlMessage> messages)
        {
            ExecuteRawJS(jGrowlHelper.GenerateCode(messages, true));
        }

        public Return SendNotificationToAdministrators(string message, string subject, List<User> toAdministrators = null)
        {
            if (toAdministrators == null)
                toAdministrators = new List<User>();

            toAdministrators.AddRange(UsersMapper.GetAllByRoleEnum(RoleEnum.Administrator));

            return SendEmailToUsers(toAdministrators, subject, message);
        }

        public Return SendEmailToUsers(IEnumerable<User> users, string subject, string message)
        {
            string emails = "";

            foreach (User user in users)
                emails += user.EmailAddress + ";";

            return EmailHelper.Send(EmailHelper.GetMailAddressesFromString(emails), subject, message, AppSettings.SystemName, AppSettings.SystemEmailAddress);
        }

        public Return SendEmailToUser(User user, string message, string subject)
        {
            return EmailHelper.Send(EmailHelper.GetMailAddressesFromString(user.EmailAddress), subject, message, AppSettings.SystemName, AppSettings.SystemEmailAddress);
        }

        public string CommentReplyToMessage(Comment reply)
        {
            string message = @"There was a reply made to your comment ( If you dont see it on the site, It might still be in moderation ): <br /><i>" + reply.ReplyToComment.Message + @"</i><br /><br />
                <strong>Comment Details -</strong><br /><br />
                <strong>Name:</strong>" + reply.Name + @"<br />
                <strong>Email:<strong>" + reply.Email + @"<br />
                <strong>Message:</strong><br />
                " + reply.Message + "";

            return message;
        }

        public void SendMediaReplyToComment(Comment newComment, Comment replyToComment)
        {
            var address = new List<MailAddress>();
            address.Add(new MailAddress(replyToComment.Email, replyToComment.Name));

            EmailHelper.Send(address, "There was a reply made to your comment", CommentReplyToMessage(newComment), AppSettings.SystemName, AppSettings.SystemEmailAddress);
        }

        public void SendMediaCommentApprovalRequest(IMediaDetail obj)
        {
            string message = "";
            message = "There was a comment made on a news article with the title '" + obj.Title + "', click on the following link to approve or reject this comment: " + URIHelper.BaseUrl + "admin/" + MediaTypesMapper.GetByID(obj.MediaTypeID).Name + "/Edit.aspx?id=" + obj.ID;
            SendEmailToUser(UsersMapper.GetByID(obj.CreatedByUserID), message, "Comment Approval Request");
        }
    }
}