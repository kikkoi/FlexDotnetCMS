USE [FlexDotNetCMS]
GO
ALTER TABLE [dbo].[Website] DROP CONSTRAINT [FK_Website_MediaDetails]
GO
ALTER TABLE [dbo].[UsersRoles] DROP CONSTRAINT [FK_UsersRoles_UserID_Users_ID]
GO
ALTER TABLE [dbo].[UsersRoles] DROP CONSTRAINT [FK_UsersRoles_RoleID_Roles_ID]
GO
ALTER TABLE [dbo].[UsersMediaDetails] DROP CONSTRAINT [FK_UsersMediaDetails_UserID]
GO
ALTER TABLE [dbo].[UsersMediaDetails] DROP CONSTRAINT [FK_UsersMediaDetails_PermissionID]
GO
ALTER TABLE [dbo].[UsersMediaDetails] DROP CONSTRAINT [FK_UsersMediaDetails_MediaDetailID]
GO
ALTER TABLE [dbo].[UrlRedirectRules] DROP CONSTRAINT [FK_UrlRedirectRules_MediaDetails]
GO
ALTER TABLE [dbo].[Settings] DROP CONSTRAINT [FK_Settings_MasterPages]
GO
ALTER TABLE [dbo].[Settings] DROP CONSTRAINT [FK_Settings_Languages]
GO
ALTER TABLE [dbo].[RootPages] DROP CONSTRAINT [FK_RootPages_MediaDetails]
GO
ALTER TABLE [dbo].[RolesPermissions] DROP CONSTRAINT [FK_RolesPermissions_RolesID]
GO
ALTER TABLE [dbo].[RolesPermissions] DROP CONSTRAINT [FK_RolesPermissions_PermissionID]
GO
ALTER TABLE [dbo].[RolesMediaDetails] DROP CONSTRAINT [FK_RolesMediaDetails_RoleID]
GO
ALTER TABLE [dbo].[RolesMediaDetails] DROP CONSTRAINT [FK_RolesMediaDetails_MediaDetailID]
GO
ALTER TABLE [dbo].[Pages] DROP CONSTRAINT [FK_Pages_MediaDetailID_MediaDetails_ID]
GO
ALTER TABLE [dbo].[MediaTypesRoles] DROP CONSTRAINT [FK_MediaTypesRoles_Roles]
GO
ALTER TABLE [dbo].[MediaTypesRoles] DROP CONSTRAINT [FK_MediaTypesRoles_MediaTypeID]
GO
ALTER TABLE [dbo].[MediaTypesFields] DROP CONSTRAINT [FK_MediaTypesFields_MediaTypes]
GO
ALTER TABLE [dbo].[MediaTypesFields] DROP CONSTRAINT [FK_MediaTypesFields_Fields]
GO
ALTER TABLE [dbo].[MediaTypesChildren] DROP CONSTRAINT [FK_MediaTypesChildren_MediaTypeID]
GO
ALTER TABLE [dbo].[MediaTypesChildren] DROP CONSTRAINT [FK_MediaTypesChildren_AllowedChildMediaTypeID]
GO
ALTER TABLE [dbo].[MediaTypes] DROP CONSTRAINT [FK_MediaTypes_MasterPages]
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions] DROP CONSTRAINT [FK_MediaTypeRolesPermissions_MediaTypesRoleID]
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions] DROP CONSTRAINT [FK_MediaTypeRolesPermissions_MediaTypeRolesPermissionID]
GO
ALTER TABLE [dbo].[MediaTags] DROP CONSTRAINT [FK_MediaTags_TagID_Tags_ID]
GO
ALTER TABLE [dbo].[MediaTags] DROP CONSTRAINT [FK_MediaTags_MediaID_Media_ID]
GO
ALTER TABLE [dbo].[MediaDetailsFields] DROP CONSTRAINT [FK_MediaDetailsFields_MediaTypesFields]
GO
ALTER TABLE [dbo].[MediaDetailsFields] DROP CONSTRAINT [FK_MediaDetailsFields_Fields]
GO
ALTER TABLE [dbo].[MediaDetailsFields] DROP CONSTRAINT [FK_MediaDetailFields_MediaDetails]
GO
ALTER TABLE [dbo].[MediaDetailsComments] DROP CONSTRAINT [FK_MediaComments_MediaDetailID_MediaDetails_ID]
GO
ALTER TABLE [dbo].[MediaDetailsComments] DROP CONSTRAINT [FK_MediaCommentID_CommentID]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [FK_MediaDetails_MediaTypeID_MediaType_ID]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [FK_MediaDetails_MediaID_Media_ID]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [FK_MediaDetails_MasterPage]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [FK_MediaDetails_LastUpdatedByUserID]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [FK_MediaDetails_LanguageID_Languages_ID]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [FK_MediaDetails_HistoryForMediaDetailID]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [FK_MediaDetails_CreatedByUserID]
GO
ALTER TABLE [dbo].[Media] DROP CONSTRAINT [FK_Media_ParentMediaID]
GO
ALTER TABLE [dbo].[FieldsAssociations] DROP CONSTRAINT [FK_FieldsAssociations_MediaDetailsFields]
GO
ALTER TABLE [dbo].[FieldsAssociations] DROP CONSTRAINT [FK_FieldAssociations_MediaDetails]
GO
ALTER TABLE [dbo].[FieldFiles] DROP CONSTRAINT [FK_FieldFiles_MediaDetailsFields]
GO
ALTER TABLE [dbo].[Comments] DROP CONSTRAINT [FK_Comments_Users]
GO
ALTER TABLE [dbo].[Comments] DROP CONSTRAINT [FK_Comments_ReplyToCommentID]
GO
ALTER TABLE [dbo].[Comments] DROP CONSTRAINT [FK_Comments_Languages]
GO
ALTER TABLE [dbo].[WebserviceRequests] DROP CONSTRAINT [DF_WebserviceRequests_DateLastModified]
GO
ALTER TABLE [dbo].[WebserviceRequests] DROP CONSTRAINT [DF_WebserviceRequests_DateCreated]
GO
ALTER TABLE [dbo].[WebserviceRequests] DROP CONSTRAINT [DF_WebserviceRequests_Response]
GO
ALTER TABLE [dbo].[WebserviceRequests] DROP CONSTRAINT [DF_WebserviceRequests_UrlReferrer]
GO
ALTER TABLE [dbo].[UsersMediaDetails] DROP CONSTRAINT [DF_UsersMediaDetails_DateLastModified]
GO
ALTER TABLE [dbo].[UsersMediaDetails] DROP CONSTRAINT [DF_UsersMediaDetails_DateCreated]
GO
ALTER TABLE [dbo].[RolesMediaDetails] DROP CONSTRAINT [DF_RolesMediaDetails_DateLastModified]
GO
ALTER TABLE [dbo].[RolesMediaDetails] DROP CONSTRAINT [DF_RolesMediaDetails_DateCreated]
GO
ALTER TABLE [dbo].[MediaTypesRoles] DROP CONSTRAINT [DF_MediaTypesRoles_DateLastModified]
GO
ALTER TABLE [dbo].[MediaTypesRoles] DROP CONSTRAINT [DF_MediaTypesRoles_DateCreated]
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions] DROP CONSTRAINT [DF_MediaTypeRolesPermissions_DateLastModified]
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions] DROP CONSTRAINT [DF_MediaTypeRolesPermissions_DateCreated]
GO
ALTER TABLE [dbo].[MediaTags] DROP CONSTRAINT [DF_MediaTags_OrderIndex]
GO
ALTER TABLE [dbo].[GlossaryTerms] DROP CONSTRAINT [DF_GlossaryTerms_DateLastModified]
GO
ALTER TABLE [dbo].[GlossaryTerms] DROP CONSTRAINT [DF_GlossaryTerms_DateCreated]
GO
ALTER TABLE [dbo].[FieldFiles] DROP CONSTRAINT [DF_FieldFiles_DateCreated]
GO
ALTER TABLE [dbo].[FieldFiles] DROP CONSTRAINT [DF_FieldFiles_OrderIndex]
GO
ALTER TABLE [dbo].[FieldFiles] DROP CONSTRAINT [DF_FieldFiles_Description]
GO
ALTER TABLE [dbo].[FieldFiles] DROP CONSTRAINT [DF__FieldFiles__Link__6B2FD77A]
GO
ALTER TABLE [dbo].[EmailLog] DROP CONSTRAINT [DF__EmailLog__DateLa__21229F2E]
GO
ALTER TABLE [dbo].[EmailLog] DROP CONSTRAINT [DF__EmailLog__DateCr__202E7AF5]
GO
ALTER TABLE [dbo].[Comments] DROP CONSTRAINT [DF__Comments__DateLa__29ACF837]
GO
ALTER TABLE [dbo].[Comments] DROP CONSTRAINT [DF__Comments__DateCr__28B8D3FE]
GO
/****** Object:  Index [UNIQUE_UriSegment]    Script Date: 2016-06-14 4:39:26 PM ******/
ALTER TABLE [dbo].[Languages] DROP CONSTRAINT [UNIQUE_UriSegment]
GO
/****** Object:  Index [Languages_uq2]    Script Date: 2016-06-14 4:39:26 PM ******/
ALTER TABLE [dbo].[Languages] DROP CONSTRAINT [Languages_uq2]
GO
/****** Object:  Index [Languages_uq]    Script Date: 2016-06-14 4:39:26 PM ******/
ALTER TABLE [dbo].[Languages] DROP CONSTRAINT [Languages_uq]
GO
/****** Object:  Table [dbo].[Website]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[Website]
GO
/****** Object:  Table [dbo].[WebserviceRequests]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[WebserviceRequests]
GO
/****** Object:  Table [dbo].[UsersRoles]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[UsersRoles]
GO
/****** Object:  Table [dbo].[UsersMediaDetails]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[UsersMediaDetails]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UrlRedirectRules]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[UrlRedirectRules]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[Tags]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[Settings]
GO
/****** Object:  Table [dbo].[RootPages]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[RootPages]
GO
/****** Object:  Table [dbo].[RolesPermissions]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[RolesPermissions]
GO
/****** Object:  Table [dbo].[RolesMediaDetails]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[RolesMediaDetails]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[Permissions]
GO
/****** Object:  Table [dbo].[Pages]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[Pages]
GO
/****** Object:  Table [dbo].[MediaTypesRoles]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[MediaTypesRoles]
GO
/****** Object:  Table [dbo].[MediaTypesFields]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[MediaTypesFields]
GO
/****** Object:  Table [dbo].[MediaTypesChildren]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[MediaTypesChildren]
GO
/****** Object:  Table [dbo].[MediaTypes]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[MediaTypes]
GO
/****** Object:  Table [dbo].[MediaTypeRolesPermissions]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[MediaTypeRolesPermissions]
GO
/****** Object:  Table [dbo].[MediaTags]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[MediaTags]
GO
/****** Object:  Table [dbo].[MediaDetailsFields]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[MediaDetailsFields]
GO
/****** Object:  Table [dbo].[MediaDetailsComments]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[MediaDetailsComments]
GO
/****** Object:  Table [dbo].[MediaDetails]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[MediaDetails]
GO
/****** Object:  Table [dbo].[Media]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[Media]
GO
/****** Object:  Table [dbo].[MasterPages]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[MasterPages]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[Languages]
GO
/****** Object:  Table [dbo].[IPLocationTracker]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[IPLocationTracker]
GO
/****** Object:  Table [dbo].[GlossaryTerms]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[GlossaryTerms]
GO
/****** Object:  Table [dbo].[FieldsAssociations]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[FieldsAssociations]
GO
/****** Object:  Table [dbo].[Fields]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[Fields]
GO
/****** Object:  Table [dbo].[FieldFiles]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[FieldFiles]
GO
/****** Object:  Table [dbo].[EmailLog]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[EmailLog]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 2016-06-14 4:39:26 PM ******/
DROP TABLE [dbo].[Comments]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[UserID] [bigint] NULL,
	[LanguageID] [bigint] NOT NULL,
	[Status] [nvarchar](255) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
	[ReplyToCommentID] [bigint] NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmailLog]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailLog](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SenderName] [nvarchar](255) NOT NULL,
	[SenderEmailAddress] [nvarchar](255) NOT NULL,
	[ToEmailAddresses] [nvarchar](max) NOT NULL,
	[FromEmailAddress] [nvarchar](255) NOT NULL,
	[Subject] [nvarchar](255) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[VisitorIP] [nvarchar](255) NOT NULL,
	[RequestUrl] [nvarchar](255) NOT NULL,
	[ServerMessage] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_ContactMessages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FieldFiles]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldFiles](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MediaDetailFieldID] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PathToFile] [nvarchar](255) NOT NULL,
	[Link] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_FieldFiles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fields]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fields](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[FieldCode] [nvarchar](255) NOT NULL CONSTRAINT [DF_Fields_FieldCode]  DEFAULT (''),
	[FieldLabel] [nvarchar](255) NOT NULL,
	[RenderLabelAfterControl] [bit] NOT NULL CONSTRAINT [DF_Fields_RenderLabelAfterControl]  DEFAULT ((0)),
	[AdminControl] [nvarchar](max) NOT NULL,
	[FieldValue] [nvarchar](max) NOT NULL CONSTRAINT [DF_Fields_FieldValue]  DEFAULT (''),
	[GetAdminControlValue] [nvarchar](max) NOT NULL CONSTRAINT [DF_Fields_ReturnValuePropertyName]  DEFAULT (''),
	[SetAdminControlValue] [nvarchar](max) NOT NULL CONSTRAINT [DF_Fields_SetValueCode]  DEFAULT (''),
	[OrderIndex] [bigint] NOT NULL,
	[GroupName] [nvarchar](255) NOT NULL CONSTRAINT [DF_Fields_GroupName]  DEFAULT ('Main'),
	[FrontEndLayout] [nvarchar](max) NULL CONSTRAINT [DF_Fields_FrontEndLayout]  DEFAULT (''),
	[DateCreated] [datetime] NOT NULL CONSTRAINT [DF_Fields_DateCreated]  DEFAULT (getdate()),
	[DateLastModified] [datetime] NOT NULL CONSTRAINT [DF_Fields_DateLastModified]  DEFAULT (getdate()),
 CONSTRAINT [PK_Fields] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FieldsAssociations]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldsAssociations](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MediaDetailFieldID] [bigint] NOT NULL,
	[AssociatedMediaDetailID] [bigint] NOT NULL,
	[OrderIndex] [int] NOT NULL CONSTRAINT [DF_FieldsAssociations_OrderIndex]  DEFAULT ((0)),
 CONSTRAINT [PK_FieldAssociations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GlossaryTerms]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlossaryTerms](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Term] [nvarchar](max) NOT NULL,
	[Definition] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_GlossaryTerms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IPLocationTracker]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPLocationTracker](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IPAddress] [nvarchar](255) NOT NULL CONSTRAINT [DF_IPLocationTracker_IPAddress]  DEFAULT (''),
	[Location] [nvarchar](max) NOT NULL CONSTRAINT [DF_IPLocationTracker_Location]  DEFAULT (''),
	[DateCreated] [datetime] NOT NULL CONSTRAINT [DF_IPLocationTracker_DateCreated]  DEFAULT (getdate()),
	[DateLastModified] [datetime] NOT NULL CONSTRAINT [DF_IPLocationTracker_DateLastModified]  DEFAULT (getdate()),
 CONSTRAINT [PK_IPLocationTracker] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Languages]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](255) NOT NULL CONSTRAINT [DF_Languages_DisplayName]  DEFAULT (''),
	[Name] [nvarchar](255) NOT NULL,
	[UriSegment] [nvarchar](50) NOT NULL,
	[CultureCode] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF__Languages__IsAct__0F8D3381]  DEFAULT ((1)),
	[DateCreated] [datetime] NOT NULL CONSTRAINT [DF_Languages_DateCreated]  DEFAULT (getdate()),
	[DateLastModified] [datetime] NOT NULL CONSTRAINT [DF_Languages_DateLastModified]  DEFAULT (getdate()),
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MasterPages]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterPages](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[PathToFile] [nvarchar](255) NOT NULL,
	[MobileTemplate] [nvarchar](255) NOT NULL CONSTRAINT [DF_MasterPages_IsMobileTemplate]  DEFAULT (''),
	[DateCreated] [datetime] NOT NULL CONSTRAINT [DF_MasterPages_DateCreated]  DEFAULT (getdate()),
	[DateLastModified] [datetime] NOT NULL CONSTRAINT [DF_MasterPages_DateLastModified]  DEFAULT (getdate()),
 CONSTRAINT [PK_MasterPages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Media]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Media](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ParentMediaID] [bigint] NULL,
	[OrderIndex] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaDetails]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MediaID] [bigint] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[LinkTitle] [nvarchar](255) NOT NULL,
	[UseDirectLink] [bit] NOT NULL CONSTRAINT [DF_MediaDetails_UseDirectLink]  DEFAULT ((0)),
	[OpenInNewWindow] [bit] NOT NULL CONSTRAINT [DF_MediaDetails_OpenInNewWindow]  DEFAULT ((0)),
	[DirectLink] [nvarchar](255) NOT NULL CONSTRAINT [DF_MediaDetails_DirectLinkVirtualPath]  DEFAULT (''),
	[SectionTitle] [nvarchar](max) NOT NULL,
	[ShortDescription] [nvarchar](500) NOT NULL,
	[MainContent] [nvarchar](max) NOT NULL,
	[MetaKeywords] [nvarchar](500) NOT NULL CONSTRAINT [DF_MediaDetails_MetaKeywords]  DEFAULT (''),
	[MetaDescription] [nvarchar](max) NOT NULL CONSTRAINT [DF_MediaDetails_MetaDescription]  DEFAULT (''),
	[LanguageID] [bigint] NOT NULL,
	[NumberOfViews] [bigint] NOT NULL CONSTRAINT [DF_Media_NumberOfViews]  DEFAULT ((0)),
	[NumberOfStars] [bigint] NOT NULL CONSTRAINT [DF_Media_NumberOfStars]  DEFAULT ((0)),
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_Media_IsDeleted]  DEFAULT ((0)),
	[AllowCommenting] [bit] NOT NULL CONSTRAINT [DF_MediaDetails_EnableCommenting]  DEFAULT ((0)),
	[ExpiryDate] [datetime] NULL,
	[PublishDate] [datetime] NULL,
	[ShowInMenu] [bit] NOT NULL CONSTRAINT [DF__MediaDeta__ShowI__398D8EEE]  DEFAULT ((1)),
	[ShowInSearchResults] [bit] NOT NULL CONSTRAINT [DF_MediaDetails_ShowInSearchResults_1]  DEFAULT ((1)),
	[EnableCaching] [bit] NOT NULL CONSTRAINT [DF_MediaDetails_AllowCaching]  DEFAULT ((1)),
	[SefTitle] [nvarchar](255) NULL,
	[Handler] [nvarchar](255) NULL,
	[CachedVirtualPath] [nvarchar](255) NULL,
	[MediaTypeID] [bigint] NOT NULL,
	[HistoryVersionNumber] [int] NOT NULL CONSTRAINT [DF_MediaDetails_HistoryVersionNumber]  DEFAULT ((0)),
	[HistoryForMediaDetailID] [bigint] NULL,
	[IsDraft] [bit] NOT NULL CONSTRAINT [DF_MediaDetails_IsDraft]  DEFAULT ((0)),
	[CreatedByUserID] [bigint] NOT NULL,
	[LastUpdatedByUserID] [bigint] NOT NULL,
	[CanAddToCart] [bit] NOT NULL CONSTRAINT [DF_MediaDetails_CanAddToShoppingCart]  DEFAULT ((0)),
	[Price] [decimal](18, 2) NOT NULL CONSTRAINT [DF_MediaDetails_Price]  DEFAULT ((0.0)),
	[QuantityInStock] [bigint] NOT NULL CONSTRAINT [DF_MediaDetails_InStock]  DEFAULT ((0)),
	[RecurringTimePeriod] [nvarchar](50) NOT NULL CONSTRAINT [DF_MediaDetails_RecurringTimePeriod]  DEFAULT (''),
	[RedirectToFirstChild] [bit] NOT NULL CONSTRAINT [DF_MediaDetails_RedirectToFirstChild_1]  DEFAULT ((0)),
	[DateCreated] [datetime] NOT NULL CONSTRAINT [DF__MediaDeta__DateC__3A81B327]  DEFAULT (getdate()),
	[DateLastModified] [datetime] NOT NULL CONSTRAINT [DF__MediaDeta__DateL__3B75D760]  DEFAULT (getdate()),
	[RenderInFooter] [bit] NOT NULL CONSTRAINT [DF_MediaDetails_RenderInFooter1]  DEFAULT ((0)),
	[ForceSSL] [bit] NOT NULL CONSTRAINT [DF_MediaDetails_ForceSSL]  DEFAULT ((0)),
	[IsProtected] [bit] NOT NULL CONSTRAINT [DF_MediaDetails_IsProtected]  DEFAULT ((0)),
	[CssClasses] [nvarchar](50) NOT NULL CONSTRAINT [DF_MediaDetails_CssClasses]  DEFAULT (''),
	[MasterPageID] [bigint] NULL,
	[MainLayout] [nvarchar](max) NOT NULL CONSTRAINT [DF_MediaDetails_CustomCode]  DEFAULT (''),
	[SummaryLayout] [nvarchar](max) NOT NULL CONSTRAINT [DF_MediaDetails_SummaryLayout]  DEFAULT (''),
	[FeaturedLayout] [nvarchar](max) NOT NULL CONSTRAINT [DF_MediaDetails_SummaryLayout1]  DEFAULT (''),
	[UseMediaTypeLayouts] [bit] NOT NULL CONSTRAINT [DF_MediaDetails_UseMediaTypeLayouts]  DEFAULT ((0)),
	[PathToFile] [nvarchar](255) NOT NULL CONSTRAINT [DF_MediaDetails_PathToFile]  DEFAULT (''),
 CONSTRAINT [MediaDetails_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaDetailsComments]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaDetailsComments](
	[MediaDetailID] [bigint] NOT NULL,
	[CommentID] [bigint] NOT NULL,
 CONSTRAINT [PK_MediaComments] PRIMARY KEY CLUSTERED 
(
	[MediaDetailID] ASC,
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaDetailsFields]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaDetailsFields](
	[FieldID] [bigint] NOT NULL,
	[MediaDetailID] [bigint] NOT NULL,
	[MediaTypeFieldID] [bigint] NULL,
	[UseMediaTypeFieldFrontEndLayout] [bit] NOT NULL CONSTRAINT [DF_MediaDetailsFields_UseMediaTypeFieldFrontEndLayout]  DEFAULT ((0)),
 CONSTRAINT [PK_MediaDetailsFields_1] PRIMARY KEY CLUSTERED 
(
	[FieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaTags]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaTags](
	[TagID] [bigint] NOT NULL,
	[MediaID] [bigint] NOT NULL,
	[OrderIndex] [int] NOT NULL,
 CONSTRAINT [PK_MediaTags] PRIMARY KEY CLUSTERED 
(
	[TagID] ASC,
	[MediaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaTypeRolesPermissions]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaTypeRolesPermissions](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MediaTypeRoleID] [bigint] NOT NULL,
	[PermissionID] [bigint] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_MediaTypeRolesPermissions_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaTypes]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaTypes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Label] [nvarchar](255) NOT NULL,
	[MediaTypeHandler] [nvarchar](255) NOT NULL,
	[MasterPageID] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[ShowInMenu] [bit] NOT NULL,
	[ShowInSearchResults] [bit] NOT NULL CONSTRAINT [DF_MediaTypes_ShowInSearchResults_1]  DEFAULT ((1)),
	[ShowInSiteTree] [bit] NOT NULL CONSTRAINT [DF_MediaTypes_ShowInSiteTree]  DEFAULT ((1)),
	[EnableCaching] [bit] NOT NULL CONSTRAINT [DF_MediaTypes_EnableCaching]  DEFAULT ((1)),
	[MainLayout] [nvarchar](max) NOT NULL CONSTRAINT [DF_MediaTypes_CustomCode]  DEFAULT (''),
	[SummaryLayout] [nvarchar](max) NOT NULL CONSTRAINT [DF_MediaTypes_SummaryLayout]  DEFAULT (''),
	[FeaturedLayout] [nvarchar](max) NOT NULL CONSTRAINT [DF_MediaTypes_SummaryLayout1]  DEFAULT (''),
	[UseMediaTypeLayouts] [bit] NOT NULL CONSTRAINT [DF_MediaTypes_UseMediaTypeLayouts]  DEFAULT ((0)),
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [MediaType_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaTypesChildren]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaTypesChildren](
	[MediaTypeID] [bigint] NOT NULL,
	[AllowedChildMediaTypeID] [bigint] NOT NULL,
 CONSTRAINT [PK_AllowedChildMediaTypes] PRIMARY KEY CLUSTERED 
(
	[MediaTypeID] ASC,
	[AllowedChildMediaTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaTypesFields]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaTypesFields](
	[FieldID] [bigint] NOT NULL,
	[MediaTypeID] [bigint] NOT NULL,
	[Instructions] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_MediaTypesFields_1] PRIMARY KEY CLUSTERED 
(
	[FieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaTypesRoles]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaTypesRoles](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MediaTypeID] [bigint] NOT NULL,
	[RoleID] [bigint] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_MediaTypesRoles_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pages]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pages](
	[MediaDetailID] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MediaDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Permissions](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[EnumName] [varchar](255) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL CONSTRAINT [DF_Permissions_DateCreated]  DEFAULT (getdate()),
	[DateLastModified] [datetime] NOT NULL CONSTRAINT [DF_Permissions_DateLastModified]  DEFAULT (getdate()),
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[EnumName] [varchar](255) NOT NULL,
	[Description] [varchar](350) NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_Roles_IsActive]  DEFAULT ((1)),
	[DateCreated] [datetime] NOT NULL CONSTRAINT [DF__Roles__DateCreat__078C1F06]  DEFAULT (getdate()),
	[DateLastModified] [datetime] NOT NULL CONSTRAINT [DF__Roles__DateLastM__0880433F]  DEFAULT (getdate()),
 CONSTRAINT [PK__Roles__3214EC2705A3D694] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RolesMediaDetails]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesMediaDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MediaDetailID] [bigint] NOT NULL,
	[RoleID] [bigint] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_RolesMediaDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RolesPermissions]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesPermissions](
	[RoleID] [bigint] NOT NULL,
	[PermissionID] [bigint] NOT NULL,
 CONSTRAINT [PK_RolesPermissions] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[PermissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RootPages]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RootPages](
	[MediaDetailID] [bigint] NOT NULL,
 CONSTRAINT [PK_HomePages] PRIMARY KEY CLUSTERED 
(
	[MediaDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[GlobalCodeInHead] [nvarchar](max) NOT NULL CONSTRAINT [DF_Settings_GlobalCodeInHead]  DEFAULT (''),
	[GlobalCodeInBody] [nvarchar](max) NOT NULL CONSTRAINT [DF_Settings_GlobalCodeInBody]  DEFAULT (''),
	[ShoppingCartTax] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Settings_ShoppingCartTax]  DEFAULT ((0.00)),
	[MaxRequestLength] [int] NOT NULL CONSTRAINT [DF_Settings_MaxRequestLength]  DEFAULT ((100000)),
	[MaxUploadFileSizePerFile] [int] NOT NULL CONSTRAINT [DF_Settings_MaxUploadFileSizePerFile]  DEFAULT ((20000)),
	[SiteOnlineAtDateTime] [datetime] NOT NULL CONSTRAINT [DF_Settings_SiteOnlineAtDateTime]  DEFAULT (getdate()),
	[SiteOfflineAtDateTime] [datetime] NULL,
	[SiteOfflineUrl] [nvarchar](255) NOT NULL CONSTRAINT [DF_Settings_SiteOfflineUrl]  DEFAULT (''),
	[PageNotFoundUrl] [nvarchar](255) NOT NULL CONSTRAINT [DF_Settings_PageNotFoundUrl]  DEFAULT (''),
	[EnableGlossaryTerms] [bit] NOT NULL CONSTRAINT [DF_Settings_EnableGlossaryTerms]  DEFAULT ((0)),
	[OutputCacheDurationInSeconds] [bigint] NOT NULL CONSTRAINT [DF_Settings_OutputCacheDurationInSeconds]  DEFAULT ((60)),
	[DefaultLanguageID] [bigint] NOT NULL,
	[DefaultMasterPageID] [bigint] NOT NULL,
	[DateCreated] [datetime] NOT NULL CONSTRAINT [DF_Features_DateCreated]  DEFAULT (getdate()),
	[DateLastModified] [datetime] NOT NULL CONSTRAINT [DF_Features_DateLastModified]  DEFAULT (getdate()),
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tags]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[SefTitle] [nvarchar](255) NOT NULL,
	[ThumbnailPath] [nvarchar](255) NOT NULL CONSTRAINT [DF_Tags_ThumbnailPath]  DEFAULT (''),
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_Tags_IsActive]  DEFAULT ((1)),
	[OrderIndex] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL CONSTRAINT [DF_Topics_DateCreated]  DEFAULT (getdate()),
	[DateLastModified] [datetime] NOT NULL CONSTRAINT [DF_Topics_DateLastModified]  DEFAULT (getdate()),
 CONSTRAINT [PK_Topics] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UrlRedirectRules]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrlRedirectRules](
	[MediaDetailID] [bigint] NOT NULL,
	[VirtualPathToRedirect] [nvarchar](255) NOT NULL,
	[RedirectToUrl] [nvarchar](255) NOT NULL,
	[Is301Redirect] [bit] NOT NULL CONSTRAINT [DF_UrlRedirectRules_Is301Redirect]  DEFAULT ((0)),
 CONSTRAINT [PK_UrlRedirectRules] PRIMARY KEY CLUSTERED 
(
	[MediaDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProfilePhoto] [nvarchar](255) NULL,
	[UserName] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](255) NOT NULL CONSTRAINT [DF_Users_FirstName]  DEFAULT (''),
	[LastName] [nvarchar](255) NOT NULL CONSTRAINT [DF_Users_LastName]  DEFAULT (''),
	[EmailAddress] [nvarchar](255) NOT NULL,
	[AfterLoginStartPage] [nvarchar](255) NOT NULL CONSTRAINT [DF_Users_AfterLoginStartPage]  DEFAULT (''),
	[AuthenticationType] [nvarchar](255) NOT NULL,
	[LastLoggedInAt] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK__Users__3214EC277B264821] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersMediaDetails]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersMediaDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[MediaDetailID] [bigint] NOT NULL,
	[PermissionID] [bigint] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_UsersMediaDetails_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersRoles]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersRoles](
	[UserID] [bigint] NOT NULL,
	[RoleID] [bigint] NOT NULL,
 CONSTRAINT [PK__UsersRol__AF27604F2DB1C7EE] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WebserviceRequests]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebserviceRequests](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[UrlReferrer] [nvarchar](max) NOT NULL,
	[QueryString] [nvarchar](max) NOT NULL,
	[Method] [nvarchar](255) NOT NULL,
	[Response] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_WebserviceRequests] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Website]    Script Date: 2016-06-14 4:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Website](
	[MediaDetailID] [bigint] NOT NULL,
	[CodeInHead] [nvarchar](max) NOT NULL CONSTRAINT [DF_Website_CodeInHead]  DEFAULT (''),
	[CodeInBody] [nvarchar](max) NOT NULL CONSTRAINT [DF_Website_GoogleAnalyticsTrackingKey]  DEFAULT (''),
 CONSTRAINT [PK_Website] PRIMARY KEY CLUSTERED 
(
	[MediaDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Fields] ON 

INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [DateCreated], [DateLastModified]) VALUES (406, N'test', N'test', 0, N'<Admin:MultiFileUploader runat=''server'' SaveToFolder='''' />', N'System.Linq.OrderedEnumerable`2[FrameworkLibrary.FieldAssociation,System.Int32]', N'SelectedValue', N'SelectedValue', 0, N'', N'@{
    var field = (MediaDetailField)Model.Field;

    <ul>
    @foreach(var item in field.FieldFiles.OrderBy(i=>i.OrderIndex))
    {
        <li><a href=''@URIHelper.ConvertToAbsUrl(item.PathToFile)''><img src=''@URIHelper.ConvertToAbsUrl(item.PathToFile)?width=300&height=300&mode=min'' alt=''@item.Name''></a></li>
    }
    </ul>
}', CAST(N'2016-06-13 15:52:28.457' AS DateTime), CAST(N'2016-06-13 15:52:28.457' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [DateCreated], [DateLastModified]) VALUES (414, N'test', N'test', 0, N'<Admin:MultiFileUploader runat=''server'' SaveToFolder='''' />', N'System.Linq.OrderedEnumerable`2[FrameworkLibrary.FieldAssociation,System.Int32]', N'SelectedValue', N'SelectedValue', 0, N'', N'@{
    var field = (MediaDetailField)Model.Field;

    <ul>
    @foreach(var item in field.FieldFiles.OrderBy(i=>i.OrderIndex))
    {
        <li><a href=''@URIHelper.ConvertToAbsUrl(item.PathToFile)''><img src=''@URIHelper.ConvertToAbsUrl(item.PathToFile)?width=300&height=300&mode=min'' alt=''@item.Name''></a></li>
    }
    </ul>
}', CAST(N'2016-06-13 15:52:28.457' AS DateTime), CAST(N'2016-06-13 15:52:28.457' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [DateCreated], [DateLastModified]) VALUES (420, N'test', N'test', 0, N'<Admin:MultiFileUploader runat=''server'' SaveToFolder='''' />', N'', N'SelectedValue', N'SelectedValue', 0, N'', N'@{
    var field = (MediaDetailField)Model.Field;

    <ul>
    @foreach(var item in field.FieldAssociations.OrderBy(i=>i.OrderIndex))
    {
        <li><a href=''@URIHelper.ConvertToAbsUrl(item.MediaDetail.PathToFile)''><img src=''@URIHelper.ConvertToAbsUrl(item.MediaDetail.PathToFile)?width=100&height=100&mode=max'' alt=''@item.MediaDetail.SectionTitle''></a></li>
    }
    </ul>
}', CAST(N'2016-06-14 16:38:01.253' AS DateTime), CAST(N'2016-06-14 16:38:01.253' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [DateCreated], [DateLastModified]) VALUES (422, N'test', N'test', 0, N'<Admin:MultiFileUploader runat=''server'' SaveToFolder='''' />', N'System.Linq.OrderedEnumerable`2[FrameworkLibrary.FieldAssociation,System.Int32]', N'SelectedValue', N'SelectedValue', 0, N'', N'@{
    var field = (MediaDetailField)Model.Field;

    <ul>
    @foreach(var item in field.FieldFiles.OrderBy(i=>i.OrderIndex))
    {
        <li><a href=''@URIHelper.ConvertToAbsUrl(item.PathToFile)''><img src=''@URIHelper.ConvertToAbsUrl(item.PathToFile)?width=300&height=300&mode=min'' alt=''@item.Name''></a></li>
    }
    </ul>
}', CAST(N'2016-06-13 15:52:28.457' AS DateTime), CAST(N'2016-06-13 15:52:28.457' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [DateCreated], [DateLastModified]) VALUES (423, N'test', N'test', 0, N'<Admin:MultiFileUploader runat=''server'' SaveToFolder='''' />', N'System.Linq.OrderedEnumerable`2[FrameworkLibrary.FieldAssociation,System.Int32]', N'SelectedValue', N'SelectedValue', 0, N'', N'@{
    var field = (MediaDetailField)Model.Field;

    <ul>
    @foreach(var item in field.FieldFiles.OrderBy(i=>i.OrderIndex))
    {
        <li><a href=''@URIHelper.ConvertToAbsUrl(item.PathToFile)''><img src=''@URIHelper.ConvertToAbsUrl(item.PathToFile)?width=300&height=300&mode=min'' alt=''@item.Name''></a></li>
    }
    </ul>
}', CAST(N'2016-06-13 15:52:28.457' AS DateTime), CAST(N'2016-06-13 15:52:28.457' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [DateCreated], [DateLastModified]) VALUES (424, N'test', N'test', 0, N'<Admin:MultiFileUploader runat=''server'' SaveToFolder='''' />', N'System.Linq.OrderedEnumerable`2[FrameworkLibrary.FieldAssociation,System.Int32]', N'SelectedValue', N'SelectedValue', 0, N'', N'@{
    var field = (MediaDetailField)Model.Field;

    <ul>
    @foreach(var item in field.FieldFiles.OrderBy(i=>i.OrderIndex))
    {
        <li><a href=''@URIHelper.ConvertToAbsUrl(item.PathToFile)''><img src=''@URIHelper.ConvertToAbsUrl(item.PathToFile)?width=300&height=300&mode=min'' alt=''@item.Name''></a></li>
    }
    </ul>
}', CAST(N'2016-06-13 15:52:28.457' AS DateTime), CAST(N'2016-06-13 15:52:28.457' AS DateTime))
SET IDENTITY_INSERT [dbo].[Fields] OFF
SET IDENTITY_INSERT [dbo].[FieldsAssociations] ON 

