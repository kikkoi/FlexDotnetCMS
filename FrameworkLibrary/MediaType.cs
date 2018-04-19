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
    
    public partial class MediaType
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MediaType()
        {
            this.MediaDetails = new HashSet<MediaDetail>();
            this.MediaTypes = new HashSet<MediaType>();
            this.MediaTypesRoles = new HashSet<MediaTypeRole>();
            this.Fields = new HashSet<MediaTypeField>();
        }
    
        public long ID { get; set; }
        public string Name { get; set; }
        public string Label { get; set; }
        public bool IsActive { get; set; }
        public System.DateTime DateCreated { get; set; }
        public System.DateTime DateLastModified { get; set; }
        public bool ShowInMenu { get; set; }
        public string MediaTypeHandler { get; set; }
        public Nullable<long> MasterPageID { get; set; }
        public bool ShowInSearchResults { get; set; }
        public bool EnableCaching { get; set; }
        public string MainLayout { get; set; }
        public string SummaryLayout { get; set; }
        public string FeaturedLayout { get; set; }
        public bool UseMediaTypeLayouts { get; set; }
        public bool ShowInSiteTree { get; set; }
        public string OnPublishExecuteCode { get; set; }
        public bool CommentsAreModerated { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MediaDetail> MediaDetails { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MediaType> MediaTypes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MediaTypeRole> MediaTypesRoles { get; set; }
        public virtual MasterPage MasterPage { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MediaTypeField> Fields { get; set; }
    }
}
