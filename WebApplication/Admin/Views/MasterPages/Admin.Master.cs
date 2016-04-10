﻿using FrameworkLibrary;
using FrameworkLibrary.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace WebApplication.Admin
{
    public partial class Admin : BaseMasterPage
    {
        private Website currentWebsite = WebsitesMapper.GetWebsite();
        private long numberOfActiveLanguages = LanguagesMapper.GetAllActive().Count();

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            BindSiteTreeView();

            var allNodes = SiteTree.GetAllNodes();

            allNodes.ForEach(i =>
            {
                if (i.Value == currentWebsite.ID.ToString() || i.Value == currentWebsite.ParentMediaID.ToString())
                {
                    i.ExpandParents();
                    i.Expand();
                }
                else
                {
                    i.Collapse();
                }
            });

            if (AdminBasePage.SelectedMediaDetail != null)
            {
                var selectedMediaDetailId = AdminBasePage.SelectedMediaDetail.ID.ToString();
                var node = allNodes.Find(i => i.Value == selectedMediaDetailId);
                if (node != null)
                {
                    node.ExpandParents();
                    node.Select();
                }
            }

            if (numberOfActiveLanguages < 2)
                LanguageSwitcher.Visible = false;
            else
                LanguageSwitcher.Visible = true;
        }

        private void BindTree(IEnumerable<Media> list, CustomTreeNode parentNode)
        {
            IMediaDetail item = null;

            if (parentNode != null)
                item = MediaDetailsMapper.GetByID(long.Parse(parentNode.Value));

            var nodes = list.Where(x => parentNode == null || item == null ? x.ParentMediaID == null : x.ParentMediaID == item.MediaID);
            foreach (var node in nodes)
            {
                var mediaDetail = MediaDetailsMapper.GetAtleastOneByMedia(node, AdminBasePage.CurrentLanguage);

                if (mediaDetail != null && mediaDetail.ID != 0 && mediaDetail.MediaType.ShowInSiteTree)
                {
                    CustomTreeNode newNode = new CustomTreeNode(mediaDetail.SectionTitle, mediaDetail.ID.ToString());

                    UpdateTreeNode(newNode, mediaDetail);

                    if (parentNode == null)
                    {
                        SiteTree.Nodes.Add(newNode);
                    }
                    else
                    {
                        parentNode.ChildNodes.Add(newNode);
                    }
                    newNode.Selected = false;
                    BindTree(list, newNode);
                }
            }
        }

        public void BindSiteTreeView()
        {
            if (Filter.Text == "")
            {
                var items = MediasMapper.GetDataModel().AllMedia.OrderBy(i => i.OrderIndex);
                BindTree(items, null);
            }
            else
            {
                var filterText = Filter.Text.ToLower().Trim();
                var foundItems = MediaDetailsMapper.GetDataModel().MediaDetails.Where(i => i.HistoryVersionNumber == 0 && i.LinkTitle.ToLower().Trim().Contains(filterText));

                SiteTree.Nodes.Clear();

                foreach (var item in foundItems)
                {
                    SiteTree.Nodes.Add(new CustomTreeNode(item.LinkTitle, item.ID.ToString(), URIHelper.ConvertToAbsUrl(WebApplication.BasePage.GetRedirectToMediaDetailUrl(item.MediaTypeID, item.Media.ID))));
                }
            }
        }

        protected void LoginStatus_OnLoggedOut(object sender, EventArgs e)
        {
            this.BasePage.CheckInAll();
        }

        private void UpdateTreeNode(CustomTreeNode node, IMediaDetail detail)
        {
            if (detail == null)
                return;

            node.Value = detail.ID.ToString();
            //node.Attributes.Add("FrontEndUrl", detail.AbsoluteUrl);

            var nodeText = "";

            if (detail.LanguageID != AdminBasePage.CurrentLanguage.ID)
            {
                nodeText = detail.LinkTitle + " - " + LanguagesMapper.GetByID(detail.Language.ID).Name;
                node.LIClasses.Add("doesNotExistInLanguage");
            }
            else
            {
                nodeText = detail.LinkTitle;
            }

            if (detail.IsDeleted)
            {
                node.LIClasses.Add("isDeleted");
            }

            //RadContextMenu contextMenu = (RadContextMenu)node.FindControl(node.ContextMenuID.ToString());

            if ((!detail.ShowInMenu) && (!detail.RenderInFooter))
                node.LIClasses.Add("isHidden");

            if ((!detail.CanRender) || (!detail.IsPublished))
                node.LIClasses.Add("unPublished");

            if ((AdminBasePage.SelectedMediaDetail != null) && (AdminBasePage.SelectedMediaDetail.ID.ToString() == node.Value))
            {
                node.LIClasses.Add("selected");
                node.LinkClasses.Add("jstree-clicked");                

                while (node.Parent != null)
                {
                    ((CustomTreeNode)node.Parent).LinkClasses.Add("jstree-open");
                }
            }

            if (detail.MediaType.Name == MediaTypeEnum.RootPage.ToString() || detail.MediaType.Name == MediaTypeEnum.Website.ToString())
            {
                node.LIClasses.Add("jstree-open");
            }

            node.Text = nodeText;

            node.LinkAttributes.Add("data-frontendurl", detail.AbsoluteUrl);
            node.LIAttributes.Add("data-mediaDetailId", detail.ID.ToString());

            node.NavigateUrl = URIHelper.ConvertToAbsUrl(WebApplication.BasePage.GetRedirectToMediaDetailUrl(detail.MediaTypeID, detail.MediaID));
        }
    }
}