INSERT [dbo].[FieldsAssociations] ([ID], [MediaDetailFieldID], [AssociatedMediaDetailID], [OrderIndex]) VALUES (55, 420, 68587, 0)
INSERT [dbo].[FieldsAssociations] ([ID], [MediaDetailFieldID], [AssociatedMediaDetailID], [OrderIndex]) VALUES (56, 424, 68589, 0)
SET IDENTITY_INSERT [dbo].[FieldsAssociations] OFF
SET IDENTITY_INSERT [dbo].[IPLocationTracker] ON 

INSERT [dbo].[IPLocationTracker] ([ID], [IPAddress], [Location], [DateCreated], [DateLastModified]) VALUES (1, N'::1', N'{"ip":"::1","country_code":"","country_name":"","region_code":"","region_name":"","city":"","zip_code":"","time_zone":"","latitude":0,"longitude":0,"metro_code":0}
', CAST(N'2016-06-10 14:16:09.260' AS DateTime), CAST(N'2016-06-10 14:16:09.260' AS DateTime))
SET IDENTITY_INSERT [dbo].[IPLocationTracker] OFF
SET IDENTITY_INSERT [dbo].[Languages] ON 

INSERT [dbo].[Languages] ([ID], [DisplayName], [Name], [UriSegment], [CultureCode], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (5, N'English', N'English', N'en', N'en-CA', N'Canadian English', 1, CAST(N'2010-12-10 22:51:31.000' AS DateTime), CAST(N'2012-01-12 10:23:53.993' AS DateTime))
INSERT [dbo].[Languages] ([ID], [DisplayName], [Name], [UriSegment], [CultureCode], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (6, N'French', N'French', N'fr', N'fr-CA', N'Canadian French', 0, CAST(N'2011-02-05 16:01:55.260' AS DateTime), CAST(N'2016-06-13 09:52:57.160' AS DateTime))
SET IDENTITY_INSERT [dbo].[Languages] OFF
SET IDENTITY_INSERT [dbo].[MasterPages] ON 

INSERT [dbo].[MasterPages] ([ID], [Name], [PathToFile], [MobileTemplate], [DateCreated], [DateLastModified]) VALUES (2, N'Template 1', N'~/Views/MasterPages/SiteTemplates/Template1.Master', N'~/Views/MasterPages/MobileTemplate/Mobile.Master', CAST(N'2012-01-12 15:32:36.367' AS DateTime), CAST(N'2015-02-17 10:17:02.667' AS DateTime))
INSERT [dbo].[MasterPages] ([ID], [Name], [PathToFile], [MobileTemplate], [DateCreated], [DateLastModified]) VALUES (3, N'Template 2', N'~/Views/MasterPages/SiteTemplates/Template2.Master', N'~/Views/MasterPages/MobileTemplate/Mobile.Master', CAST(N'2012-03-05 15:28:40.647' AS DateTime), CAST(N'2015-02-17 10:17:07.783' AS DateTime))
SET IDENTITY_INSERT [dbo].[MasterPages] OFF
SET IDENTITY_INSERT [dbo].[Media] ON 

INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (243, 298, 2)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (261, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (286, 298, 3)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (298, 261, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (503, 298, 5)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (3632, 298, 4)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (55166, 298, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (55167, 55166, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (55197, 298, 1)
SET IDENTITY_INSERT [dbo].[Media] OFF
SET IDENTITY_INSERT [dbo].[MediaDetails] ON 

INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [SectionTitle], [ShortDescription], [MainContent], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [PathToFile]) VALUES (336, 243, N'Login', N'Login', 0, 0, N'', N'Login', N'<p>Login</p>', N'<p>This is a test</p>', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2011-07-08 10:40:51.000' AS DateTime), 0, 1, 1, NULL, N'~/Views/PageHandlers/Login.aspx', N'~/login/', 1, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2011-12-19 15:54:43.973' AS DateTime), CAST(N'2016-03-01 15:01:20.183' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 0, N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [SectionTitle], [ShortDescription], [MainContent], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [PathToFile]) VALUES (716, 286, N'Site Offline', N'Site Offline', 0, 0, N'', N'Site Offline', N'Site Offline', N'Site Offline', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2012-03-30 11:03:28.000' AS DateTime), 0, 0, 1, NULL, N'~/Views/PageHandlers/SiteOffline.aspx', N'~/site-offline/', 1, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2012-03-30 11:03:28.757' AS DateTime), CAST(N'2016-03-01 15:00:54.060' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 0, N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [SectionTitle], [ShortDescription], [MainContent], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [PathToFile]) VALUES (773, 261, N'Root', N'Root', 0, 0, N'', N'Root', N'<p>Root</p>', N'<p>Root</p>', N'', N'


', 5, 0, 0, 0, 0, NULL, CAST(N'2012-05-02 16:21:03.000' AS DateTime), 0, 0, 1, NULL, N'', N'~/root/', 13, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 1, CAST(N'2012-05-02 16:20:52.533' AS DateTime), CAST(N'2015-09-09 16:11:39.073' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 0, N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [SectionTitle], [ShortDescription], [MainContent], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [PathToFile]) VALUES (1122, 503, N'Page Not Found', N'Page Not Found', 0, 0, N'', N'Page Not Found', N'<p>test</p>', N'<p>The page you are looking for does not exist, please <a href="{BaseUrl}site-map/">click here</a> to view our site map</p>', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2012-10-12 15:19:34.000' AS DateTime), 0, 0, 1, NULL, N'~/Views/PageHandlers/PageNotFound.aspx', N'~/page-not-found/', 1, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2012-10-12 15:19:34.857' AS DateTime), CAST(N'2016-06-11 21:18:40.407' AS DateTime), 0, 0, 0, N'', NULL, N'<h1>{SectionTitle}</h1>
<p>{LongDescription}</p>
This is a test
', N'', N'', 0, N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [SectionTitle], [ShortDescription], [MainContent], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [PathToFile]) VALUES (4041, 3632, N'Tags', N'Tags', 0, 0, N'', N'Tags', N'<p>Tags</p>', N'<p>Tags</p>', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2013-07-04 11:11:02.000' AS DateTime), 0, 0, 0, NULL, N'~/Views/PageHandlers/Tags.aspx', N'~/tags/', 1, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2013-07-04 11:11:02.620' AS DateTime), CAST(N'2016-03-01 15:00:54.067' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 0, N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [SectionTitle], [ShortDescription], [MainContent], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [PathToFile]) VALUES (46743, 55166, N'Url Redirect Rules', N'Url Redirect Rules', 0, 0, N'', N'Url Redirect Rules', N'Url Redirect Rules', N'Url Redirect Rules', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2015-05-15 14:36:44.000' AS DateTime), 0, 0, 1, NULL, N'', N'~/url-redirect-rules/', 17, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'''''', 0, CAST(N'2015-05-15 14:36:44.750' AS DateTime), CAST(N'2016-06-11 22:35:22.043' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 0, N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [SectionTitle], [ShortDescription], [MainContent], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [PathToFile]) VALUES (46744, 55167, N'/sampler -> /', N'/sampler -> /', 0, 0, N'', N'/sampler -> /', N'<p>/sampler -&gt; /</p>', N'<p>/sampler -&gt; /</p>', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2015-05-15 14:37:15.000' AS DateTime), 1, 0, 1, NULL, N'', N'~/url-redirect-rules/sampler/', 16, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'''''', 0, CAST(N'2015-05-15 14:37:15.027' AS DateTime), CAST(N'2016-04-13 11:53:23.327' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 0, N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [SectionTitle], [ShortDescription], [MainContent], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [PathToFile]) VALUES (68500, 298, N'New Item', N'New Item', 0, 0, N'New Item', N'New Item', N'New Item', N'New Item', N'New Item', N'New Item', 5, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, N'New Item', N'New Item', N'New Item', 1, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'New Item', 0, CAST(N'2016-06-14 11:16:40.383' AS DateTime), CAST(N'2016-06-14 11:16:40.383' AS DateTime), 0, 0, 0, N'New Item', NULL, N'New Item', N'New Item', N'New Item', 0, N'/media/images/icons/File.jpg')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [SectionTitle], [ShortDescription], [MainContent], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [PathToFile]) VALUES (68524, 298, N'Changed!', N'Changed!', 0, 0, N'', N'Changed!', N'<p>this is a test</p>', N'<p>Home</p>
<p>{Param1}</p>', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2016-06-14 16:21:16.000' AS DateTime), 1, 1, 1, NULL, N'', N'~/', 19, 5, 68575, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2016-06-14 13:24:07.563' AS DateTime), CAST(N'2016-06-14 16:30:11.710' AS DateTime), 0, 0, 0, N'', NULL, N'{Field:test}', N'', N'', 0, N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [SectionTitle], [ShortDescription], [MainContent], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [PathToFile]) VALUES (68546, 298, N'Home', N'Home', 0, 0, N'', N'Home', N'<p>this is a test</p>', N'<p>Home</p>
<p>{Param1}</p>', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2016-06-14 15:32:36.000' AS DateTime), 1, 1, 1, NULL, N'', N'~/', 19, 1, 68524, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2016-06-14 15:54:10.340' AS DateTime), CAST(N'2016-06-14 15:54:10.340' AS DateTime), 0, 0, 0, N'', NULL, N'{Field:test}', N'', N'', 0, N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [SectionTitle], [ShortDescription], [MainContent], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [PathToFile]) VALUES (68575, 298, N'Changed!', N'Changed!', 0, 0, N'', N'Changed!', N'<p>this is a test</p>', N'<p>Home</p>
<p>{Param1}</p>', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2016-06-14 16:30:11.000' AS DateTime), 1, 1, 1, NULL, N'', N'~/', 19, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2016-06-14 16:28:41.327' AS DateTime), CAST(N'2016-06-14 16:38:01.253' AS DateTime), 0, 0, 0, N'', NULL, N'{Field:test}', N'', N'', 0, N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [SectionTitle], [ShortDescription], [MainContent], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [PathToFile]) VALUES (68582, 298, N'Changed!', N'Changed!', 0, 0, N'', N'Changed!', N'<p>this is a test</p>', N'<p>Home</p>
<p>{Param1}</p>', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2016-06-14 16:30:11.683' AS DateTime), 1, 1, 1, NULL, N'', N'~/', 19, 6, 68575, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2016-06-14 16:30:52.123' AS DateTime), CAST(N'2016-06-14 16:30:52.123' AS DateTime), 0, 0, 0, N'', NULL, N'{Field:test}', N'', N'', 0, N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [SectionTitle], [ShortDescription], [MainContent], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [PathToFile]) VALUES (68585, 298, N'Changed!', N'Changed!', 0, 0, N'', N'Changed!', N'<p>this is a test</p>', N'<p>Home</p>
<p>{Param1}</p>', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2016-06-14 16:30:11.000' AS DateTime), 1, 1, 1, NULL, N'', N'~/', 19, 7, 68575, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2016-06-14 16:30:58.183' AS DateTime), CAST(N'2016-06-14 16:30:58.183' AS DateTime), 0, 0, 0, N'', NULL, N'{Field:test}', N'', N'', 0, N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [SectionTitle], [ShortDescription], [MainContent], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [PathToFile]) VALUES (68587, 55197, N'New Item', N'New Item', 0, 0, N'New Item', N'New Item', N'New Item', N'New Item', N'New Item', N'New Item', 5, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, N'New Item', N'New Item', N'New Item', 1, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'New Item', 0, CAST(N'2016-06-14 16:31:16.110' AS DateTime), CAST(N'2016-06-14 16:31:16.110' AS DateTime), 0, 0, 0, N'New Item', NULL, N'New Item', N'New Item', N'New Item', 0, N'/media/images/icons/File.jpg')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [SectionTitle], [ShortDescription], [MainContent], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [PathToFile]) VALUES (68588, 298, N'Changed!', N'Changed!', 0, 0, N'', N'Changed!', N'<p>this is a test</p>', N'<p>Home</p>
<p>{Param1}</p>', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2016-06-14 16:30:11.000' AS DateTime), 1, 1, 1, NULL, N'', N'~/', 19, 8, 68575, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2016-06-14 16:31:17.823' AS DateTime), CAST(N'2016-06-14 16:31:17.823' AS DateTime), 0, 0, 0, N'', NULL, N'{Field:test}', N'', N'', 0, N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [SectionTitle], [ShortDescription], [MainContent], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [PathToFile]) VALUES (68589, 55197, N'New Item', N'New Item', 0, 0, N'New Item', N'New Item', N'New Item', N'New Item', N'New Item', N'New Item', 5, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, N'New Item', N'New Item', N'New Item', 1, 1, 68587, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'New Item', 0, CAST(N'2016-06-14 16:31:16.110' AS DateTime), CAST(N'2016-06-14 16:31:16.110' AS DateTime), 0, 0, 0, N'New Item', NULL, N'New Item', N'New Item', N'New Item', 0, N'/media/images/icons/File.jpg')
SET IDENTITY_INSERT [dbo].[MediaDetails] OFF
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout]) VALUES (406, 68524, NULL, 0)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout]) VALUES (414, 68546, NULL, 0)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout]) VALUES (420, 68575, NULL, 0)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout]) VALUES (422, 68582, NULL, 0)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout]) VALUES (423, 68585, NULL, 0)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout]) VALUES (424, 68588, NULL, 0)
SET IDENTITY_INSERT [dbo].[MediaTypes] ON 

INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (1, N'Page', N'Page', N'~/Views/MediaTypeHandlers/Page.aspx', NULL, 1, 1, 1, 1, 1, N'{LongDescription}', N'', N'', 0, CAST(N'2011-02-25 16:00:51.810' AS DateTime), CAST(N'2015-09-09 15:54:47.673' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (13, N'RootPage', N'RootPage', N'~/Views/MediaTypeHandlers/RootPage.aspx', NULL, 1, 0, 0, 1, 1, N'', N'', N'', 0, CAST(N'2012-01-17 14:36:29.107' AS DateTime), CAST(N'2014-11-10 10:27:07.033' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (16, N'UrlRedirectRule', N'UrlRedirectRule', N'/Views/MediaTypeHandlers/UrlRedirectRule.aspx', NULL, 1, 0, 0, 1, 1, N'', N'', N'', 0, CAST(N'2012-04-13 15:39:37.113' AS DateTime), CAST(N'2016-06-06 14:16:36.357' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (17, N'UrlRedirectRuleList', N'UrlRedirectRuleList', N'~/Views/MediaTypeHandlers/UrlRedirectRuleList.aspx', NULL, 1, 0, 0, 1, 1, N'', N'', N'', 0, CAST(N'2012-04-13 15:40:04.020' AS DateTime), CAST(N'2012-08-16 14:56:08.823' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (19, N'Website', N'Website', N'~/Views/MediaTypeHandlers/Website.aspx', 2, 1, 1, 1, 1, 1, N'', N'', N'', 0, CAST(N'2012-06-14 16:49:05.997' AS DateTime), CAST(N'2016-06-06 14:14:58.307' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (22, N'NoTemplatePage', N'NoTemplatePage', N'~/Views/MediaTypeHandlers/NoTemplatePage.aspx', NULL, 1, 0, 0, 1, 0, N'', N'', N'', 0, CAST(N'2014-09-26 10:46:02.940' AS DateTime), CAST(N'2014-09-26 10:49:02.343' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (23, N'Blog', N'Blog', N'~/Views/MediaTypeHandlers/Page.aspx', NULL, 1, 1, 0, 1, 0, N'', N'', N'', 0, CAST(N'2016-02-26 14:56:06.043' AS DateTime), CAST(N'2016-03-11 10:23:39.357' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (24, N'BlogPost', N'BlogPost', N'~/Views/MediaTypeHandlers/Page.aspx', NULL, 1, 0, 0, 1, 1, N'', N'', N'', 0, CAST(N'2016-03-11 10:23:22.883' AS DateTime), CAST(N'2016-03-11 16:06:12.197' AS DateTime))
SET IDENTITY_INSERT [dbo].[MediaTypes] OFF
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (1, 1)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (1, 22)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (13, 19)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (17, 16)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (19, 1)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (19, 17)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (19, 22)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (19, 23)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (22, 22)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (23, 24)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (336)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (716)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (1122)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (4041)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (46743)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (68587)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (68589)
SET IDENTITY_INSERT [dbo].[Permissions] ON 

INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (3, N'Delete Items', N'DeleteItems', N'Delete Items', 1, CAST(N'2011-03-19 15:26:49.907' AS DateTime), CAST(N'2011-05-27 09:36:44.640' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (5, N'Delete Items Permanently', N'DeleteItemsPermanently', N'Delete Items Permanently', 1, CAST(N'2011-03-25 20:00:56.710' AS DateTime), CAST(N'2011-05-27 09:36:30.840' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (6, N'Publish Items', N'PublishItems', N'Publish Items', 1, CAST(N'2011-05-28 14:14:43.507' AS DateTime), CAST(N'2011-05-28 15:02:28.350' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (7, N'Save Items', N'SaveItems', N'Save Items', 1, CAST(N'2011-05-28 14:52:56.920' AS DateTime), CAST(N'2011-10-26 14:34:40.003' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (8, N'Access CMS', N'AccessCMS', N'Access CMS', 1, CAST(N'2011-05-31 10:09:51.497' AS DateTime), CAST(N'2011-05-31 10:12:50.617' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (9, N'Access Tags Manager', N'AccessTagsManager', N'Access Tags Manager', 1, CAST(N'2011-10-26 14:56:49.363' AS DateTime), CAST(N'2011-10-26 14:56:49.363' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (10, N'Access Banners Manager', N'AccessBannersManager', N'Access Banners Manager', 1, CAST(N'2011-10-26 14:57:05.257' AS DateTime), CAST(N'2011-10-26 14:57:05.257' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (11, N'Access Advance Options', N'AccessAdvanceOptions', N'Access Advance Options', 1, CAST(N'2011-10-26 14:57:35.560' AS DateTime), CAST(N'2011-10-26 14:57:35.560' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (12, N'Access Protected Sections', N'AccessProtectedSections', N'AccessProtectedSections', 1, CAST(N'2011-12-13 14:19:11.857' AS DateTime), CAST(N'2013-05-09 11:14:03.823' AS DateTime))
SET IDENTITY_INSERT [dbo].[Permissions] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (3, N'Publisher', N'Publisher', N'Publisher', 1, CAST(N'2011-05-31 10:15:49.637' AS DateTime), CAST(N'2015-09-15 09:13:38.967' AS DateTime))
INSERT [dbo].[Roles] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (4, N'Moderator', N'Moderator', N'Moderator', 1, CAST(N'2011-05-31 10:15:57.677' AS DateTime), CAST(N'2011-12-13 14:20:12.357' AS DateTime))
INSERT [dbo].[Roles] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (18, N'Contributor', N'Contributor', N'Contributor', 1, CAST(N'2011-05-31 14:38:36.053' AS DateTime), CAST(N'2015-10-16 14:20:38.323' AS DateTime))
INSERT [dbo].[Roles] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (20, N'Administrator', N'Administrator', N'Administrator', 1, CAST(N'2011-10-26 14:58:24.577' AS DateTime), CAST(N'2011-12-13 14:19:37.960' AS DateTime))
INSERT [dbo].[Roles] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (22, N'Front End User', N'FrontEndUser', N'Front End User', 1, CAST(N'2013-05-09 11:00:25.760' AS DateTime), CAST(N'2013-06-06 14:20:17.563' AS DateTime))
SET IDENTITY_INSERT [dbo].[Roles] OFF
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (3, 6)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (3, 7)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (3, 8)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (3, 12)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (4, 3)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (4, 5)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (4, 6)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (4, 7)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (4, 8)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (4, 9)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (4, 10)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (4, 12)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (18, 7)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (18, 8)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (18, 12)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 3)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 5)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 6)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 7)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 8)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 9)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 10)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 11)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 12)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (22, 3)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (22, 5)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (22, 6)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (22, 7)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (22, 12)
INSERT [dbo].[RootPages] ([MediaDetailID]) VALUES (773)
SET IDENTITY_INSERT [dbo].[Settings] ON 

INSERT [dbo].[Settings] ([ID], [GlobalCodeInHead], [GlobalCodeInBody], [ShoppingCartTax], [MaxRequestLength], [MaxUploadFileSizePerFile], [SiteOnlineAtDateTime], [SiteOfflineAtDateTime], [SiteOfflineUrl], [PageNotFoundUrl], [EnableGlossaryTerms], [OutputCacheDurationInSeconds], [DefaultLanguageID], [DefaultMasterPageID], [DateCreated], [DateLastModified]) VALUES (1, N'<link rel="stylesheet" href="/Scripts/colorbox-master/example3/colorbox.css" type="text/css" media="all" />
<link rel="stylesheet" href="/Views/MasterPages/SiteTemplates/css/Style.min.css"/>
<link rel="shortcut icon" href="/favicon.ico" />', N'<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.12.1/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript" charset="utf-8"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery.colorbox/1.6.3/jquery.colorbox-min.js" type="text/javascript" charset="utf-8"></script>
<script src="/Scripts/global.js" type="text/javascript" charset="utf-8"></script>
<script src="/Scripts/commonFrontEnd.js" type="text/javascript" charset="utf-8"></script>', CAST(0.00 AS Decimal(18, 2)), 0, 0, CAST(N'2016-03-22 16:44:19.000' AS DateTime), NULL, N'/site-offline/', N'/page-not-found/', 0, 31536000, 5, 3, CAST(N'2012-02-08 10:55:42.713' AS DateTime), CAST(N'2016-06-06 15:29:55.947' AS DateTime))
SET IDENTITY_INSERT [dbo].[Settings] OFF
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([ID], [Name], [Description], [SefTitle], [ThumbnailPath], [IsActive], [OrderIndex], [DateCreated], [DateLastModified]) VALUES (14, N'test', N'test', N'test', N'', 0, 0, CAST(N'2016-06-11 22:05:00.043' AS DateTime), CAST(N'2016-06-11 22:05:00.043' AS DateTime))
INSERT [dbo].[Tags] ([ID], [Name], [Description], [SefTitle], [ThumbnailPath], [IsActive], [OrderIndex], [DateCreated], [DateLastModified]) VALUES (15, N'sample', N'sample', N'sample', N'', 0, 1, CAST(N'2016-06-11 22:05:10.903' AS DateTime), CAST(N'2016-06-11 22:05:10.903' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tags] OFF
INSERT [dbo].[UrlRedirectRules] ([MediaDetailID], [VirtualPathToRedirect], [RedirectToUrl], [Is301Redirect]) VALUES (46744, N'', N'', 0)
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [ProfilePhoto], [UserName], [Password], [FirstName], [LastName], [EmailAddress], [AfterLoginStartPage], [AuthenticationType], [LastLoggedInAt], [IsActive], [DateCreated], [DateLastModified]) VALUES (25, N'http://www.gravatar.com/avatar/fecbf986420c4ddccd78f8ae1c3f4e8a.jpg?s=50&d=identicon', N'admin', N'[?a??????%l?3~???', N'', N'', N'info@website.com', N'', N'Forms', CAST(N'2015-12-08 14:18:13.027' AS DateTime), 1, CAST(N'2011-05-31 15:14:59.767' AS DateTime), CAST(N'2016-04-09 10:38:18.080' AS DateTime))
INSERT [dbo].[Users] ([ID], [ProfilePhoto], [UserName], [Password], [FirstName], [LastName], [EmailAddress], [AfterLoginStartPage], [AuthenticationType], [LastLoggedInAt], [IsActive], [DateCreated], [DateLastModified]) VALUES (29, N'', N'client', N'??Mq0?!}?????l?X', N'client', N'', N'info@website.com', N'', N'Forms', NULL, 1, CAST(N'2016-02-01 10:03:40.057' AS DateTime), CAST(N'2016-04-13 08:34:12.183' AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] OFF
INSERT [dbo].[UsersRoles] ([UserID], [RoleID]) VALUES (25, 20)
INSERT [dbo].[UsersRoles] ([UserID], [RoleID]) VALUES (29, 3)
INSERT [dbo].[UsersRoles] ([UserID], [RoleID]) VALUES (29, 4)
INSERT [dbo].[UsersRoles] ([UserID], [RoleID]) VALUES (29, 18)
INSERT [dbo].[Website] ([MediaDetailID], [CodeInHead], [CodeInBody]) VALUES (68524, N'', N'')
INSERT [dbo].[Website] ([MediaDetailID], [CodeInHead], [CodeInBody]) VALUES (68575, N'', N'')
INSERT [dbo].[Website] ([MediaDetailID], [CodeInHead], [CodeInBody]) VALUES (68582, N'', N'')
INSERT [dbo].[Website] ([MediaDetailID], [CodeInHead], [CodeInBody]) VALUES (68585, N'', N'')
INSERT [dbo].[Website] ([MediaDetailID], [CodeInHead], [CodeInBody]) VALUES (68588, N'', N'')
SET ANSI_PADDING ON

GO
/****** Object:  Index [Languages_uq]    Script Date: 2016-06-14 4:39:26 PM ******/
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [Languages_uq] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Languages_uq2]    Script Date: 2016-06-14 4:39:26 PM ******/
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [Languages_uq2] UNIQUE NONCLUSTERED 
(
	[CultureCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UNIQUE_UriSegment]    Script Date: 2016-06-14 4:39:26 PM ******/
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [UNIQUE_UriSegment] UNIQUE NONCLUSTERED 
(
	[UriSegment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [DF__Comments__DateCr__28B8D3FE]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Comments] ADD  CONSTRAINT [DF__Comments__DateLa__29ACF837]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[EmailLog] ADD  CONSTRAINT [DF__EmailLog__DateCr__202E7AF5]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[EmailLog] ADD  CONSTRAINT [DF__EmailLog__DateLa__21229F2E]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[FieldFiles] ADD  DEFAULT ('') FOR [Link]
GO
ALTER TABLE [dbo].[FieldFiles] ADD  CONSTRAINT [DF_FieldFiles_Description]  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[FieldFiles] ADD  CONSTRAINT [DF_FieldFiles_OrderIndex]  DEFAULT ((0)) FOR [OrderIndex]
GO
ALTER TABLE [dbo].[FieldFiles] ADD  CONSTRAINT [DF_FieldFiles_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[GlossaryTerms] ADD  CONSTRAINT [DF_GlossaryTerms_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[GlossaryTerms] ADD  CONSTRAINT [DF_GlossaryTerms_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[MediaTags] ADD  CONSTRAINT [DF_MediaTags_OrderIndex]  DEFAULT ((0)) FOR [OrderIndex]
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions] ADD  CONSTRAINT [DF_MediaTypeRolesPermissions_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions] ADD  CONSTRAINT [DF_MediaTypeRolesPermissions_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[MediaTypesRoles] ADD  CONSTRAINT [DF_MediaTypesRoles_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[MediaTypesRoles] ADD  CONSTRAINT [DF_MediaTypesRoles_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[RolesMediaDetails] ADD  CONSTRAINT [DF_RolesMediaDetails_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[RolesMediaDetails] ADD  CONSTRAINT [DF_RolesMediaDetails_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[UsersMediaDetails] ADD  CONSTRAINT [DF_UsersMediaDetails_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[UsersMediaDetails] ADD  CONSTRAINT [DF_UsersMediaDetails_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[WebserviceRequests] ADD  CONSTRAINT [DF_WebserviceRequests_UrlReferrer]  DEFAULT ('') FOR [UrlReferrer]
GO
ALTER TABLE [dbo].[WebserviceRequests] ADD  CONSTRAINT [DF_WebserviceRequests_Response]  DEFAULT ('') FOR [Response]
GO
ALTER TABLE [dbo].[WebserviceRequests] ADD  CONSTRAINT [DF_WebserviceRequests_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[WebserviceRequests] ADD  CONSTRAINT [DF_WebserviceRequests_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Languages] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Languages] ([ID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Languages]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_ReplyToCommentID] FOREIGN KEY([ReplyToCommentID])
REFERENCES [dbo].[Comments] ([ID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_ReplyToCommentID]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users]
GO
ALTER TABLE [dbo].[FieldFiles]  WITH CHECK ADD  CONSTRAINT [FK_FieldFiles_MediaDetailsFields] FOREIGN KEY([MediaDetailFieldID])
REFERENCES [dbo].[MediaDetailsFields] ([FieldID])
GO
ALTER TABLE [dbo].[FieldFiles] CHECK CONSTRAINT [FK_FieldFiles_MediaDetailsFields]
GO
ALTER TABLE [dbo].[FieldsAssociations]  WITH CHECK ADD  CONSTRAINT [FK_FieldAssociations_MediaDetails] FOREIGN KEY([AssociatedMediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[FieldsAssociations] CHECK CONSTRAINT [FK_FieldAssociations_MediaDetails]
GO
ALTER TABLE [dbo].[FieldsAssociations]  WITH CHECK ADD  CONSTRAINT [FK_FieldsAssociations_MediaDetailsFields] FOREIGN KEY([MediaDetailFieldID])
REFERENCES [dbo].[MediaDetailsFields] ([FieldID])
GO
ALTER TABLE [dbo].[FieldsAssociations] CHECK CONSTRAINT [FK_FieldsAssociations_MediaDetailsFields]
GO
ALTER TABLE [dbo].[Media]  WITH NOCHECK ADD  CONSTRAINT [FK_Media_ParentMediaID] FOREIGN KEY([ParentMediaID])
REFERENCES [dbo].[Media] ([ID])
GO
ALTER TABLE [dbo].[Media] CHECK CONSTRAINT [FK_Media_ParentMediaID]
GO
ALTER TABLE [dbo].[MediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetails_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[MediaDetails] CHECK CONSTRAINT [FK_MediaDetails_CreatedByUserID]
GO
ALTER TABLE [dbo].[MediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetails_HistoryForMediaDetailID] FOREIGN KEY([HistoryForMediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[MediaDetails] CHECK CONSTRAINT [FK_MediaDetails_HistoryForMediaDetailID]
GO
ALTER TABLE [dbo].[MediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetails_LanguageID_Languages_ID] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Languages] ([ID])
GO
ALTER TABLE [dbo].[MediaDetails] CHECK CONSTRAINT [FK_MediaDetails_LanguageID_Languages_ID]
GO
ALTER TABLE [dbo].[MediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetails_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[MediaDetails] CHECK CONSTRAINT [FK_MediaDetails_LastUpdatedByUserID]
GO
ALTER TABLE [dbo].[MediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetails_MasterPage] FOREIGN KEY([MasterPageID])
REFERENCES [dbo].[MasterPages] ([ID])
GO
ALTER TABLE [dbo].[MediaDetails] CHECK CONSTRAINT [FK_MediaDetails_MasterPage]
GO
ALTER TABLE [dbo].[MediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetails_MediaID_Media_ID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[Media] ([ID])
GO
ALTER TABLE [dbo].[MediaDetails] CHECK CONSTRAINT [FK_MediaDetails_MediaID_Media_ID]
GO
ALTER TABLE [dbo].[MediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetails_MediaTypeID_MediaType_ID] FOREIGN KEY([MediaTypeID])
REFERENCES [dbo].[MediaTypes] ([ID])
GO
ALTER TABLE [dbo].[MediaDetails] CHECK CONSTRAINT [FK_MediaDetails_MediaTypeID_MediaType_ID]
GO
ALTER TABLE [dbo].[MediaDetailsComments]  WITH CHECK ADD  CONSTRAINT [FK_MediaCommentID_CommentID] FOREIGN KEY([CommentID])
REFERENCES [dbo].[Comments] ([ID])
GO
ALTER TABLE [dbo].[MediaDetailsComments] CHECK CONSTRAINT [FK_MediaCommentID_CommentID]
GO
ALTER TABLE [dbo].[MediaDetailsComments]  WITH CHECK ADD  CONSTRAINT [FK_MediaComments_MediaDetailID_MediaDetails_ID] FOREIGN KEY([MediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[MediaDetailsComments] CHECK CONSTRAINT [FK_MediaComments_MediaDetailID_MediaDetails_ID]
GO
ALTER TABLE [dbo].[MediaDetailsFields]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetailFields_MediaDetails] FOREIGN KEY([MediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[MediaDetailsFields] CHECK CONSTRAINT [FK_MediaDetailFields_MediaDetails]
GO
ALTER TABLE [dbo].[MediaDetailsFields]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetailsFields_Fields] FOREIGN KEY([FieldID])
REFERENCES [dbo].[Fields] ([ID])
GO
ALTER TABLE [dbo].[MediaDetailsFields] CHECK CONSTRAINT [FK_MediaDetailsFields_Fields]
GO
ALTER TABLE [dbo].[MediaDetailsFields]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetailsFields_MediaTypesFields] FOREIGN KEY([MediaTypeFieldID])
REFERENCES [dbo].[MediaTypesFields] ([FieldID])
GO
ALTER TABLE [dbo].[MediaDetailsFields] CHECK CONSTRAINT [FK_MediaDetailsFields_MediaTypesFields]
GO
ALTER TABLE [dbo].[MediaTags]  WITH CHECK ADD  CONSTRAINT [FK_MediaTags_MediaID_Media_ID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[Media] ([ID])
GO
ALTER TABLE [dbo].[MediaTags] CHECK CONSTRAINT [FK_MediaTags_MediaID_Media_ID]
GO
ALTER TABLE [dbo].[MediaTags]  WITH CHECK ADD  CONSTRAINT [FK_MediaTags_TagID_Tags_ID] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tags] ([ID])
GO
ALTER TABLE [dbo].[MediaTags] CHECK CONSTRAINT [FK_MediaTags_TagID_Tags_ID]
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions]  WITH CHECK ADD  CONSTRAINT [FK_MediaTypeRolesPermissions_MediaTypeRolesPermissionID] FOREIGN KEY([PermissionID])
REFERENCES [dbo].[Permissions] ([ID])
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions] CHECK CONSTRAINT [FK_MediaTypeRolesPermissions_MediaTypeRolesPermissionID]
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions]  WITH CHECK ADD  CONSTRAINT [FK_MediaTypeRolesPermissions_MediaTypesRoleID] FOREIGN KEY([MediaTypeRoleID])
REFERENCES [dbo].[MediaTypesRoles] ([ID])
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions] CHECK CONSTRAINT [FK_MediaTypeRolesPermissions_MediaTypesRoleID]
GO
ALTER TABLE [dbo].[MediaTypes]  WITH CHECK ADD  CONSTRAINT [FK_MediaTypes_MasterPages] FOREIGN KEY([MasterPageID])
REFERENCES [dbo].[MasterPages] ([ID])
GO
ALTER TABLE [dbo].[MediaTypes] CHECK CONSTRAINT [FK_MediaTypes_MasterPages]
GO
ALTER TABLE [dbo].[MediaTypesChildren]  WITH CHECK ADD  CONSTRAINT [FK_MediaTypesChildren_AllowedChildMediaTypeID] FOREIGN KEY([AllowedChildMediaTypeID])
REFERENCES [dbo].[MediaTypes] ([ID])
GO
ALTER TABLE [dbo].[MediaTypesChildren] CHECK CONSTRAINT [FK_MediaTypesChildren_AllowedChildMediaTypeID]
GO
ALTER TABLE [dbo].[MediaTypesChildren]  WITH CHECK ADD  CONSTRAINT [FK_MediaTypesChildren_MediaTypeID] FOREIGN KEY([MediaTypeID])
REFERENCES [dbo].[MediaTypes] ([ID])
GO
ALTER TABLE [dbo].[MediaTypesChildren] CHECK CONSTRAINT [FK_MediaTypesChildren_MediaTypeID]
GO
ALTER TABLE [dbo].[MediaTypesFields]  WITH CHECK ADD  CONSTRAINT [FK_MediaTypesFields_Fields] FOREIGN KEY([FieldID])
REFERENCES [dbo].[Fields] ([ID])
GO
ALTER TABLE [dbo].[MediaTypesFields] CHECK CONSTRAINT [FK_MediaTypesFields_Fields]
GO
ALTER TABLE [dbo].[MediaTypesFields]  WITH CHECK ADD  CONSTRAINT [FK_MediaTypesFields_MediaTypes] FOREIGN KEY([MediaTypeID])
REFERENCES [dbo].[MediaTypes] ([ID])
GO
ALTER TABLE [dbo].[MediaTypesFields] CHECK CONSTRAINT [FK_MediaTypesFields_MediaTypes]
GO
ALTER TABLE [dbo].[MediaTypesRoles]  WITH CHECK ADD  CONSTRAINT [FK_MediaTypesRoles_MediaTypeID] FOREIGN KEY([MediaTypeID])
REFERENCES [dbo].[MediaTypes] ([ID])
GO
ALTER TABLE [dbo].[MediaTypesRoles] CHECK CONSTRAINT [FK_MediaTypesRoles_MediaTypeID]
GO
ALTER TABLE [dbo].[MediaTypesRoles]  WITH CHECK ADD  CONSTRAINT [FK_MediaTypesRoles_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[MediaTypesRoles] CHECK CONSTRAINT [FK_MediaTypesRoles_Roles]
GO
ALTER TABLE [dbo].[Pages]  WITH CHECK ADD  CONSTRAINT [FK_Pages_MediaDetailID_MediaDetails_ID] FOREIGN KEY([MediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[Pages] CHECK CONSTRAINT [FK_Pages_MediaDetailID_MediaDetails_ID]
GO
ALTER TABLE [dbo].[RolesMediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_RolesMediaDetails_MediaDetailID] FOREIGN KEY([MediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[RolesMediaDetails] CHECK CONSTRAINT [FK_RolesMediaDetails_MediaDetailID]
GO
ALTER TABLE [dbo].[RolesMediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_RolesMediaDetails_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[RolesMediaDetails] CHECK CONSTRAINT [FK_RolesMediaDetails_RoleID]
GO
ALTER TABLE [dbo].[RolesPermissions]  WITH CHECK ADD  CONSTRAINT [FK_RolesPermissions_PermissionID] FOREIGN KEY([PermissionID])
REFERENCES [dbo].[Permissions] ([ID])
GO
ALTER TABLE [dbo].[RolesPermissions] CHECK CONSTRAINT [FK_RolesPermissions_PermissionID]
GO
ALTER TABLE [dbo].[RolesPermissions]  WITH CHECK ADD  CONSTRAINT [FK_RolesPermissions_RolesID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[RolesPermissions] CHECK CONSTRAINT [FK_RolesPermissions_RolesID]
GO
ALTER TABLE [dbo].[RootPages]  WITH CHECK ADD  CONSTRAINT [FK_RootPages_MediaDetails] FOREIGN KEY([MediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[RootPages] CHECK CONSTRAINT [FK_RootPages_MediaDetails]
GO
ALTER TABLE [dbo].[Settings]  WITH CHECK ADD  CONSTRAINT [FK_Settings_Languages] FOREIGN KEY([DefaultLanguageID])
REFERENCES [dbo].[Languages] ([ID])
GO
ALTER TABLE [dbo].[Settings] CHECK CONSTRAINT [FK_Settings_Languages]
GO
ALTER TABLE [dbo].[Settings]  WITH CHECK ADD  CONSTRAINT [FK_Settings_MasterPages] FOREIGN KEY([DefaultMasterPageID])
REFERENCES [dbo].[MasterPages] ([ID])
GO
ALTER TABLE [dbo].[Settings] CHECK CONSTRAINT [FK_Settings_MasterPages]
GO
ALTER TABLE [dbo].[UrlRedirectRules]  WITH CHECK ADD  CONSTRAINT [FK_UrlRedirectRules_MediaDetails] FOREIGN KEY([MediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[UrlRedirectRules] CHECK CONSTRAINT [FK_UrlRedirectRules_MediaDetails]
GO
ALTER TABLE [dbo].[UsersMediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_UsersMediaDetails_MediaDetailID] FOREIGN KEY([MediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[UsersMediaDetails] CHECK CONSTRAINT [FK_UsersMediaDetails_MediaDetailID]
GO
ALTER TABLE [dbo].[UsersMediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_UsersMediaDetails_PermissionID] FOREIGN KEY([PermissionID])
REFERENCES [dbo].[Permissions] ([ID])
GO
ALTER TABLE [dbo].[UsersMediaDetails] CHECK CONSTRAINT [FK_UsersMediaDetails_PermissionID]
GO
ALTER TABLE [dbo].[UsersMediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_UsersMediaDetails_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UsersMediaDetails] CHECK CONSTRAINT [FK_UsersMediaDetails_UserID]
GO
ALTER TABLE [dbo].[UsersRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsersRoles_RoleID_Roles_ID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[UsersRoles] CHECK CONSTRAINT [FK_UsersRoles_RoleID_Roles_ID]
GO
ALTER TABLE [dbo].[UsersRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsersRoles_UserID_Users_ID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UsersRoles] CHECK CONSTRAINT [FK_UsersRoles_UserID_Users_ID]
GO
ALTER TABLE [dbo].[Website]  WITH CHECK ADD  CONSTRAINT [FK_Website_MediaDetails] FOREIGN KEY([MediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[Website] CHECK CONSTRAINT [FK_Website_MediaDetails]
GO
