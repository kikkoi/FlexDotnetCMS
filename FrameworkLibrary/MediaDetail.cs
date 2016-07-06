//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FrameworkLibrary
{
    using System;
    using System.Collections.Generic;
    
    public abstract partial class MediaDetail
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MediaDetail()
        {
            this.RecurringTimePeriod = "\'\'";
            this.UsersMediaDetails = new HashSet<UserMediaDetail>();
            this.History = new HashSet<MediaDetail>();
            this.Fields = new HashSet<MediaDetailField>();
            this.Comments = new HashSet<Comment>();
            this.RolesMediaDetails = new HashSet<RoleMediaDetail>();
            this.FieldAssociations = new HashSet<FieldAssociation>();
        }
    
        public long ID { get; set; }
        public long MediaID { get; set; }
        public string Title { get; set; }
        public string LinkTitle { get; set; }
        public string ShortDescription { get; set; }
        public long LanguageID { get; set; }
        public long NumberOfViews { get; set; }
        public long NumberOfStars { get; set; }
        public bool IsDeleted { get; set; }
        public bool ShowInMenu { get; set; }
        public string SefTitle { get; set; }
        public string Handler { get; set; }
        public long MediaTypeID { get; set; }
        public System.DateTime DateCreated { get; set; }
        public System.DateTime DateLastModified { get; set; }
        public long CreatedByUserID { get; set; }
        public long LastUpdatedByUserID { get; set; }
        public bool AllowCommenting { get; set; }
        public Nullable<long> HistoryForMediaDetailID { get; set; }
        public int HistoryVersionNumber { get; set; }
        public string SectionTitle { get; set; }
        public bool CanAddToCart { get; set; }
        public decimal Price { get; set; }
        public long QuantityInStock { get; set; }
        public bool UseDirectLink { get; set; }
        public string DirectLink { get; set; }
        public bool OpenInNewWindow { get; set; }
        public bool IsDraft { get; set; }
        public bool RedirectToFirstChild { get; set; }
        public bool RenderInFooter { get; set; }
        public bool ForceSSL { get; set; }
        public bool IsProtected { get; set; }
        public Nullable<long> MasterPageID { get; set; }
        public bool ShowInSearchResults { get; set; }
        public string MetaKeywords { get; set; }
        public bool EnableCaching { get; set; }
        public string CachedVirtualPath { get; set; }
        public string CssClasses { get; set; }
        public string MetaDescription { get; set; }
        public string RecurringTimePeriod { get; set; }
        public string MainLayout { get; set; }
        public string SummaryLayout { get; set; }
        public string FeaturedLayout { get; set; }
        public bool UseMediaTypeLayouts { get; set; }
        public Nullable<System.DateTime> ExpiryDate { get; set; }
        public Nullable<System.DateTime> PublishDate { get; set; }
        public string MainContent { get; set; }
        public string PathToFile { get; set; }
    
        public virtual Language Language { get; set; }
        public virtual Media Media { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UserMediaDetail> UsersMediaDetails { get; set; }
        public virtual MediaType MediaType { get; set; }
        public virtual User CreatedByUser { get; set; }
        public virtual User LastUpdatedByUser { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MediaDetail> History { get; set; }
        public virtual MediaDetail HistoryForMediaDetail { get; set; }
        public virtual MasterPage MasterPage { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MediaDetailField> Fields { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Comment> Comments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RoleMediaDetail> RolesMediaDetails { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FieldAssociation> FieldAssociations { get; set; }
    }
}
