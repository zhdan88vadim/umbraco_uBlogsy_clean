USE [umbraco_nuget]
GO
/****** Object:  Table [dbo].[cmsContent]    Script Date: 18.10.2016 21:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContent](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[contentType] [int] NOT NULL,
 CONSTRAINT [PK_cmsContent] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsContentType]    Script Date: 18.10.2016 21:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[alias] [nvarchar](255) NULL,
	[icon] [nvarchar](255) NULL,
	[thumbnail] [nvarchar](255) NOT NULL,
	[description] [nvarchar](1500) NULL,
	[isContainer] [bit] NOT NULL,
	[allowAtRoot] [bit] NOT NULL,
 CONSTRAINT [PK_cmsContentType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsContentType2ContentType]    Script Date: 18.10.2016 21:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType2ContentType](
	[parentContentTypeId] [int] NOT NULL,
	[childContentTypeId] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentType2ContentType] PRIMARY KEY CLUSTERED 
(
	[parentContentTypeId] ASC,
	[childContentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsContentTypeAllowedContentType]    Script Date: 18.10.2016 21:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentTypeAllowedContentType](
	[Id] [int] NOT NULL,
	[AllowedId] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentTypeAllowedContentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[AllowedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsContentVersion]    Script Date: 18.10.2016 21:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentVersion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ContentId] [int] NOT NULL,
	[VersionId] [uniqueidentifier] NOT NULL,
	[VersionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_cmsContentVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsContentXml]    Script Date: 18.10.2016 21:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentXml](
	[nodeId] [int] NOT NULL,
	[xml] [ntext] NOT NULL,
 CONSTRAINT [PK_cmsContentXml] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsDataType]    Script Date: 18.10.2016 21:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDataType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[propertyEditorAlias] [nvarchar](255) NOT NULL,
	[dbType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_cmsDataType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsDataTypePreValues]    Script Date: 18.10.2016 21:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDataTypePreValues](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[datatypeNodeId] [int] NOT NULL,
	[value] [ntext] NULL,
	[sortorder] [int] NOT NULL,
	[alias] [nvarchar](50) NULL,
 CONSTRAINT [PK_cmsDataTypePreValues] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsDictionary]    Script Date: 18.10.2016 21:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDictionary](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[id] [uniqueidentifier] NOT NULL,
	[parent] [uniqueidentifier] NULL,
	[key] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsDictionary] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsDocument]    Script Date: 18.10.2016 21:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDocument](
	[nodeId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[documentUser] [int] NOT NULL,
	[versionId] [uniqueidentifier] NOT NULL,
	[text] [nvarchar](255) NOT NULL,
	[releaseDate] [datetime] NULL,
	[expireDate] [datetime] NULL,
	[updateDate] [datetime] NOT NULL,
	[templateId] [int] NULL,
	[newest] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocument] PRIMARY KEY CLUSTERED 
(
	[versionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsDocumentType]    Script Date: 18.10.2016 21:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDocumentType](
	[contentTypeNodeId] [int] NOT NULL,
	[templateNodeId] [int] NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocumentType] PRIMARY KEY CLUSTERED 
(
	[contentTypeNodeId] ASC,
	[templateNodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsLanguageText]    Script Date: 18.10.2016 21:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsLanguageText](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[languageId] [int] NOT NULL,
	[UniqueId] [uniqueidentifier] NOT NULL,
	[value] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsLanguageText] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsMacro]    Script Date: 18.10.2016 21:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMacro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[macroUseInEditor] [bit] NOT NULL,
	[macroRefreshRate] [int] NOT NULL,
	[macroAlias] [nvarchar](255) NOT NULL,
	[macroName] [nvarchar](255) NULL,
	[macroScriptType] [nvarchar](255) NULL,
	[macroScriptAssembly] [nvarchar](255) NULL,
	[macroXSLT] [nvarchar](255) NULL,
	[macroCacheByPage] [bit] NOT NULL,
	[macroCachePersonalized] [bit] NOT NULL,
	[macroDontRender] [bit] NOT NULL,
	[macroPython] [nvarchar](255) NULL,
 CONSTRAINT [PK_cmsMacro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsMacroProperty]    Script Date: 18.10.2016 21:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMacroProperty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[editorAlias] [nvarchar](255) NOT NULL,
	[macro] [int] NOT NULL,
	[macroPropertySortOrder] [int] NOT NULL,
	[macroPropertyAlias] [nvarchar](50) NOT NULL,
	[macroPropertyName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_cmsMacroProperty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsMember]    Script Date: 18.10.2016 21:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember](
	[nodeId] [int] NOT NULL,
	[Email] [nvarchar](1000) NOT NULL,
	[LoginName] [nvarchar](1000) NOT NULL,
	[Password] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsMember] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsMember2MemberGroup]    Script Date: 18.10.2016 21:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember2MemberGroup](
	[Member] [int] NOT NULL,
	[MemberGroup] [int] NOT NULL,
 CONSTRAINT [PK_cmsMember2MemberGroup] PRIMARY KEY CLUSTERED 
(
	[Member] ASC,
	[MemberGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsMemberType]    Script Date: 18.10.2016 21:58:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMemberType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[NodeId] [int] NOT NULL,
	[propertytypeId] [int] NOT NULL,
	[memberCanEdit] [bit] NOT NULL,
	[viewOnProfile] [bit] NOT NULL,
 CONSTRAINT [PK_cmsMemberType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsPreviewXml]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPreviewXml](
	[nodeId] [int] NOT NULL,
	[versionId] [uniqueidentifier] NOT NULL,
	[timestamp] [datetime] NOT NULL,
	[xml] [ntext] NOT NULL,
 CONSTRAINT [PK_cmsContentPreviewXml] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[versionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsPropertyData]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contentNodeId] [int] NOT NULL,
	[versionId] [uniqueidentifier] NULL,
	[propertytypeid] [int] NOT NULL,
	[dataInt] [int] NULL,
	[dataDecimal] [decimal](38, 6) NULL,
	[dataDate] [datetime] NULL,
	[dataNvarchar] [nvarchar](500) NULL,
	[dataNtext] [ntext] NULL,
 CONSTRAINT [PK_cmsPropertyData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsPropertyType]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataTypeId] [int] NOT NULL,
	[contentTypeId] [int] NOT NULL,
	[propertyTypeGroupId] [int] NULL,
	[Alias] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[sortOrder] [int] NOT NULL,
	[mandatory] [bit] NOT NULL,
	[validationRegExp] [nvarchar](255) NULL,
	[Description] [nvarchar](2000) NULL,
	[UniqueID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_cmsPropertyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsPropertyTypeGroup]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyTypeGroup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contenttypeNodeId] [int] NOT NULL,
	[text] [nvarchar](255) NOT NULL,
	[sortorder] [int] NOT NULL,
	[uniqueID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_cmsPropertyTypeGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsTagRelationship]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTagRelationship](
	[nodeId] [int] NOT NULL,
	[tagId] [int] NOT NULL,
	[propertyTypeId] [int] NOT NULL,
 CONSTRAINT [PK_cmsTagRelationship] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[propertyTypeId] ASC,
	[tagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsTags]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tag] [nvarchar](200) NULL,
	[ParentId] [int] NULL,
	[group] [nvarchar](100) NULL,
 CONSTRAINT [PK_cmsTags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsTask]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTask](
	[closed] [bit] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[taskTypeId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[parentUserId] [int] NOT NULL,
	[userId] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[Comment] [nvarchar](500) NULL,
 CONSTRAINT [PK_cmsTask] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsTaskType]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTaskType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[alias] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_cmsTaskType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cmsTemplate]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTemplate](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[alias] [nvarchar](100) NULL,
	[design] [ntext] NOT NULL,
 CONSTRAINT [PK_cmsTemplate] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoAccess]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoAccess](
	[id] [uniqueidentifier] NOT NULL,
	[nodeId] [int] NOT NULL,
	[loginNodeId] [int] NOT NULL,
	[noAccessNodeId] [int] NOT NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoAccess] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoAccessRule]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoAccessRule](
	[id] [uniqueidentifier] NOT NULL,
	[accessId] [uniqueidentifier] NOT NULL,
	[ruleValue] [nvarchar](255) NOT NULL,
	[ruleType] [nvarchar](255) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoAccessRule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoCacheInstruction]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoCacheInstruction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[utcStamp] [datetime] NOT NULL,
	[jsonInstruction] [ntext] NOT NULL,
	[originated] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_umbracoCacheInstruction] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoDeployChecksum]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDeployChecksum](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[entityType] [nvarchar](32) NOT NULL,
	[entityGuid] [uniqueidentifier] NULL,
	[entityPath] [nvarchar](256) NULL,
	[localChecksum] [nvarchar](32) NOT NULL,
	[compositeChecksum] [nvarchar](32) NULL,
 CONSTRAINT [PK_umbracoDeployChecksum] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoDeployDependency]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDeployDependency](
	[sourceId] [int] NOT NULL,
	[targetId] [int] NOT NULL,
	[mode] [int] NOT NULL,
 CONSTRAINT [PK_umbracoDeployDependency] PRIMARY KEY CLUSTERED 
(
	[sourceId] ASC,
	[targetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoDomains]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDomains](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domainDefaultLanguage] [int] NULL,
	[domainRootStructureID] [int] NULL,
	[domainName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoDomains] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoExternalLogin]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoExternalLogin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[loginProvider] [nvarchar](4000) NOT NULL,
	[providerKey] [nvarchar](4000) NOT NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoExternalLogin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoLanguage]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLanguage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[languageISOCode] [nvarchar](10) NULL,
	[languageCultureName] [nvarchar](100) NULL,
 CONSTRAINT [PK_umbracoLanguage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoLog]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[NodeId] [int] NOT NULL,
	[Datestamp] [datetime] NOT NULL,
	[logHeader] [nvarchar](50) NOT NULL,
	[logComment] [nvarchar](4000) NULL,
 CONSTRAINT [PK_umbracoLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoMigration]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoMigration](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[version] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_umbracoMigration] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoNode]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoNode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[trashed] [bit] NOT NULL,
	[parentID] [int] NOT NULL,
	[nodeUser] [int] NULL,
	[level] [int] NOT NULL,
	[path] [nvarchar](150) NOT NULL,
	[sortOrder] [int] NOT NULL,
	[uniqueID] [uniqueidentifier] NOT NULL,
	[text] [nvarchar](255) NULL,
	[nodeObjectType] [uniqueidentifier] NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_structure] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoRedirectUrl]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRedirectUrl](
	[id] [uniqueidentifier] NOT NULL,
	[contentKey] [uniqueidentifier] NOT NULL,
	[createDateUtc] [datetime] NOT NULL,
	[url] [nvarchar](255) NOT NULL,
	[urlHash] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_umbracoRedirectUrl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoRelation]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[childId] [int] NOT NULL,
	[relType] [int] NOT NULL,
	[datetime] [datetime] NOT NULL,
	[comment] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_umbracoRelation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoRelationType]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelationType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dual] [bit] NOT NULL,
	[parentObjectType] [uniqueidentifier] NOT NULL,
	[childObjectType] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[alias] [nvarchar](100) NULL,
 CONSTRAINT [PK_umbracoRelationType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoServer]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoServer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](500) NOT NULL,
	[computerName] [nvarchar](255) NOT NULL,
	[registeredDate] [datetime] NOT NULL,
	[lastNotifiedDate] [datetime] NOT NULL,
	[isActive] [bit] NOT NULL,
	[isMaster] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoServer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoUser]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userDisabled] [bit] NOT NULL,
	[userNoConsole] [bit] NOT NULL,
	[userType] [int] NOT NULL,
	[startStructureID] [int] NOT NULL,
	[startMediaID] [int] NULL,
	[userName] [nvarchar](255) NOT NULL,
	[userLogin] [nvarchar](125) NOT NULL,
	[userPassword] [nvarchar](500) NOT NULL,
	[userEmail] [nvarchar](255) NOT NULL,
	[userLanguage] [nvarchar](10) NULL,
	[securityStampToken] [nvarchar](255) NULL,
	[failedLoginAttempts] [int] NULL,
	[lastLockoutDate] [datetime] NULL,
	[lastPasswordChangeDate] [datetime] NULL,
	[lastLoginDate] [datetime] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoUser2app]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2app](
	[user] [int] NOT NULL,
	[app] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_user2app] PRIMARY KEY CLUSTERED 
(
	[user] ASC,
	[app] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoUser2NodeNotify]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2NodeNotify](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[action] [nchar](1) NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodeNotify] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[action] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoUser2NodePermission]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2NodePermission](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[permission] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodePermission] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[permission] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[umbracoUserType]    Script Date: 18.10.2016 21:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userTypeAlias] [nvarchar](50) NULL,
	[userTypeName] [nvarchar](255) NOT NULL,
	[userTypeDefaultPermissions] [nvarchar](50) NULL,
 CONSTRAINT [PK_umbracoUserType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[cmsContent] ON 

INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (1, 1050, 1047)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (2, 1051, 1031)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (3, 1052, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (4, 1084, 1076)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (5, 1085, 1072)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (6, 1086, 1070)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (7, 1087, 1068)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (8, 1088, 1071)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (9, 1089, 1069)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (10, 1090, 1083)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (11, 1091, 1082)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (12, 1092, 1082)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (13, 1093, 1075)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (14, 1094, 1080)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (15, 1095, 1079)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (16, 1096, 1078)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (17, 1097, 1074)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (18, 1098, 1073)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (19, 1099, 1073)
SET IDENTITY_INSERT [dbo].[cmsContent] OFF
SET IDENTITY_INSERT [dbo].[cmsContentType] ON 

INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (531, 1044, N'Member', N'icon-user', N'icon-user', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (532, 1031, N'Folder', N'icon-folder', N'icon-folder', NULL, 0, 1)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (533, 1032, N'Image', N'icon-picture', N'icon-picture', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (534, 1033, N'File', N'icon-document', N'icon-document', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (535, 1047, N'homePage', N'icon-home', N'folder.png', N'This is our homepage template', 0, 1)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (536, 1065, N'uBlogsyBaseDocType', N'folder.gif', N'folder.png', N'This document type exists to allow sorting and categorisation of sub-document types. Do not create content nodes using this document type!', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (537, 1066, N'uBlogsyBaseContainer', N'folder.gif', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (538, 1067, N'uBlogsyBasePage', N'folder.gif', N'folder.png', N'This document type exists to allow sorting and categorisation of sub-document types. Do not create content nodes using this document type!', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (539, 1068, N'uBlogsyAuthor', N'icon-umb-users', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (540, 1069, N'uBlogsyLabel', N'icon-files', N'folder.png', N'Some sites require articles to have more than 1 category. So a label (category) is basically a tag. 
', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (541, 1070, N'uBlogsyContainerAuthor', N'icon-users', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (542, 1071, N'uBlogsyContainerLabel', N'icon-file-cabinet', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (543, 1072, N'uBlogsyLanding', N'icon-rss color-orange', N'folder.png', N'This is the root of your blog. It is required. There can be multiple of these. But they cannot be nested under eachother.', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (544, 1073, N'uBlogsyPage', N'icon-umb-content', N'folder.png', N'This document type is for simple pages.', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (545, 1074, N'uBlogsyPost', N'icon-article', N'folder.png', N'This document type is for your blog posts. Put these posts directly under the year folder or under a month folder.', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (546, 1075, N'uBlogsyRSS', N'icon-rss color-orange', N'folder.png', N'This document type exists only for an RSS feed. There should only be one of these.', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (547, 1076, N'uBlogsySiteRoot', N'icon-home', N'folder.png', N'', 0, 1)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (548, 1077, N'uDateFoldersyBase', N'folder.gif', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (549, 1078, N'uDateFoldersyFolderDay', N'icon-calendar', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (550, 1079, N'uDateFoldersyFolderMonth', N'icon-calendar-alt', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (551, 1080, N'uDateFoldersyFolderYear', N'icon-calendar-alt', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (552, 1081, N'uTagsyBaseDocType', N'folder.gif', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (553, 1082, N'uTagsyTag', N'icon-tag', N'folder.png', N'', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (554, 1083, N'uTagsyTagContainer', N'icon-tags', N'folder.png', N'', 0, 0)
SET IDENTITY_INSERT [dbo].[cmsContentType] OFF
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1065, 1066)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1065, 1067)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1065, 1068)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1065, 1069)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1065, 1075)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1066, 1070)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1066, 1071)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1067, 1072)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1067, 1073)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1067, 1074)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1067, 1076)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1077, 1078)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1077, 1079)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1077, 1080)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1081, 1082)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1081, 1083)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1031, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1032, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1033, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1070, 1068, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1071, 1069, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1072, 1070, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1072, 1071, 1)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1072, 1074, 2)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1072, 1075, 3)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1072, 1080, 4)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1072, 1083, 5)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1076, 1072, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1076, 1073, 1)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1078, 1074, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1079, 1074, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1080, 1074, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1083, 1082, 0)
SET IDENTITY_INSERT [dbo].[cmsContentVersion] ON 

INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (1, 1050, N'c9838477-83e6-4d72-a225-4e0e6e350fcb', CAST(0x0000A67600BB9B53 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2, 1051, N'cd43a1e9-565b-4c0e-88a5-c6fbf3c0c17c', CAST(0x0000A67B00009A37 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (3, 1052, N'd4c682dc-34c9-4f9e-bfd1-88fc09ef8ba7', CAST(0x0000A67B000190F2 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (4, 1084, N'f909386c-c551-4671-8bf8-063e16dc24f1', CAST(0x0000A6A30145B9D6 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (5, 1085, N'f87086a9-9ae8-4676-b65f-79c890611426', CAST(0x0000A6A30145BA07 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (6, 1086, N'cdb47715-0774-4225-9766-60c1ed0bbaaf', CAST(0x0000A6A30145BA0E AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (7, 1087, N'06cedad3-d9f7-42c4-8d04-df526ef441de', CAST(0x0000A6A30145BA12 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (8, 1088, N'95f728fc-594a-4427-92a0-34274434cde7', CAST(0x0000A6A30145BA16 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (9, 1089, N'4c09bd5a-85a6-4246-bab6-b9a12a5961ad', CAST(0x0000A6A30145BA1A AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (10, 1090, N'4a5d7d96-a76b-4333-8852-6868fa9c1dd6', CAST(0x0000A6A30145BA22 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (11, 1091, N'107e3d3a-cb9d-4152-86aa-96a9b3ddbc8a', CAST(0x0000A6A30145BA25 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (12, 1092, N'72dde664-d775-4f73-a247-5c0fd0b19e93', CAST(0x0000A6A30145BA28 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (13, 1093, N'7ec6f564-ec52-4b98-9aea-9a23e9b8d14b', CAST(0x0000A6A30145BA2B AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (14, 1094, N'69ec6de5-5209-4725-a62e-149dadc0e0f3', CAST(0x0000A6A30145BA2F AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (15, 1095, N'bfd22990-0fc0-42d4-9a63-beae5e0472e2', CAST(0x0000A6A30145BA32 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (16, 1096, N'6bb05648-75eb-4f6f-82a6-cf3d083bffed', CAST(0x0000A6A30145BA36 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (17, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', CAST(0x0000A6A30145BA3C AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (18, 1098, N'90134b0c-d368-4c90-9bb5-e0d376f26c65', CAST(0x0000A6A30145BA44 AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (19, 1099, N'36449d79-5fb6-416c-a504-bd62f5cfe7ec', CAST(0x0000A6A30145BA4C AS DateTime))
SET IDENTITY_INSERT [dbo].[cmsContentVersion] OFF
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1050, N'<homePage id="1050" key="eaae9c5a-df1c-4844-ab2e-7c9e23e23c27" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2016-09-03T11:23:03" updateDate="2016-09-03T11:23:03" nodeName="Homepage" urlName="homepage" path="-1,1050" isDoc="" nodeType="1047" creatorName="zhdan88vadim@gmail.com" writerName="zhdan88vadim@gmail.com" writerID="0" template="1046" nodeTypeAlias="homePage"><pageTitle><![CDATA[Welcome to Widgets Ltd]]></pageTitle><bodyText><![CDATA[<p><span>Hello world! We can write what we like here!</span></p>]]></bodyText><footer><![CDATA[Copyright Widgets Ltd 2014]]></footer></homePage>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1051, N'<Folder id="1051" key="67ea7516-7b42-4092-b3b9-72db300de6f3" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2016-09-08T00:02:11" updateDate="2016-09-08T00:02:11" nodeName="image" urlName="image" path="-1,1051" isDoc="" nodeType="1031" writerName="zhdan88vadim@gmail.com" writerID="0" version="cd43a1e9-565b-4c0e-88a5-c6fbf3c0c17c" template="0" nodeTypeAlias="Folder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1052, N'<Image id="1052" key="75d63c39-0279-42fe-aeb9-67b7100263cd" parentID="1051" level="2" creatorID="0" sortOrder="0" createDate="2016-09-08T00:05:42" updateDate="2016-09-08T00:05:42" nodeName="postel0" urlName="postel0" path="-1,1051,1052" isDoc="" nodeType="1032" writerName="zhdan88vadim@gmail.com" writerID="0" version="d4c682dc-34c9-4f9e-bfd1-88fc09ef8ba7" template="0" nodeTypeAlias="Image"><umbracoFile><![CDATA[{
  "focalPoint": {
    "left": 0.52166666666666661,
    "top": 0.44044943820224719
  },
  "src": "/media/1001/27236_0.jpg"
}]]></umbracoFile><umbracoWidth><![CDATA[600]]></umbracoWidth><umbracoHeight><![CDATA[445]]></umbracoHeight><umbracoBytes><![CDATA[189632]]></umbracoBytes><umbracoExtension><![CDATA[jpg]]></umbracoExtension></Image>')
SET IDENTITY_INSERT [dbo].[cmsDataType] ON 

INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (-28, -97, N'Umbraco.ListView', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (-27, -96, N'Umbraco.ListView', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (-26, -95, N'Umbraco.ListView', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (1, -49, N'Umbraco.TrueFalse', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (2, -51, N'Umbraco.Integer', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (3, -87, N'Umbraco.TinyMCEv3', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (4, -88, N'Umbraco.Textbox', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (5, -89, N'Umbraco.TextboxMultiple', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (6, -90, N'Umbraco.UploadField', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (7, -92, N'Umbraco.NoEdit', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (8, -36, N'Umbraco.DateTime', N'Date')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (9, -37, N'Umbraco.ColorPickerAlias', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (11, -39, N'Umbraco.DropDownMultiple', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (12, -40, N'Umbraco.RadioButtonList', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (13, -41, N'Umbraco.Date', N'Date')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (14, -42, N'Umbraco.DropDown', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (15, -43, N'Umbraco.CheckBoxList', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (16, 1034, N'Umbraco.ContentPickerAlias', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (17, 1035, N'Umbraco.MultipleMediaPicker', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (18, 1036, N'Umbraco.MemberPicker', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (21, 1040, N'Umbraco.RelatedLinks', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (22, 1041, N'Umbraco.Tags', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (24, 1043, N'Umbraco.ImageCropper', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (25, 1045, N'Umbraco.MultipleMediaPicker', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (26, 1048, N'Umbraco.Textbox', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (27, 1049, N'Umbraco.Textbox', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (28, 1053, N'Umbraco.MultiNodeTreePicker', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (29, 1054, N'Umbraco.MultiNodeTreePicker', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (30, 1055, N'uTagsy', N'Nvarchar')
SET IDENTITY_INSERT [dbo].[cmsDataType] OFF
SET IDENTITY_INSERT [dbo].[cmsDataTypePreValues] ON 

INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-9, -96, N'[{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"owner","header":"Updated by","isSystem":1}]', 5, N'includeProperties')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-8, -96, N'[{"name": "Grid","path": "views/propertyeditors/listview/layouts/grid/grid.html", "icon": "icon-thumbnails-small", "isSystem": 1, "selected": true},{"name": "List","path": "views/propertyeditors/listview/layouts/list/list.html","icon": "icon-list", "isSystem": 1,"selected": true}]', 4, N'layouts')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-7, -96, N'desc', 3, N'orderDirection')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-6, -96, N'updateDate', 2, N'orderBy')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-5, -96, N'100', 1, N'pageSize')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-4, -97, N'[{"alias":"username","isSystem":1},{"alias":"email","isSystem":1},{"alias":"updateDate","header":"Last edited","isSystem":1}]', 4, N'includeProperties')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-3, -97, N'asc', 3, N'orderDirection')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-2, -97, N'username', 2, N'orderBy')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-1, -97, N'10', 1, N'pageSize')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (3, -87, N',code,undo,redo,cut,copy,mcepasteword,stylepicker,bold,italic,bullist,numlist,outdent,indent,mcelink,unlink,mceinsertanchor,mceimage,umbracomacro,mceinserttable,umbracoembed,mcecharmap,|1|1,2,3,|0|500,400|1049,|true|', 0, N'')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (4, 1041, N'default', 0, N'group')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (5, 1045, N'1', 0, N'multiPicker')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (6, 1053, N'{
  "type": "content",
  "query": "$current/ancestor-or-self::uBlogsyLanding//uBlogsyContainerAuthor"
}', 1, N'startNode')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (7, 1053, N'', 2, N'filter')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (8, 1053, N'', 3, N'minNumber')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (9, 1053, N'', 4, N'maxNumber')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (10, 1054, N'{
  "type": "content",
  "query": "$current/ancestor-or-self::uBlogsyLanding//uBlogsyContainerLabel"
}', 1, N'startNode')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (11, 1054, N'', 2, N'filter')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (12, 1054, N'', 3, N'minNumber')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (13, 1054, N'', 4, N'maxNumber')
SET IDENTITY_INSERT [dbo].[cmsDataTypePreValues] OFF
SET IDENTITY_INSERT [dbo].[cmsDictionary] ON 

INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (1, N'd3fcf20c-e5e1-441e-918e-93ae524e89ec', NULL, N'firstDictionaryItem')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (2, N'ec57d509-ae6e-4a80-abcf-859c4a7e9dc4', NULL, N'uBlogsy')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (3, N'816a30bb-9dc4-4bcf-9d5a-c648c4b7ad68', N'ec57d509-ae6e-4a80-abcf-859c4a7e9dc4', N'uBlogsyDicPostsLatest')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (4, N'df8b6214-9931-4d21-9a10-8a92199d3fab', N'ec57d509-ae6e-4a80-abcf-859c4a7e9dc4', N'uBlogsyDicPagination')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (5, N'0b4e9bab-ab8f-4501-b00c-d38316511dec', N'df8b6214-9931-4d21-9a10-8a92199d3fab', N'uBlogsyDicPaginationNewer')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (6, N'6e8ee525-6c2d-4d64-87b0-403ec04ff99d', N'df8b6214-9931-4d21-9a10-8a92199d3fab', N'uBlogsyDicPaginationOlder')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (7, N'fddee561-d2b7-47a3-84ad-f5666d502b40', N'ec57d509-ae6e-4a80-abcf-859c4a7e9dc4', N'uBlogsyDicSearch')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (8, N'6c0c59b9-8cff-4a54-a99c-1b5111441e1d', N'fddee561-d2b7-47a3-84ad-f5666d502b40', N'uBlogsyDicSearchSubmit')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (9, N'0056da04-089f-4ba2-9d2c-a6c85a21b8e9', N'ec57d509-ae6e-4a80-abcf-859c4a7e9dc4', N'uBlogsyDicTags')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (10, N'155ee659-4e22-4b57-967e-8fe9b35937e7', N'ec57d509-ae6e-4a80-abcf-859c4a7e9dc4', N'uBlogsyDicArchive')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (11, N'82f773af-23e4-4067-8212-d353e77e0c68', N'ec57d509-ae6e-4a80-abcf-859c4a7e9dc4', N'uBlogsyDicAuthors')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (12, N'037c630b-8ff7-4d28-a8fa-3d28f9d9c906', N'82f773af-23e4-4067-8212-d353e77e0c68', N'uBlogsyDicPostWrittenBy')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (13, N'3f989966-387d-4f3b-942c-3811d490674e', N'037c630b-8ff7-4d28-a8fa-3d28f9d9c906', N'uBlogsyDicPostWrittenAt')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (14, N'3f825567-dace-4f30-ab0f-915043cf407c', N'ec57d509-ae6e-4a80-abcf-859c4a7e9dc4', N'uBlogsyDicRssSubscribe')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (15, N'3bc8f10d-c7c4-4d6b-973a-35c905cac5fe', N'ec57d509-ae6e-4a80-abcf-859c4a7e9dc4', N'uBlogsyNavigation')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (16, N'f4d4215b-2a17-461d-83d6-3e189c313c0f', N'3bc8f10d-c7c4-4d6b-973a-35c905cac5fe', N'uBlogsyNavigationHome')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (17, N'a5fcd900-4a99-4f52-82c7-7af7f4b4d4ba', N'ec57d509-ae6e-4a80-abcf-859c4a7e9dc4', N'uBlogsyDicCategories')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (18, N'326d9dc7-8a90-4443-b7dc-f7db3e36622a', N'a5fcd900-4a99-4f52-82c7-7af7f4b4d4ba', N'uBlogsyDicCategoriesAll')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (19, N'9200fb7e-ffd8-4396-acfc-d484e69ef9cc', N'ec57d509-ae6e-4a80-abcf-859c4a7e9dc4', N'uBlogsyDicPostsRelated')
SET IDENTITY_INSERT [dbo].[cmsDictionary] OFF
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1084, 0, 0, N'f909386c-c551-4671-8bf8-063e16dc24f1', N'Site Root', NULL, NULL, CAST(0x0000A6A30145B9D6 AS DateTime), 1063, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1094, 0, 0, N'69ec6de5-5209-4725-a62e-149dadc0e0f3', N'2016', NULL, NULL, CAST(0x0000A6A30145BA2F AS DateTime), 1064, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1088, 0, 0, N'95f728fc-594a-4427-92a0-34274434cde7', N'Categories (optional)', NULL, NULL, CAST(0x0000A6A30145BA16 AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1050, 1, 0, N'c9838477-83e6-4d72-a225-4e0e6e350fcb', N'Homepage', NULL, NULL, CAST(0x0000A67600BB9B53 AS DateTime), 1046, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1092, 0, 0, N'72dde664-d775-4f73-a247-5c0fd0b19e93', N'another thing', NULL, NULL, CAST(0x0000A6A30145BA28 AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1086, 0, 0, N'cdb47715-0774-4225-9766-60c1ed0bbaaf', N'Authors', NULL, NULL, CAST(0x0000A6A30145BA0E AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1090, 0, 0, N'4a5d7d96-a76b-4333-8852-6868fa9c1dd6', N'Tags', NULL, NULL, CAST(0x0000A6A30145BA22 AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1085, 0, 0, N'f87086a9-9ae8-4676-b65f-79c890611426', N'Blog', NULL, NULL, CAST(0x0000A6A30145BA07 AS DateTime), 1059, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1091, 0, 0, N'107e3d3a-cb9d-4152-86aa-96a9b3ddbc8a', N'Some Tag', NULL, NULL, CAST(0x0000A6A30145BA25 AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1093, 0, 0, N'7ec6f564-ec52-4b98-9aea-9a23e9b8d14b', N'RSS', NULL, NULL, CAST(0x0000A6A30145BA2B AS DateTime), 1062, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1089, 0, 0, N'4c09bd5a-85a6-4246-bab6-b9a12a5961ad', N'Category 1', NULL, NULL, CAST(0x0000A6A30145BA1A AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1099, 0, 0, N'36449d79-5fb6-416c-a504-bd62f5cfe7ec', N'Contact', NULL, NULL, CAST(0x0000A6A30145BA4C AS DateTime), 1060, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1095, 0, 0, N'bfd22990-0fc0-42d4-9a63-beae5e0472e2', N'June', NULL, NULL, CAST(0x0000A6A30145BA32 AS DateTime), 1064, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1096, 0, 0, N'6bb05648-75eb-4f6f-82a6-cf3d083bffed', N'19', NULL, NULL, CAST(0x0000A6A30145BA36 AS DateTime), 1064, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1087, 0, 0, N'06cedad3-d9f7-42c4-8d04-df526ef441de', N'Author 1', NULL, NULL, CAST(0x0000A6A30145BA12 AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1098, 0, 0, N'90134b0c-d368-4c90-9bb5-e0d376f26c65', N'About', NULL, NULL, CAST(0x0000A6A30145BA44 AS DateTime), 1060, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1097, 0, 0, N'b8326379-948b-489f-b97e-e3ba848fc3d7', N'test', NULL, NULL, CAST(0x0000A6A30145BA3C AS DateTime), 1061, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1047, 1046, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1072, 1059, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1073, 1060, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1074, 1061, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1075, 1062, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1076, 1063, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1078, 1064, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1079, 1064, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1080, 1064, 1)
SET IDENTITY_INSERT [dbo].[cmsLanguageText] ON 

INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1, 1, N'd3fcf20c-e5e1-441e-918e-93ae524e89ec', N'1')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2, 1, N'ec57d509-ae6e-4a80-abcf-859c4a7e9dc4', N'')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (3, 1, N'816a30bb-9dc4-4bcf-9d5a-c648c4b7ad68', N'Latest Posts')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (4, 1, N'df8b6214-9931-4d21-9a10-8a92199d3fab', N'')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (5, 1, N'0b4e9bab-ab8f-4501-b00c-d38316511dec', N'Newer')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (6, 1, N'6e8ee525-6c2d-4d64-87b0-403ec04ff99d', N'Older')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (7, 1, N'fddee561-d2b7-47a3-84ad-f5666d502b40', N'Search')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (8, 1, N'6c0c59b9-8cff-4a54-a99c-1b5111441e1d', N'Submit')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (9, 1, N'0056da04-089f-4ba2-9d2c-a6c85a21b8e9', N'Tags')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (10, 1, N'155ee659-4e22-4b57-967e-8fe9b35937e7', N'Archive')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (11, 1, N'82f773af-23e4-4067-8212-d353e77e0c68', N'Authors')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (12, 1, N'037c630b-8ff7-4d28-a8fa-3d28f9d9c906', N'Written by')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (13, 1, N'3f989966-387d-4f3b-942c-3811d490674e', N'at')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (14, 1, N'3f825567-dace-4f30-ab0f-915043cf407c', N'Subscribe')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (15, 1, N'3bc8f10d-c7c4-4d6b-973a-35c905cac5fe', N'')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (16, 1, N'f4d4215b-2a17-461d-83d6-3e189c313c0f', N'Home')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (17, 1, N'a5fcd900-4a99-4f52-82c7-7af7f4b4d4ba', N'Categories')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (18, 1, N'326d9dc7-8a90-4443-b7dc-f7db3e36622a', N'All Categories')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (19, 1, N'9200fb7e-ffd8-4396-acfc-d484e69ef9cc', N'Related')
SET IDENTITY_INSERT [dbo].[cmsLanguageText] OFF
SET IDENTITY_INSERT [dbo].[cmsMacro] ON 

INSERT [dbo].[cmsMacro] ([id], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroScriptType], [macroScriptAssembly], [macroXSLT], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroPython]) VALUES (1, 1, 0, N'uBlogsyShowSomeLove', N'[uBlogsy] Show Some Love', N'', N'', N'', 0, 0, 0, N'~/Views/MacroPartials/uBlogsy/uBlogsyMacroShowSomeLove.cshtml')
SET IDENTITY_INSERT [dbo].[cmsMacro] OFF
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1050, N'c9838477-83e6-4d72-a225-4e0e6e350fcb', CAST(0x0000A67600BBC811 AS DateTime), N'<homePage id="1050" key="eaae9c5a-df1c-4844-ab2e-7c9e23e23c27" parentID="-1" level="1" creatorID="0" sortOrder="0" createDate="2016-09-03T11:23:03" updateDate="2016-09-03T11:23:03" nodeName="Homepage" urlName="homepage" path="-1,1050" isDoc="" nodeType="1047" creatorName="zhdan88vadim@gmail.com" writerName="zhdan88vadim@gmail.com" writerID="0" template="1046" nodeTypeAlias="homePage"><pageTitle><![CDATA[Welcome to Widgets Ltd]]></pageTitle><bodyText><![CDATA[<p><span>Hello world! We can write what we like here!</span></p>]]></bodyText><footer><![CDATA[Copyright Widgets Ltd 2014]]></footer></homePage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1084, N'f909386c-c551-4671-8bf8-063e16dc24f1', CAST(0x0000A6A30145B9E6 AS DateTime), N'<uBlogsySiteRoot id="1084" key="69fba108-48f8-4d01-ae3b-12cb84a9c4cf" parentID="-1" level="1" creatorID="0" sortOrder="1" createDate="2016-10-18T19:45:55" updateDate="2016-10-18T19:45:55" nodeName="Site Root" urlName="site-root" path="-1,1084" isDoc="" nodeType="1076" creatorName="zhdan88vadim@gmail.com" writerName="zhdan88vadim@gmail.com" writerID="0" template="1063" nodeTypeAlias="uBlogsySiteRoot"><umbracoNaviHide>0</umbracoNaviHide><uBlogsyContentTitle><![CDATA[Home]]></uBlogsyContentTitle><uBlogsyNavigationTitle><![CDATA[Home]]></uBlogsyNavigationTitle></uBlogsySiteRoot>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1085, N'f87086a9-9ae8-4676-b65f-79c890611426', CAST(0x0000A6A30145BA0D AS DateTime), N'<uBlogsyLanding id="1085" key="ab1c7b63-1830-4a9c-b641-43234645852b" parentID="1084" level="2" creatorID="0" sortOrder="0" createDate="2016-10-18T19:45:56" updateDate="2016-10-18T19:45:56" nodeName="Blog" urlName="blog" path="-1,1084,1085" isDoc="" nodeType="1072" creatorName="zhdan88vadim@gmail.com" writerName="zhdan88vadim@gmail.com" writerID="0" template="1059" nodeTypeAlias="uBlogsyLanding"><umbracoNaviHide>0</umbracoNaviHide><uBlogsyContentTitle><![CDATA[Blog]]></uBlogsyContentTitle><uBlogsyNavigationTitle><![CDATA[Blog]]></uBlogsyNavigationTitle><uBlogsyGeneralUseTitleAsNodeName>1</uBlogsyGeneralUseTitleAsNodeName><uBlogsyGeneralShowSocialMedia>1</uBlogsyGeneralShowSocialMedia><uBlogsyGeneralUseSummary>1</uBlogsyGeneralUseSummary><uBlogsyBlogLinks><![CDATA[http://feeds.feedburner.com/UmbracoBlog
http://feeds.feedburner.com/midcodecrisis
]]></uBlogsyBlogLinks></uBlogsyLanding>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1086, N'cdb47715-0774-4225-9766-60c1ed0bbaaf', CAST(0x0000A6A30145BA11 AS DateTime), N'<uBlogsyContainerAuthor id="1086" key="641ebe5d-b73d-481a-a5d0-c4c58674e009" parentID="1085" level="3" creatorID="0" sortOrder="0" createDate="2016-10-18T19:45:56" updateDate="2016-10-18T19:45:56" nodeName="Authors" urlName="authors" path="-1,1084,1085,1086" isDoc="" nodeType="1070" creatorName="zhdan88vadim@gmail.com" writerName="zhdan88vadim@gmail.com" writerID="0" template="0" nodeTypeAlias="uBlogsyContainerAuthor"><umbracoNaviHide>0</umbracoNaviHide></uBlogsyContainerAuthor>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1087, N'06cedad3-d9f7-42c4-8d04-df526ef441de', CAST(0x0000A6A30145BA16 AS DateTime), N'<uBlogsyAuthor id="1087" key="b04df871-e559-421a-9ae2-91ceef47b03e" parentID="1086" level="4" creatorID="0" sortOrder="0" createDate="2016-10-18T19:45:56" updateDate="2016-10-18T19:45:56" nodeName="Author 1" urlName="author-1" path="-1,1084,1085,1086,1087" isDoc="" nodeType="1068" creatorName="zhdan88vadim@gmail.com" writerName="zhdan88vadim@gmail.com" writerID="0" template="0" nodeTypeAlias="uBlogsyAuthor"><umbracoNaviHide>0</umbracoNaviHide><uBlogsyAuthorName><![CDATA[Author 1]]></uBlogsyAuthorName></uBlogsyAuthor>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1088, N'95f728fc-594a-4427-92a0-34274434cde7', CAST(0x0000A6A30145BA19 AS DateTime), N'<uBlogsyContainerLabel id="1088" key="d14cb4e0-c532-48aa-868d-47c0adffa6b7" parentID="1085" level="3" creatorID="0" sortOrder="1" createDate="2016-10-18T19:45:56" updateDate="2016-10-18T19:45:56" nodeName="Categories (optional)" urlName="categories-optional" path="-1,1084,1085,1088" isDoc="" nodeType="1071" creatorName="zhdan88vadim@gmail.com" writerName="zhdan88vadim@gmail.com" writerID="0" template="0" nodeTypeAlias="uBlogsyContainerLabel"><umbracoNaviHide>0</umbracoNaviHide></uBlogsyContainerLabel>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1089, N'4c09bd5a-85a6-4246-bab6-b9a12a5961ad', CAST(0x0000A6A30145BA21 AS DateTime), N'<uBlogsyLabel id="1089" key="527891b0-6517-4e1c-a97a-192b49241617" parentID="1088" level="4" creatorID="0" sortOrder="0" createDate="2016-10-18T19:45:56" updateDate="2016-10-18T19:45:56" nodeName="Category 1" urlName="category-1" path="-1,1084,1085,1088,1089" isDoc="" nodeType="1069" creatorName="zhdan88vadim@gmail.com" writerName="zhdan88vadim@gmail.com" writerID="0" template="0" nodeTypeAlias="uBlogsyLabel"><umbracoNaviHide>0</umbracoNaviHide><uBlogsyLabelName><![CDATA[Category 1]]></uBlogsyLabelName></uBlogsyLabel>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1090, N'4a5d7d96-a76b-4333-8852-6868fa9c1dd6', CAST(0x0000A6A30145BA24 AS DateTime), N'<uTagsyTagContainer id="1090" key="1d3c0d18-aac9-4983-b7be-937aff45cd1e" parentID="1085" level="3" creatorID="0" sortOrder="2" createDate="2016-10-18T19:45:56" updateDate="2016-10-18T19:45:56" nodeName="Tags" urlName="tags" path="-1,1084,1085,1090" isDoc="" nodeType="1083" creatorName="zhdan88vadim@gmail.com" writerName="zhdan88vadim@gmail.com" writerID="0" template="0" nodeTypeAlias="uTagsyTagContainer" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1091, N'107e3d3a-cb9d-4152-86aa-96a9b3ddbc8a', CAST(0x0000A6A30145BA28 AS DateTime), N'<uTagsyTag id="1091" key="09eef7b6-cb83-4533-a6b2-8f257dd03ed0" parentID="1090" level="4" creatorID="0" sortOrder="0" createDate="2016-10-18T19:45:56" updateDate="2016-10-18T19:45:56" nodeName="Some Tag" urlName="some-tag" path="-1,1084,1085,1090,1091" isDoc="" nodeType="1082" creatorName="zhdan88vadim@gmail.com" writerName="zhdan88vadim@gmail.com" writerID="0" template="0" nodeTypeAlias="uTagsyTag"><uTagsyTagName><![CDATA[Some Tag]]></uTagsyTagName></uTagsyTag>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1092, N'72dde664-d775-4f73-a247-5c0fd0b19e93', CAST(0x0000A6A30145BA2A AS DateTime), N'<uTagsyTag id="1092" key="1065df42-2bc5-4e47-8b7b-7a7a22f210d4" parentID="1090" level="4" creatorID="0" sortOrder="1" createDate="2016-10-18T19:45:56" updateDate="2016-10-18T19:45:56" nodeName="another thing" urlName="another-thing" path="-1,1084,1085,1090,1092" isDoc="" nodeType="1082" creatorName="zhdan88vadim@gmail.com" writerName="zhdan88vadim@gmail.com" writerID="0" template="0" nodeTypeAlias="uTagsyTag"><uTagsyTagName><![CDATA[another thing]]></uTagsyTagName></uTagsyTag>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1093, N'7ec6f564-ec52-4b98-9aea-9a23e9b8d14b', CAST(0x0000A6A30145BA2F AS DateTime), N'<uBlogsyRSS id="1093" key="10a078da-458d-462d-86e2-6b51ea5c5a88" parentID="1085" level="3" creatorID="0" sortOrder="3" createDate="2016-10-18T19:45:56" updateDate="2016-10-18T19:45:56" nodeName="RSS" urlName="rss" path="-1,1084,1085,1093" isDoc="" nodeType="1075" creatorName="zhdan88vadim@gmail.com" writerName="zhdan88vadim@gmail.com" writerID="0" template="1062" nodeTypeAlias="uBlogsyRSS"><umbracoNaviHide>0</umbracoNaviHide><uBlogsyRssDescription><![CDATA[Blog Description]]></uBlogsyRssDescription><uBlogsyRssTitle><![CDATA[My Blog]]></uBlogsyRssTitle><uBlogsyRssCopyright><![CDATA[Copyright @AnthonyDotNet]]></uBlogsyRssCopyright></uBlogsyRSS>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1094, N'69ec6de5-5209-4725-a62e-149dadc0e0f3', CAST(0x0000A6A30145BA31 AS DateTime), N'<uDateFoldersyFolderYear id="1094" key="12a1b971-7bd4-4969-b21f-5714a805d258" parentID="1085" level="3" creatorID="0" sortOrder="4" createDate="2016-10-18T19:45:56" updateDate="2016-10-18T19:45:56" nodeName="2016" urlName="2016" path="-1,1084,1085,1094" isDoc="" nodeType="1080" creatorName="zhdan88vadim@gmail.com" writerName="zhdan88vadim@gmail.com" writerID="0" template="1064" nodeTypeAlias="uDateFoldersyFolderYear" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1095, N'bfd22990-0fc0-42d4-9a63-beae5e0472e2', CAST(0x0000A6A30145BA35 AS DateTime), N'<uDateFoldersyFolderMonth id="1095" key="5b3c453d-4cee-4433-bc92-fb3cb3c1685e" parentID="1094" level="4" creatorID="0" sortOrder="0" createDate="2016-10-18T19:45:56" updateDate="2016-10-18T19:45:56" nodeName="June" urlName="june" path="-1,1084,1085,1094,1095" isDoc="" nodeType="1079" creatorName="zhdan88vadim@gmail.com" writerName="zhdan88vadim@gmail.com" writerID="0" template="1064" nodeTypeAlias="uDateFoldersyFolderMonth" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1096, N'6bb05648-75eb-4f6f-82a6-cf3d083bffed', CAST(0x0000A6A30145BA3C AS DateTime), N'<uDateFoldersyFolderDay id="1096" key="fbd5007d-42ee-4ab6-a30b-4a18d45370b6" parentID="1095" level="5" creatorID="0" sortOrder="0" createDate="2016-10-18T19:45:56" updateDate="2016-10-18T19:45:56" nodeName="19" urlName="19" path="-1,1084,1085,1094,1095,1096" isDoc="" nodeType="1078" creatorName="zhdan88vadim@gmail.com" writerName="zhdan88vadim@gmail.com" writerID="0" template="1064" nodeTypeAlias="uDateFoldersyFolderDay" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', CAST(0x0000A6A30145BA44 AS DateTime), N'<uBlogsyPost id="1097" key="cfe11700-082d-4865-aba7-d52656725cb6" parentID="1096" level="6" creatorID="0" sortOrder="0" createDate="2016-10-18T19:45:56" updateDate="2016-10-18T19:45:56" nodeName="test" urlName="test" path="-1,1084,1085,1094,1095,1096,1097" isDoc="" nodeType="1074" creatorName="zhdan88vadim@gmail.com" writerName="zhdan88vadim@gmail.com" writerID="0" template="1061" nodeTypeAlias="uBlogsyPost"><umbracoNaviHide>0</umbracoNaviHide><uBlogsyContentTitle><![CDATA[test]]></uBlogsyContentTitle><uBlogsyNavigationTitle><![CDATA[test]]></uBlogsyNavigationTitle><uBlogsyPostTags><![CDATA[1118,1139]]></uBlogsyPostTags><uBlogsyPostLabels><![CDATA[1116]]></uBlogsyPostLabels><uBlogsyPostDisableComments>0</uBlogsyPostDisableComments><uBlogsyPostDate>2016-06-19T14:21:29</uBlogsyPostDate></uBlogsyPost>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1098, N'90134b0c-d368-4c90-9bb5-e0d376f26c65', CAST(0x0000A6A30145BA4B AS DateTime), N'<uBlogsyPage id="1098" key="b33cd250-44ed-4ca6-9e3c-559b7723bcad" parentID="1084" level="2" creatorID="0" sortOrder="1" createDate="2016-10-18T19:45:56" updateDate="2016-10-18T19:45:56" nodeName="About" urlName="about" path="-1,1084,1098" isDoc="" nodeType="1073" creatorName="zhdan88vadim@gmail.com" writerName="zhdan88vadim@gmail.com" writerID="0" template="1060" nodeTypeAlias="uBlogsyPage"><umbracoNaviHide>0</umbracoNaviHide><uBlogsyContentTitle><![CDATA[About]]></uBlogsyContentTitle><uBlogsyNavigationTitle><![CDATA[About]]></uBlogsyNavigationTitle></uBlogsyPage>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1099, N'36449d79-5fb6-416c-a504-bd62f5cfe7ec', CAST(0x0000A6A30145BA51 AS DateTime), N'<uBlogsyPage id="1099" key="e477b52e-c2c6-43f9-8f77-4e0b761b0e01" parentID="1084" level="2" creatorID="0" sortOrder="2" createDate="2016-10-18T19:45:56" updateDate="2016-10-18T19:45:56" nodeName="Contact" urlName="contact" path="-1,1084,1099" isDoc="" nodeType="1073" creatorName="zhdan88vadim@gmail.com" writerName="zhdan88vadim@gmail.com" writerID="0" template="1060" nodeTypeAlias="uBlogsyPage"><umbracoNaviHide>0</umbracoNaviHide><uBlogsyContentTitle><![CDATA[Contact]]></uBlogsyContentTitle><uBlogsyNavigationTitle><![CDATA[Contact]]></uBlogsyNavigationTitle></uBlogsyPage>')
SET IDENTITY_INSERT [dbo].[cmsPropertyData] ON 

INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (1, 1050, N'c9838477-83e6-4d72-a225-4e0e6e350fcb', 35, NULL, NULL, NULL, N'Welcome to Widgets Ltd', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (2, 1050, N'c9838477-83e6-4d72-a225-4e0e6e350fcb', 36, NULL, NULL, NULL, NULL, N'<p><span>Hello world! We can write what we like here!</span></p>')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (3, 1050, N'c9838477-83e6-4d72-a225-4e0e6e350fcb', 37, NULL, NULL, NULL, N'Copyright Widgets Ltd 2014', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (4, 1051, N'cd43a1e9-565b-4c0e-88a5-c6fbf3c0c17c', 27, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (5, 1052, N'd4c682dc-34c9-4f9e-bfd1-88fc09ef8ba7', 6, NULL, NULL, NULL, NULL, N'{
  "focalPoint": {
    "left": 0.52166666666666661,
    "top": 0.44044943820224719
  },
  "src": "/media/1001/27236_0.jpg"
}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (6, 1052, N'd4c682dc-34c9-4f9e-bfd1-88fc09ef8ba7', 7, NULL, NULL, NULL, N'600', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (7, 1052, N'd4c682dc-34c9-4f9e-bfd1-88fc09ef8ba7', 8, NULL, NULL, NULL, N'445', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (8, 1052, N'd4c682dc-34c9-4f9e-bfd1-88fc09ef8ba7', 9, NULL, NULL, NULL, N'189632', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (9, 1052, N'd4c682dc-34c9-4f9e-bfd1-88fc09ef8ba7', 10, NULL, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (10, 1084, N'f909386c-c551-4671-8bf8-063e16dc24f1', 38, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11, 1084, N'f909386c-c551-4671-8bf8-063e16dc24f1', 39, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (12, 1084, N'f909386c-c551-4671-8bf8-063e16dc24f1', 40, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (13, 1084, N'f909386c-c551-4671-8bf8-063e16dc24f1', 41, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (14, 1084, N'f909386c-c551-4671-8bf8-063e16dc24f1', 42, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (15, 1084, N'f909386c-c551-4671-8bf8-063e16dc24f1', 43, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (16, 1084, N'f909386c-c551-4671-8bf8-063e16dc24f1', 44, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (17, 1084, N'f909386c-c551-4671-8bf8-063e16dc24f1', 45, NULL, NULL, NULL, N'Home', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (18, 1084, N'f909386c-c551-4671-8bf8-063e16dc24f1', 46, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (19, 1084, N'f909386c-c551-4671-8bf8-063e16dc24f1', 47, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (20, 1084, N'f909386c-c551-4671-8bf8-063e16dc24f1', 48, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (21, 1084, N'f909386c-c551-4671-8bf8-063e16dc24f1', 49, NULL, NULL, NULL, N'Home', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (22, 1085, N'f87086a9-9ae8-4676-b65f-79c890611426', 38, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (23, 1085, N'f87086a9-9ae8-4676-b65f-79c890611426', 39, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (24, 1085, N'f87086a9-9ae8-4676-b65f-79c890611426', 40, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (25, 1085, N'f87086a9-9ae8-4676-b65f-79c890611426', 41, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (26, 1085, N'f87086a9-9ae8-4676-b65f-79c890611426', 42, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (27, 1085, N'f87086a9-9ae8-4676-b65f-79c890611426', 43, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (28, 1085, N'f87086a9-9ae8-4676-b65f-79c890611426', 44, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (29, 1085, N'f87086a9-9ae8-4676-b65f-79c890611426', 45, NULL, NULL, NULL, N'Blog', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (30, 1085, N'f87086a9-9ae8-4676-b65f-79c890611426', 46, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (31, 1085, N'f87086a9-9ae8-4676-b65f-79c890611426', 47, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (32, 1085, N'f87086a9-9ae8-4676-b65f-79c890611426', 48, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (33, 1085, N'f87086a9-9ae8-4676-b65f-79c890611426', 49, NULL, NULL, NULL, N'Blog', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (34, 1085, N'f87086a9-9ae8-4676-b65f-79c890611426', 53, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (35, 1085, N'f87086a9-9ae8-4676-b65f-79c890611426', 54, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (36, 1085, N'f87086a9-9ae8-4676-b65f-79c890611426', 55, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (37, 1085, N'f87086a9-9ae8-4676-b65f-79c890611426', 56, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (38, 1085, N'f87086a9-9ae8-4676-b65f-79c890611426', 57, NULL, NULL, NULL, NULL, N'http://feeds.feedburner.com/UmbracoBlog
http://feeds.feedburner.com/midcodecrisis
')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (39, 1086, N'cdb47715-0774-4225-9766-60c1ed0bbaaf', 38, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (40, 1086, N'cdb47715-0774-4225-9766-60c1ed0bbaaf', 39, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (41, 1086, N'cdb47715-0774-4225-9766-60c1ed0bbaaf', 40, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (42, 1086, N'cdb47715-0774-4225-9766-60c1ed0bbaaf', 41, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (43, 1086, N'cdb47715-0774-4225-9766-60c1ed0bbaaf', 42, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (44, 1087, N'06cedad3-d9f7-42c4-8d04-df526ef441de', 38, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (45, 1087, N'06cedad3-d9f7-42c4-8d04-df526ef441de', 39, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (46, 1087, N'06cedad3-d9f7-42c4-8d04-df526ef441de', 40, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (47, 1087, N'06cedad3-d9f7-42c4-8d04-df526ef441de', 41, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (48, 1087, N'06cedad3-d9f7-42c4-8d04-df526ef441de', 42, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (49, 1087, N'06cedad3-d9f7-42c4-8d04-df526ef441de', 50, NULL, NULL, NULL, N'Author 1', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (50, 1087, N'06cedad3-d9f7-42c4-8d04-df526ef441de', 51, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (51, 1088, N'95f728fc-594a-4427-92a0-34274434cde7', 38, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (52, 1088, N'95f728fc-594a-4427-92a0-34274434cde7', 39, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (53, 1088, N'95f728fc-594a-4427-92a0-34274434cde7', 40, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (54, 1088, N'95f728fc-594a-4427-92a0-34274434cde7', 41, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (55, 1088, N'95f728fc-594a-4427-92a0-34274434cde7', 42, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (56, 1089, N'4c09bd5a-85a6-4246-bab6-b9a12a5961ad', 38, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (57, 1089, N'4c09bd5a-85a6-4246-bab6-b9a12a5961ad', 39, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (58, 1089, N'4c09bd5a-85a6-4246-bab6-b9a12a5961ad', 40, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (59, 1089, N'4c09bd5a-85a6-4246-bab6-b9a12a5961ad', 41, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (60, 1089, N'4c09bd5a-85a6-4246-bab6-b9a12a5961ad', 42, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (61, 1089, N'4c09bd5a-85a6-4246-bab6-b9a12a5961ad', 52, NULL, NULL, NULL, N'Category 1', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (62, 1091, N'107e3d3a-cb9d-4152-86aa-96a9b3ddbc8a', 67, NULL, NULL, NULL, N'Some Tag', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (63, 1092, N'72dde664-d775-4f73-a247-5c0fd0b19e93', 67, NULL, NULL, NULL, N'another thing', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (64, 1093, N'7ec6f564-ec52-4b98-9aea-9a23e9b8d14b', 38, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (65, 1093, N'7ec6f564-ec52-4b98-9aea-9a23e9b8d14b', 39, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (66, 1093, N'7ec6f564-ec52-4b98-9aea-9a23e9b8d14b', 40, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (67, 1093, N'7ec6f564-ec52-4b98-9aea-9a23e9b8d14b', 41, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (68, 1093, N'7ec6f564-ec52-4b98-9aea-9a23e9b8d14b', 42, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (69, 1093, N'7ec6f564-ec52-4b98-9aea-9a23e9b8d14b', 64, NULL, NULL, NULL, NULL, N'Blog Description')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (70, 1093, N'7ec6f564-ec52-4b98-9aea-9a23e9b8d14b', 65, NULL, NULL, NULL, N'My Blog', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (71, 1093, N'7ec6f564-ec52-4b98-9aea-9a23e9b8d14b', 66, NULL, NULL, NULL, N'Copyright @AnthonyDotNet', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (72, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', 38, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (73, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', 39, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (74, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', 40, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (75, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', 41, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (76, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', 42, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (77, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', 43, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (78, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', 44, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (79, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', 45, NULL, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (80, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', 46, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (81, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', 47, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (82, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', 48, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (83, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', 49, NULL, NULL, NULL, N'test', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (84, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', 58, NULL, NULL, NULL, N'1118,1139', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (85, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', 59, NULL, NULL, NULL, N'1116', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (86, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', 60, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (87, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', 61, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (88, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', 62, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (89, 1097, N'b8326379-948b-489f-b97e-e3ba848fc3d7', 63, NULL, NULL, CAST(0x0000A62A00EC9D0C AS DateTime), NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (90, 1098, N'90134b0c-d368-4c90-9bb5-e0d376f26c65', 38, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (91, 1098, N'90134b0c-d368-4c90-9bb5-e0d376f26c65', 39, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (92, 1098, N'90134b0c-d368-4c90-9bb5-e0d376f26c65', 40, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (93, 1098, N'90134b0c-d368-4c90-9bb5-e0d376f26c65', 41, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (94, 1098, N'90134b0c-d368-4c90-9bb5-e0d376f26c65', 42, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (95, 1098, N'90134b0c-d368-4c90-9bb5-e0d376f26c65', 43, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (96, 1098, N'90134b0c-d368-4c90-9bb5-e0d376f26c65', 44, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (97, 1098, N'90134b0c-d368-4c90-9bb5-e0d376f26c65', 45, NULL, NULL, NULL, N'About', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (98, 1098, N'90134b0c-d368-4c90-9bb5-e0d376f26c65', 46, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (99, 1098, N'90134b0c-d368-4c90-9bb5-e0d376f26c65', 47, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (100, 1098, N'90134b0c-d368-4c90-9bb5-e0d376f26c65', 48, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (101, 1098, N'90134b0c-d368-4c90-9bb5-e0d376f26c65', 49, NULL, NULL, NULL, N'About', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (102, 1099, N'36449d79-5fb6-416c-a504-bd62f5cfe7ec', 38, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (103, 1099, N'36449d79-5fb6-416c-a504-bd62f5cfe7ec', 39, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (104, 1099, N'36449d79-5fb6-416c-a504-bd62f5cfe7ec', 40, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (105, 1099, N'36449d79-5fb6-416c-a504-bd62f5cfe7ec', 41, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (106, 1099, N'36449d79-5fb6-416c-a504-bd62f5cfe7ec', 42, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (107, 1099, N'36449d79-5fb6-416c-a504-bd62f5cfe7ec', 43, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (108, 1099, N'36449d79-5fb6-416c-a504-bd62f5cfe7ec', 44, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (109, 1099, N'36449d79-5fb6-416c-a504-bd62f5cfe7ec', 45, NULL, NULL, NULL, N'Contact', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (110, 1099, N'36449d79-5fb6-416c-a504-bd62f5cfe7ec', 46, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (111, 1099, N'36449d79-5fb6-416c-a504-bd62f5cfe7ec', 47, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (112, 1099, N'36449d79-5fb6-416c-a504-bd62f5cfe7ec', 48, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (113, 1099, N'36449d79-5fb6-416c-a504-bd62f5cfe7ec', 49, NULL, NULL, NULL, N'Contact', NULL)
SET IDENTITY_INSERT [dbo].[cmsPropertyData] OFF
SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON 

INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (6, 1043, 1032, 3, N'umbracoFile', N'Upload image', 0, 0, NULL, NULL, N'00000006-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (7, -92, 1032, 3, N'umbracoWidth', N'Width', 0, 0, NULL, NULL, N'00000007-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (8, -92, 1032, 3, N'umbracoHeight', N'Height', 0, 0, NULL, NULL, N'00000008-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (9, -92, 1032, 3, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, N'00000009-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (10, -92, 1032, 3, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, N'0000000a-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (24, -90, 1033, 4, N'umbracoFile', N'Upload file', 0, 0, NULL, NULL, N'00000018-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (25, -92, 1033, 4, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, N'00000019-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (26, -92, 1033, 4, N'umbracoBytes', N'Size', 0, 0, NULL, NULL, N'0000001a-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (27, -96, 1031, 5, N'contents', N'Contents:', 0, 0, NULL, NULL, N'0000001b-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (28, -89, 1044, 11, N'umbracoMemberComments', N'Comments', 0, 0, NULL, NULL, N'0000001c-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (29, -92, 1044, 11, N'umbracoMemberFailedPasswordAttempts', N'Failed Password Attempts', 1, 0, NULL, NULL, N'0000001d-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (30, -49, 1044, 11, N'umbracoMemberApproved', N'Is Approved', 2, 0, NULL, NULL, N'0000001e-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (31, -49, 1044, 11, N'umbracoMemberLockedOut', N'Is Locked Out', 3, 0, NULL, NULL, N'0000001f-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (32, -92, 1044, 11, N'umbracoMemberLastLockoutDate', N'Last Lockout Date', 4, 0, NULL, NULL, N'00000020-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (33, -92, 1044, 11, N'umbracoMemberLastLogin', N'Last Login Date', 5, 0, NULL, NULL, N'00000021-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (34, -92, 1044, 11, N'umbracoMemberLastPasswordChangeDate', N'Last Password Change Date', 6, 0, NULL, NULL, N'00000022-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (35, 1048, 1047, 12, N'pageTitle', N'Page Title', 0, 0, NULL, N'The main title of the page', N'93b3e12d-031d-4a63-8faf-5bfeaa4ef357')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (36, -87, 1047, 12, N'bodyText', N'Body text', 1, 0, NULL, N'he main content of the page.', N'11ca95cc-c909-4229-b22f-ac616a4c8c87')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (37, 1049, 1047, 13, N'footer', N'Footer', 0, 0, NULL, N'Copyright notice for the footer.', N'2854c4e6-ebba-4c7d-9e6b-ab86ffa6eeb5')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (38, -88, 1065, NULL, N'umbracoUrlAlias', N'Url Alias', 4, 0, N'', N'', N'899a05f0-a9be-455b-a580-c484adfb4db8')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (39, -88, 1065, NULL, N'umbracoUrlName', N'Url Name Change', 3, 0, N'', N'', N'73a50067-de2e-4070-addb-67603ef09ff8')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (40, 1034, 1065, NULL, N'umbracoInternalRedirectId', N'Invisible Redirect', 2, 0, N'', N'', N'e64c94ba-2216-4cc6-bdac-af38eac457ec')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (41, 1034, 1065, NULL, N'umbracoRedirect', N'302 Redirect', 1, 0, N'', N'', N'787b6a1e-ba3c-4328-b0dd-2f65de0bbde2')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (42, -49, 1065, NULL, N'umbracoNaviHide', N'Hide from navigation', 0, 0, N'', N'', N'35fae84e-7936-4a5f-b64e-a5d4e3da54bc')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (43, -87, 1067, 14, N'uBlogsyContentBody', N'Body', 2, 0, N'', N'', N'd75a22e7-dd6c-4ce0-9e07-2adaa318c80e')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (44, -89, 1067, 14, N'uBlogsyContentSummary', N'Summary', 1, 0, N'', N'', N'7c6aa17c-e409-433c-823d-38fcdf073557')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (45, -88, 1067, 14, N'uBlogsyContentTitle', N'Title', 0, 0, N'', N'', N'd2f30627-b2a8-4d11-ab1e-e1e39f20a004')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (46, -88, 1067, 15, N'uBlogsySeoKeywords', N'Keywords', 1, 0, N'', N'Used for meta keywords. When this is empty, the title of the page is used.', N'888c276b-3455-4120-a5a2-0f3383c95d6e')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (47, -88, 1067, 15, N'uBlogsySeoTitle', N'Seo Title', 0, 0, N'', N'', N'c2f5a412-6d1d-481e-ab91-8bc6427c6b50')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (48, -89, 1067, 15, N'uBlogsySeoDescription', N'Description', 2, 0, N'', N'Used for meta description. When this is empty, an exerpt of the body text of the page is used.', N'c621257e-c74a-4348-9509-c16a76276f3d')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (49, -88, 1067, 16, N'uBlogsyNavigationTitle', N'Navigation Title', 0, 0, N'', N'', N'13298222-79eb-434c-8a25-5b32e46ec6c6')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (50, -88, 1068, 17, N'uBlogsyAuthorName', N'Author Name', 0, 0, N'', N'', N'ce7eb249-89a8-45ef-b24d-dcc60f1fc4e5')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (51, -88, 1068, 17, N'uBlogsyAuthorGravatarEmail', N'Gravatar Email', 1, 0, N'', N'', N'e5bd3dde-007f-44f0-b8b2-f08c9d5bc446')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (52, -88, 1069, 18, N'uBlogsyLabelName', N'Label Name', 0, 0, N'', N'', N'36bf60e6-332f-41b3-a5cc-5279ecd1abf0')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (53, -49, 1072, 19, N'uBlogsyGeneralUseTitleAsNodeName', N'Use Title As Node Name', 3, 0, N'', N'Deselect this if you want to have a post title which is different to your post''s node name.

eg. If you want your title to be "My title" but you want the post url to be /posts/2011/01/my-cool-title/ instead of /posts/2011/01/my-title/

Selected by default.', N'b7248f1f-2029-4a7f-8dce-7ff24a74a715')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (54, -49, 1072, 19, N'uBlogsyGeneralShowSocialMedia', N'Show Social Media Links', 2, 0, N'', N'Select this to show social media sharing links under each post.', N'857a100a-a89e-4b17-99cf-91733f6ae43e')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (55, -49, 1072, 19, N'uBlogsyGeneralUseSummary', N'Use Summary On Landing', 1, 0, N'', N'Select this to use post summaries on the main page, instead of whole posts.
', N'cdeef9e5-4055-4498-9769-4ada65d3dfca')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (56, 1053, 1072, 19, N'uBlogsyGeneralDefaultAuthor', N'Default Author', 0, 0, N'', N'This author is used when none are defined in a post.', N'a74c5bdf-8818-4991-9a99-44d753f3e0d4')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (57, -89, 1072, 20, N'uBlogsyBlogLinks', N'Blog Roll Links', 0, 0, N'', N'A list of blogs you want to follow. Make sure it''s one per line.

e.g 
http://feeds.feedburner.com/midcodecrisis
http://feeds.feedburner.com/umbracoblog', N'e53054e8-f9ac-46be-a137-365c7a16f5c6')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (58, 1055, 1074, 21, N'uBlogsyPostTags', N'Tags', 3, 0, N'', N'Remember to click save (or publish)!', N'6710cfb7-a31d-41c8-8cdd-5ebd05f60faa')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (59, 1054, 1074, 21, N'uBlogsyPostLabels', N'Categories', 4, 0, N'', N'', N'f1cab4c0-2038-43fd-aedb-28c8e8442b59')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (60, 1035, 1074, 21, N'uBlogsyPostImage', N'Main Image', 1, 0, N'', N'', N'de9201ba-6c56-4e20-90f5-4c6f6d00840c')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (61, 1053, 1074, 21, N'uBlogsyPostAuthor', N'Author', 2, 0, N'', N'There can be multiple authors separated by ",".', N'd8a43ad2-9aad-4880-8d95-aae27a9b6140')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (62, -49, 1074, 21, N'uBlogsyPostDisableComments', N'Disable Comments', 5, 0, N'', N'Allows you to disable comments to this post. Note that comments that already exist will remain viewable.

If you do not have the comments extension installed, then you can delete this property.
', N'26593faf-6034-4194-a894-7756e7bd88f0')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (63, -36, 1074, 21, N'uBlogsyPostDate', N'Post Date', 0, 1, N'', N'', N'10d625c9-cbf0-4190-bfbb-a0ba3f26bb8c')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (64, -89, 1075, 22, N'uBlogsyRssDescription', N'Description', 1, 0, N'', N'The description of your RSS feed', N'b4921b4c-5954-4027-9071-e5ac6daa7e37')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (65, -88, 1075, 22, N'uBlogsyRssTitle', N'Title', 0, 0, N'', N'The title which is shown in your RSS feed', N'622299ab-4004-4d46-b041-55efa7b0c7f5')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (66, -88, 1075, 22, N'uBlogsyRssCopyright', N'Copyright', 2, 0, N'', N'Copyright information which is shown in your RSS feed.

e.g Mid-code Crisis
', N'c137b201-6a04-45bc-977a-dfed94368a92')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (67, -88, 1082, 23, N'uTagsyTagName', N'Tag Name', 0, 0, N'', N'', N'e7d3a2cf-480f-459c-848f-05762a4c04db')
SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] ON 

INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (3, 1032, N'Image', 1, N'79ed4d07-254a-42cf-8fa9-ebe1c116a596')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (4, 1033, N'File', 1, N'50899f9c-023a-4466-b623-aba9049885fe')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (5, 1031, N'Contents', 1, N'79995fa2-63ee-453c-a29b-2e66f324cdbe')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (11, 1044, N'Membership', 1, N'0756729d-d665-46e3-b84a-37aceaa614f8')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (12, 1047, N'Contents', 0, N'2082f909-320c-45a7-bc1f-4e3fe7344aba')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (13, 1047, N'Footer Text', 2, N'efc78a54-b3d7-4355-a770-ee160a0f6eca')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (14, 1067, N'Content', 0, N'b10e7735-b9c7-48c9-86ba-ff982d6a9469')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (15, 1067, N'SEO', 1, N'7f83def0-2e86-49c0-9941-1d37518f9e4a')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (16, 1067, N'Navigation', 2, N'3edef038-e773-4038-b712-77528b43f13a')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (17, 1068, N'Author', 0, N'64859cba-1487-4679-a6ac-727117ff97ff')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (18, 1069, N'Category', 0, N'6cfc565e-17be-4628-96ec-930453c280f2')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (19, 1072, N'General Settings', 0, N'829dee4b-f86e-4166-999e-f38de3c306dd')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (20, 1072, N'Blog Roll', 1, N'b0444282-ec59-4aee-88e3-a9906e55d132')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (21, 1074, N'Post Info', 0, N'7c9de3e1-1935-45e2-bd1e-e0bf596072b6')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (22, 1075, N'RSS Feed', 0, N'ad5a43e1-a201-4851-9e0b-70b32b0036a0')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (23, 1082, N'Tag', 0, N'a35d6049-d3cd-4be3-a2a9-fe48cd1583ef')
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] OFF
SET IDENTITY_INSERT [dbo].[cmsTaskType] ON 

INSERT [dbo].[cmsTaskType] ([id], [alias]) VALUES (1, N'toTranslate')
SET IDENTITY_INSERT [dbo].[cmsTaskType] OFF
SET IDENTITY_INSERT [dbo].[cmsTemplate] ON 

INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (1, 1046, N'HomePage', N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage<ContentModels.HomePage>
@using ContentModels = Umbraco.Web.PublishedContentModels;
@{
	Layout = null;
}

<!doctype html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title></title>
	<meta name="description" content="">
	<meta name="author" content="">

	<meta name="viewport" content="width=device-width,initial-scale=1">

	<link rel="stylesheet" href="css/style.css">

	<script src="scripts/modernizr-2.0.6.min.js"></script>
</head>
<body>

	<div id="header-container">
		<header class="wrapper clearfix">
			<h1 id="title">@Umbraco.Field("pageTitle")</h1>
			<nav>
				<ul>
					<li><a href="#">nav ul li a</a></li>
					<li><a href="#">nav ul li a</a></li>
					<li><a href="#">nav ul li a</a></li>
				</ul>
			</nav>
		</header>
	</div>
	<div id="main-container">
		<div id="main" class="wrapper clearfix">
			
			<article>
				<header>
					<h1>article header h1</h1>
					@Umbraco.Field("bodyText")
				</header>
				<section>
					<h2>article section h2</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales urna non odio egestas tempor. Nunc vel vehicula ante. Etiam bibendum iaculis libero, eget molestie nisl pharetra in. In semper consequat est, eu porta velit mollis nec. Curabitur posuere enim eget turpis feugiat tempor. Etiam ullamcorper lorem dapibus velit suscipit ultrices. Proin in est sed erat facilisis pharetra.</p>
				</section>
				<section>
					<h2>article section h2</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales urna non odio egestas tempor. Nunc vel vehicula ante. Etiam bibendum iaculis libero, eget molestie nisl pharetra in. In semper consequat est, eu porta velit mollis nec. Curabitur posuere enim eget turpis feugiat tempor. Etiam ullamcorper lorem dapibus velit suscipit ultrices. Proin in est sed erat facilisis pharetra.</p>
				</section>
				<footer>
					<h3>article footer h3</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales urna non odio egestas tempor. Nunc vel vehicula ante. Etiam bibendum iaculis libero, eget molestie nisl pharetra in. In semper consequat est, eu porta velit mollis nec. Curabitur posuere enim eget turpis feugiat tempor.</p>
				</footer>
			</article>
			
			<aside>
				<h3>aside</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sodales urna non odio egestas tempor. Nunc vel vehicula ante. Etiam bibendum iaculis libero, eget molestie nisl pharetra in. In semper consequat est, eu porta velit mollis nec. Curabitur posuere enim eget turpis feugiat tempor. Etiam ullamcorper lorem dapibus velit suscipit ultrices.</p>
			</aside>
			
		</div> <!-- #main -->
	</div> <!-- #main-container -->

	<div id="footer-container">
		<footer class="wrapper">
			<h3>@Umbraco.Field("footer")</h3>
		</footer>
	</div>

</body>
</html>')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (2, 1056, N'uBlogsyBaseBlog', N'@*
    Base Blog layout. Make this inherit from your base template
*@

@inherits UmbracoTemplatePage
@{
    Layout = "uBlogsyBaseSite.cshtml";
}

@section uBlogsyHead
{
    @Html.Partial("uBlogsy/Global/uBlogsyGlobalBrowserTitle")

    @*get meta title and description*@
    @Html.Partial("uBlogsy/Global/uBlogsyGlobalSeoMeta")

    <script src="http://code.jquery.com/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js"></script>
    <link type="text/css" rel="Stylesheet" media="screen" href="/css/uBlogsy.css" />

    @RenderSection("uBlogsyHead")
}



@section uBlogsyMain
{
    <div id="uBlogsy"> 
        <div id="uBlogsy_main">
               
            <section id="uBlogsy_left_col">
                @RenderSection("uBlogsyLeftCol")
            </section>
            <aside id="uBlogsy_right_col">
                @*search*@
                @Html.Partial("uBlogsy/Widgets/uBlogsyWidgetSearch")

                @*rss link*@
                @Html.Partial("uBlogsy/Widgets/uBlogsyWidgetShowRSSLink")

                @*list of authors*@ @*@Umbraco.RenderMacro("uBlogsyListAuthors")*@
                @Html.CachedPartial("uBlogsy/Widgets/uBlogsyWidgetListAuthors", Model, 0, false, false, new ViewDataDictionary(ViewData) { { "GravatarSize", 20 } })

                @*list of labels*@
                @Html.CachedPartial("uBlogsy/Widgets/uBlogsyWidgetListLabels", Model, 0)

                @*the awesome tag cloud*@
                @Html.CachedPartial("uBlogsy/Widgets/uBlogsyWidgetListTags", Model, 0, false, false, new ViewDataDictionary(ViewData) { { "ShowCount", true } })
                  
                @*list of latest posts*@
                @Html.CachedPartial("uBlogsy/Widgets/uBlogsyWidgetListPosts", Model, 0, false, false, new ViewDataDictionary(ViewData) { { "ItemLimit", 5 } })

                @*list of latest comments - install uCommentsy if you want to use comments *@
                @try{
                    @Html.CachedPartial("uCommentsy/Widgets/uCommentsyWidgetListComments", Model, 0, false, false, new ViewDataDictionary(ViewData) { { "ItemLimit", 5 } })
                }catch (Exception){}
                        
                @*archive*@
                @Html.CachedPartial("uBlogsy/Widgets/uBlogsyWidgetListPostArchive", Model, 6000, false, false, new ViewDataDictionary(ViewData) { { "AltLayout", false } })

                @*list blog roll *@
                @Html.CachedPartial("uBlogsy/Widgets/uBlogsyWidgetListBlogRoll", Model, 6000, false, false, new ViewDataDictionary(ViewData) { { "ItemLimit", 5 } })
            </aside>
        </div>
        
        @Html.CachedPartial("uBlogsy/Global/uBlogsyGlobalFooter", Model, 0)
    </div>
}')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (3, 1057, N'uBlogsyBaseSite', N'@*
    Base Site layout. Make this inherit from your base template
*@

@inherits UmbracoTemplatePage
@{
    Layout = "uBlogsyBase.cshtml";
}

@section uBlogsyMain
{
    <!doctype html public "-//w3c//dtd xhtml 1.0 transitional//en" "http://www.w3.org/tr/xhtml1/dtd/xhtml1-transitional.dtd">
    <html lang="en-GB" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-GB" dir="ltr">
        <head>
            <title>My Site</title>          
            @RenderSection("uBlogsyHead")
        </head>
        <body>
           
            @*top navigation*@
            @Html.CachedPartial("uBlogsy/Global/uBlogsyGlobalHeader", Model, 60, true)
                
            @*top navigation*@
            @Html.CachedPartial("uBlogsy/Global/uBlogsyGlobalNavigation", Model, 60, true)
            
                    
            @RenderSection("uBlogsyMain")
            
        </body>
    </html>
}')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (4, 1058, N'uBlogsyBase', N'@*
    Base layout just to keep things a bit tidy in Umbraco back office.
*@
@inherits UmbracoTemplatePage
@{
    Layout = null;
}

@RenderSection("uBlogsyMain")
	')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (5, 1059, N'uBlogsyLanding', N'@*
    Landing layout.
*@
@inherits UmbracoTemplatePage
@{
    Layout = "uBlogsyBaseBlog.cshtml";
}

@section uBlogsyHead{}


@section uBlogsyLeftCol
{
    <div class="uBlogsy_content_body">
        @if (Request.QueryString.Count == 0)
        {
            @Umbraco.Field("uBlogsyContentBody")
        }
    </div>
  
    @*list posts*@
    <section class="uBlogsy_posts_container">
		@Html.CachedPartial("uBlogsy/Landing/uBlogsyLandingListPosts", Model, 0, false, false, new ViewDataDictionary(ViewData) { { "ItemsPerPage", 20 } })		
    </section>	
}')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (6, 1060, N'uBlogsyPage', N'@*
    Text page layout.
*@
@inherits UmbracoTemplatePage
@{
    Layout = "uBlogsyBaseSite.cshtml";
}

@section uBlogsyHead{
     <link type="text/css" rel="Stylesheet" media="screen" href="/css/uBlogsy.css" />
}

@section uBlogsyMain
{
    <div id="uBlogsy">
        <div id="uBlogsy_main" style="width:80%;padding: 0 5%">
            <h3>
                <a href="@CurrentPage.Url()">@Umbraco.Field("uBlogsyContentTitle")</a>
            </h3>
            <div class="uBlogsy_content_body">
                @Html.Raw(library.RenderMacroContent(Umbraco.Field("uBlogsyContentBody").ToString(), Model.Content.Id))
            </div>
        </div>
    </div>
}')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (7, 1061, N'uBlogsyPost', N'@*
    Blog post layout.
*@
@using uBlogsy.BusinessLogic
@using System.Linq
@using uBlogsy.Common.Extensions
@inherits UmbracoTemplatePage
@{
    Layout = "uBlogsyBaseBlog.cshtml";
    
    var tag = Request.QueryString["tag"];
    var label = Request.QueryString["label"];
    var author = Request.QueryString["author"];
    var searchTerm = Request.QueryString["search"];
    var commenter = Request.QueryString["commenter"];
    int page = int.TryParse(Request.QueryString["page"], out page) ? page : 1;
    var year = Request.QueryString["year"];
    var month = Request.QueryString["month"];
    var day = Request.QueryString["day"];
    var prev = PostService.Instance.GetNextPost(Model.Content, tag, label, author, searchTerm, commenter, year, month, day);
    var next = PostService.Instance.GetPreviousPost(Model.Content, tag, label, author, searchTerm, commenter, year, month, day);
}
	
@section uBlogsyHead{}

@section uBlogsyLeftCol{
    @*render the post*@
    <div class="uBlogsy_post_container">
        @*pagination*@
        <div class="uBlogsy_next_prev">
            @if (prev != null)
            {
                var prevUrl = prev.Url.GetUrlWithQueryString(Request.QueryString, new[] { "action", "success" });
                <a href="@prevUrl" class="uBlogsy_prev uBlogsy_font_style20" title="Older Posts">&lt; @Umbraco.GetDictionaryValue("uBlogsyDicPaginationOlder")</a>
            }
            
            @if (next != null)
            {
                var nextUrl = next.Url.GetUrlWithQueryString(Request.QueryString, new[] { "action", "success" }); 
                <a href="@nextUrl" class="uBlogsy_next uBlogsy_font_style20" title="Newer Posts">@Umbraco.GetDictionaryValue("uBlogsyDicPaginationNewer") &gt;</a>
            }
        </div>
        
        @Html.Partial("uBlogsy/Post/uBlogsyPostShowPost", new ViewDataDictionary(ViewData) { {"Node", Model.Content }, { "UseAddthis", true }, { "GravatarSize", 50 } })
        
       
    </div>

    @*list of related posts*@
    @Html.Partial("uBlogsy/Post/uBlogsyPostListRelatedPosts", new ViewDataDictionary(ViewData) { { "Node", Model.Content }, { "ItemLimit", 5 }, { "MatchCount", 1 }, { "RelatedAlias", string.Empty } })
        

    @*list comments - install uCommentsy, then uncomment this line*@
    @try
    {
        @Html.Partial("uCommentsy/uCommentsyListComments", new ViewDataDictionary(ViewData) { { "ItemLimit", -1 } })
    }
    catch (Exception) { }
    
    @*render contact form - install uCommentsy, then uncomment this line**@
    @try
    {
        @Html.Action("Index", "uCommentsyContactFormSurface", new { CurrentPage })
    }catch(Exception){}
}')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (8, 1062, N'uBlogsyRss', N'@using System.Text
@using uBlogsy.BusinessLogic
@using uBlogsy.Common.Extensions
@using uHelpsy.Extensions
@inherits UmbracoTemplatePage
@{
    Layout = null;
    // get tag, label, or author from query string
    var tag = Request.QueryString["tag"];
    var label = Request.QueryString["label"];
    var author = Request.QueryString["author"];
    var searchTerm = Request.QueryString["search"];
    var commenter = Request.QueryString["commenter"];
    int page = int.TryParse(Request.QueryString["page"], out page) ? page : 1;
    var year = Request.QueryString["year"];
    var month = Request.QueryString["month"];
    var day = Request.QueryString["day"];
    int postCount;

    var posts = PostService.Instance.GetPosts(Model.Content, tag, label, author, searchTerm, commenter, year, month, day, out postCount).ToIPublishedContent(true);

    var lastPubDate = !posts.Any() ? DateTime.Now : DateTime.Parse(posts.First().GetPropertyValue<string>("uBlogsyPostDate"));

    var qs = Request.QueryString.ToString().Replace("+", "%20");

    // get blog url
    string blogUrl = Request.Url.AbsoluteUri
                            .Replace(CurrentPage.Url(), string.Empty)
                            .TrimEnd("/".ToCharArray());

    if (!string.IsNullOrWhiteSpace(qs))
    {
        blogUrl = blogUrl.Replace(qs, string.Empty).Replace("?", string.Empty);
    }

    Response.Clear();
    Response.ContentType = "text/xml";
    Response.ContentEncoding = Encoding.UTF8;
    @Html.Raw("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>")
    <rss version="2.0">
        <channel>
            <title>@(Model.Content.GetPropertyValue("uBlogsyRssTitle"))</title>
            <description>@(Model.Content.GetPropertyValue("uBlogsyRssDescription"))</description>
            <copyright>@(Model.Content.GetPropertyValue("uBlogsyRssCopyright"))</copyright>
            @*<image>@Model.Content.uBlogsyRssImage</image>*@
            @Html.Raw(string.Format("<link>{0}</link>", blogUrl))
            <lastBuildDate>@(lastPubDate.ToString("ddd, dd MMMM yyyy HH:mm:ss"))</lastBuildDate>
            <pubDate>@(lastPubDate.ToString("ddd, dd MMMM yyyy HH:mm:ss"))</pubDate>
            @ListPosts(blogUrl, posts)
         </channel>
    </rss>
}


@helper ListPosts(string blogUrl, IEnumerable<IPublishedContent> posts)
{
    foreach (var p in posts)
    {
        var authors = PostService.Instance.GetAuthors(p, false).Select(x => x.GetPropertyValue<string>("uBlogsyAuthorName")); 
        <item>
            <title>@p.GetPropertyValue("uBlogsyContentTitle")</title>
            <author>@string.Join(", ", authors)</author>
            <comments>@(blogUrl + p.Url())</comments>
            <description>@(uBlogsy.Common.Extensions.StringExtensions.StripHtml(p.GetPropertyValue<string>("uBlogsyContentBody")).Trim())</description>
            @Html.Raw(string.Format("<link>{0}{1}</link>", blogUrl, p.Url()))
            <guid>@(blogUrl + p.Url())</guid>
            <pubDate>@(p.GetPropertyValue("uBlogsyPostDate").ToString().FormatDateTime("ddd, dd MMMM yyyy HH:mm:ss")) </pubDate>
        </item>
    }
}')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (9, 1063, N'uBlogsySiteHome', N'@*
    Sample home layout template. Your home layout does NOT have to inherit from uBlogsyBaseSite.
*@

@inherits UmbracoTemplatePage
@{
    Layout = "uBlogsyBaseSite.cshtml";
}

@section uBlogsyHead
{ 
    <link type="text/css" rel="Stylesheet" media="screen" href="/css/uBlogsy.css" />
}


@section uBlogsyMain
{
    <div id="uBlogsy"> 
        <div id="uBlogsy_main" style="width:80%;padding: 0 5%">
            <h1>
                @Umbraco.Field("uBlogsyContentTitle")
            </h1>
            
            <section>
                @Umbraco.Field("uBlogsyContentBody")
            </section>
            
            @* list posts for home - this only works if the home page is a parent, or sibling of uBlogsyLanding *@
            @Html.CachedPartial("uBlogsy/Widgets/uBlogsyWidgetListPostsForHome", Model, 0, false, true, new ViewDataDictionary(ViewData) { { "ItemLimit", 5 } })		
        </div>
    </div>
}')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (10, 1064, N'uDateFoldersyFolderRedirect', N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage
@{
    Layout = null;
}

@RenderPage("~/Views/Partials/uDateFoldersy/uDateFoldersyFolderRedirect.cshtml")')
SET IDENTITY_INSERT [dbo].[cmsTemplate] OFF
SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] ON 

INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated]) VALUES (18, CAST(0x0000A6A301144A86 AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"UniqueId\":\"29d830c6-15f3-44c7-a775-3100a6cb8210\",\"Id\":1053}]"},{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"UniqueId\":\"d1c774d6-7086-4db5-8cff-61853cbdeefa\",\"Id\":1054}]"},{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"UniqueId\":\"00000455-0000-0000-0000-000000000000\",\"Id\":1055}]"},{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonPayload":null},{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[3]","JsonPayload":null},{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[4]","JsonPayload":null},{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[5]","JsonPayload":null},{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[6]","JsonPayload":null},{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[7]","JsonPayload":null},{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[8]","JsonPayload":null},{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[9]","JsonPayload":null},{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[10]","JsonPayload":null},{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[11]","JsonPayload":null},{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[12]","JsonPayload":null},{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[13]","JsonPayload":null},{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[14]","JsonPayload":null},{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[15]","JsonPayload":null},{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[16]","JsonPayload":null},{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[17]","JsonPayload":null},{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[18]","JsonPayload":null},{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[19]","JsonPayload":null},{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uBlogsyShowSomeLove\",\"Id\":1}]"},{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uBlogsyShowSomeLove\",\"Id\":1}]"},{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1056]","JsonPayload":null},{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1057]","JsonPayload":null},{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1058]","JsonPayload":null},{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1059]","JsonPayload":null},{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1060]","JsonPayload":null},{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1061]","JsonPayload":null},{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1062]","JsonPayload":null},{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1063]","JsonPayload":null},{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1064]","JsonPayload":null},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uBlogsyBaseDocType\",\"Id\":1065,\"PropertyTypeIds\":[38,39,40,41,42],\"Type\":\"IContentType\",\"AliasChanged\":true,\"PropertyRemoved\":false,\"DescendantPayloads\":[{\"Alias\":\"uBlogsyBaseContainer\",\"Id\":1066,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[{\"Alias\":\"uBlogsyContainerAuthor\",\"Id\":1070,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uBlogsyContainerLabel\",\"Id\":1071,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false}],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uBlogsyContainerAuthor\",\"Id\":1070,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uBlogsyContainerLabel\",\"Id\":1071,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uBlogsyBasePage\",\"Id\":1067,\"PropertyTypeIds\":[43,44,45,46,47,48,49],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[{\"Alias\":\"uBlogsyLanding\",\"Id\":1072,\"PropertyTypeIds\":[56,55,53,54,57],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uBlogsyPage\",\"Id\":1073,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uBlogsyPost\",\"Id\":1074,\"PropertyTypeIds\":[59,60,58,62,63,61],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uBlogsySiteRoot\",\"Id\":1076,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false}],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uBlogsyLanding\",\"Id\":1072,\"PropertyTypeIds\":[56,55,53,54,57],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uBlogsyPage\",\"Id\":1073,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uBlogsyPost\",\"Id\":1074,\"PropertyTypeIds\":[59,60,58,62,63,61],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uBlogsySiteRoot\",\"Id\":1076,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uBlogsyAuthor\",\"Id\":1068,\"PropertyTypeIds\":[50,51],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uBlogsyLabel\",\"Id\":1069,\"PropertyTypeIds\":[52],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uBlogsyRSS\",\"Id\":1075,\"PropertyTypeIds\":[65,66,64],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false}],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uBlogsyBaseContainer\",\"Id\":1066,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[{\"Alias\":\"uBlogsyContainerAuthor\",\"Id\":1070,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uBlogsyContainerLabel\",\"Id\":1071,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false}],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uBlogsyBasePage\",\"Id\":1067,\"PropertyTypeIds\":[43,44,45,46,47,48,49],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[{\"Alias\":\"uBlogsyLanding\",\"Id\":1072,\"PropertyTypeIds\":[56,55,53,54,57],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uBlogsyPage\",\"Id\":1073,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uBlogsyPost\",\"Id\":1074,\"PropertyTypeIds\":[59,60,58,62,63,61],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uBlogsySiteRoot\",\"Id\":1076,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false}],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uBlogsyAuthor\",\"Id\":1068,\"PropertyTypeIds\":[50,51],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uBlogsyLabel\",\"Id\":1069,\"PropertyTypeIds\":[52],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uBlogsyContainerAuthor\",\"Id\":1070,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uBlogsyContainerLabel\",\"Id\":1071,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uBlogsyLanding\",\"Id\":1072,\"PropertyTypeIds\":[53,54,55,56,57],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uBlogsyPage\",\"Id\":1073,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uBlogsyPost\",\"Id\":1074,\"PropertyTypeIds\":[58,59,60,61,62,63],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uBlogsyRSS\",\"Id\":1075,\"PropertyTypeIds\":[64,65,66],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uBlogsySiteRoot\",\"Id\":1076,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uDateFoldersyBase\",\"Id\":1077,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":true,\"PropertyRemoved\":false,\"DescendantPayloads\":[{\"Alias\":\"uDateFoldersyFolderDay\",\"Id\":1078,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uDateFoldersyFolderMonth\",\"Id\":1079,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uDateFoldersyFolderYear\",\"Id\":1080,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false}],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uDateFoldersyFolderDay\",\"Id\":1078,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uDateFoldersyFolderMonth\",\"Id\":1079,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uDateFoldersyFolderYear\",\"Id\":1080,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uTagsyBaseDocType\",\"Id\":1081,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":true,\"PropertyRemoved\":false,\"DescendantPayloads\":[{\"Alias\":\"uTagsyTag\",\"Id\":1082,\"PropertyTypeIds\":[67],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false},{\"Alias\":\"uTagsyTagContainer\",\"Id\":1083,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false}],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uTagsyTag\",\"Id\":1082,\"PropertyTypeIds\":[67],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uTagsyTagContainer\",\"Id\":1083,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":true}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uBlogsyContainerAuthor\",\"Id\":1070,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uBlogsyContainerLabel\",\"Id\":1071,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uBlogsyLanding\",\"Id\":1072,\"PropertyTypeIds\":[53,54,55,56,57],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uBlogsySiteRoot\",\"Id\":1076,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uDateFoldersyFolderDay\",\"Id\":1078,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uDateFoldersyFolderMonth\",\"Id\":1079,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uDateFoldersyFolderYear\",\"Id\":1080,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false}]"},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonPayload":"[{\"Alias\":\"uTagsyTagContainer\",\"Id\":1083,\"PropertyTypeIds\":[],\"Type\":\"IContentType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"DescendantPayloads\":[],\"WasDeleted\":false,\"IsNew\":false}]"},{"RefreshType":3,"RefresherId":"55698352-dfc5-4dbe-96bd-a4a0f6f77145","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099]","JsonPayload":null}]', N'ADMIN-ПК//LM/W3SVC/69/ROOT [P6316/D6] 679B9D1968914DFCAAD76DC16FD270E1')
SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] OFF
SET IDENTITY_INSERT [dbo].[umbracoLanguage] ON 

INSERT [dbo].[umbracoLanguage] ([id], [languageISOCode], [languageCultureName]) VALUES (1, N'en-US', N'en-US')
SET IDENTITY_INSERT [dbo].[umbracoLanguage] OFF
SET IDENTITY_INSERT [dbo].[umbracoLog] ON 

INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (1, 0, 1046, CAST(0x0000A67600B5C79C AS DateTime), N'Save', N'Save Template performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (2, 0, 1047, CAST(0x0000A67600B5C7BE AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (3, 0, 1047, CAST(0x0000A67600B6F7FC AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (4, 0, 1047, CAST(0x0000A67600B70E5A AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (5, 0, 1048, CAST(0x0000A67600B77237 AS DateTime), N'Save', N'Save DataTypeDefinition performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (6, 0, 1049, CAST(0x0000A67600B8A201 AS DateTime), N'Save', N'Save DataTypeDefinition performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (7, 0, 1047, CAST(0x0000A67600B917CA AS DateTime), N'Save', N'Save ContentType performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (8, 0, 1046, CAST(0x0000A67600BAA1EC AS DateTime), N'Save', N'Save Template performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (9, 0, 0, CAST(0x0000A67600BB5C8F AS DateTime), N'New', N'Content '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (10, 0, 1050, CAST(0x0000A67600BB9B7B AS DateTime), N'Publish', N'Save and Publish performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (11, 0, 1050, CAST(0x0000A67600BBC81B AS DateTime), N'Save', N'Save Content performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (12, 0, -1, CAST(0x0000A67600BEFFE1 AS DateTime), N'Save', N'Save Stylesheet performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (13, 0, -1, CAST(0x0000A67600BF54AA AS DateTime), N'Save', N'Save Stylesheet performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (14, 0, -1, CAST(0x0000A67600BF948A AS DateTime), N'Save', N'Save Script performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (15, 0, -1, CAST(0x0000A67600BFBDF0 AS DateTime), N'Save', N'Save Script performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (16, 0, 1046, CAST(0x0000A67600C01DF8 AS DateTime), N'Save', N'Save Template performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (17, 0, 1046, CAST(0x0000A67A01820F67 AS DateTime), N'Save', N'Save Template performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (18, 0, 0, CAST(0x0000A67B00008F9F AS DateTime), N'New', N'Media '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (19, 0, 1051, CAST(0x0000A67B00009A51 AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (20, 0, 0, CAST(0x0000A67B0000B0CC AS DateTime), N'New', N'Media '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (21, 0, 0, CAST(0x0000A67B00013E4A AS DateTime), N'New', N'Media '''' was created')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (22, 0, 1052, CAST(0x0000A67B000190FA AS DateTime), N'Save', N'Save Media performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (23, 0, 1, CAST(0x0000A67B00026540 AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (24, 0, -1, CAST(0x0000A6A30145A75F AS DateTime), N'PackagerInstall', N'Package ca8b5571-5555-43c3-824d-52615ecd4ca7 fetched from 65194810-1f85-11dd-bd0b-0800200c9a66')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (25, 0, -1, CAST(0x0000A6A30145AFBC AS DateTime), N'PackagerInstall', N'Package ''uBlogsy'' installed. Package guid: ca8b5571-5555-43c3-824d-52615ecd4ca7')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (26, 0, -1, CAST(0x0000A6A30145B830 AS DateTime), N'Save', N'Save DataTypeDefinition performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (27, 0, -1, CAST(0x0000A6A30145B860 AS DateTime), N'Save', N'Save DataTypeDefinition performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (28, 0, 2, CAST(0x0000A6A30145B872 AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (29, 0, 3, CAST(0x0000A6A30145B875 AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (30, 0, 4, CAST(0x0000A6A30145B875 AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (31, 0, 5, CAST(0x0000A6A30145B878 AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (32, 0, 6, CAST(0x0000A6A30145B878 AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (33, 0, 7, CAST(0x0000A6A30145B878 AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (34, 0, 8, CAST(0x0000A6A30145B87B AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (35, 0, 9, CAST(0x0000A6A30145B87B AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (36, 0, 10, CAST(0x0000A6A30145B87E AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (37, 0, 11, CAST(0x0000A6A30145B87E AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (38, 0, 12, CAST(0x0000A6A30145B881 AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (39, 0, 13, CAST(0x0000A6A30145B881 AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (40, 0, 14, CAST(0x0000A6A30145B881 AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (41, 0, 15, CAST(0x0000A6A30145B884 AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (42, 0, 16, CAST(0x0000A6A30145B884 AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (43, 0, 17, CAST(0x0000A6A30145B884 AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (44, 0, 18, CAST(0x0000A6A30145B887 AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (45, 0, 19, CAST(0x0000A6A30145B887 AS DateTime), N'Save', N'Save DictionaryItem performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (46, 0, -1, CAST(0x0000A6A30145B88D AS DateTime), N'Save', N'Save Macro performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (47, 0, -1, CAST(0x0000A6A30145B890 AS DateTime), N'Save', N'Save Macro performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (48, 0, -1, CAST(0x0000A6A30145B8B7 AS DateTime), N'Save', N'Save Template performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (49, 0, -1, CAST(0x0000A6A30145B99A AS DateTime), N'Save', N'Save ContentTypes performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (50, 0, -1, CAST(0x0000A6A30145B9CA AS DateTime), N'Save', N'Save ContentTypes performed by user')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [Datestamp], [logHeader], [logComment]) VALUES (51, 0, -1, CAST(0x0000A6A30145BAAD AS DateTime), N'Save', N'Bulk Save content performed by user')
SET IDENTITY_INSERT [dbo].[umbracoLog] OFF
SET IDENTITY_INSERT [dbo].[umbracoMigration] ON 

INSERT [dbo].[umbracoMigration] ([id], [name], [createDate], [version]) VALUES (1, N'Umbraco', CAST(0x0000A67600B220B0 AS DateTime), N'7.5.2')
SET IDENTITY_INSERT [dbo].[umbracoMigration] OFF
SET IDENTITY_INSERT [dbo].[umbracoNode] ON 

INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-331, 0, -1, 0, 1, N'-1,-331', 1, N'0af5e610-a310-4b6f-925f-e928d5416af7', N'LOCK: Servers', N'87a9f1ff-b1e4-4a25-babb-465a4a47ec41', CAST(0x0000A67600B21859 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-97, 0, -1, 0, 1, N'-1,-97', 2, N'aa2c52a0-ce87-4e65-a47c-7df09358585d', N'List View - Members', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B21816 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-96, 0, -1, 0, 1, N'-1,-96', 2, N'3a0156c4-3b8c-4803-bdc1-6871faa83fff', N'List View - Media', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B21810 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-95, 0, -1, 0, 1, N'-1,-95', 2, N'c0808dd3-8133-4e4b-8ce8-e2bea84a96a4', N'List View - Content', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B2180A AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-92, 0, -1, 0, 1, N'-1,-92', 35, N'f0bc4bfb-b499-40d6-ba86-058885a5178c', N'Label', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B217BD AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-90, 0, -1, 0, 1, N'-1,-90', 34, N'84c6b441-31df-4ffe-b67e-67d5bc3ae65a', N'Upload', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B217C3 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-89, 0, -1, 0, 1, N'-1,-89', 33, N'c6bac0dd-4ab9-45b1-8e30-e4b619ee5da3', N'Textarea', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B217C8 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-88, 0, -1, 0, 1, N'-1,-88', 32, N'0cc0eba1-9960-42c9-bf9b-60e150b429ae', N'Textstring', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B217CD AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-87, 0, -1, 0, 1, N'-1,-87', 4, N'ca90c950-0aff-4e72-b976-a30b1ac57dad', N'Richtext editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B217D3 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-51, 0, -1, 0, 1, N'-1,-51', 2, N'2e6d3631-066e-44b8-aec4-96f09099b2b5', N'Numeric', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B217D8 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-49, 0, -1, 0, 1, N'-1,-49', 2, N'92897bc6-a5f3-4ffe-ae27-f2e7e33dda49', N'True/false', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B217DE AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-43, 0, -1, 0, 1, N'-1,-43', 2, N'fbaf13a8-4036-41f2-93a3-974f678c312a', N'Checkbox list', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B217E4 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-42, 0, -1, 0, 1, N'-1,-42', 2, N'0b6a45e7-44ba-430d-9da5-4e46060b9e03', N'Dropdown', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B217E9 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-41, 0, -1, 0, 1, N'-1,-41', 2, N'5046194e-4237-453c-a547-15db3a07c4e1', N'Date Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B217EE AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-40, 0, -1, 0, 1, N'-1,-40', 2, N'bb5f57c9-ce2b-4bb9-b697-4caca783a805', N'Radiobox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B217F4 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-39, 0, -1, 0, 1, N'-1,-39', 2, N'f38f0ac7-1d27-439c-9f3f-089cd8825a53', N'Dropdown multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B217F9 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-37, 0, -1, 0, 1, N'-1,-37', 2, N'0225af17-b302-49cb-9176-b9f35cab9c17', N'Approved Color', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B217FF AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-36, 0, -1, 0, 1, N'-1,-36', 2, N'e4d66c0f-b935-4200-81f0-025f7256b89a', N'Date Picker with time', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B21805 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-21, 0, -1, 0, 0, N'-1,-21', 0, N'bf7c7cbc-952f-4518-97a2-69e9c7b33842', N'Recycle Bin', N'cf3d8e34-1c1c-41e9-ae56-878b57b32113', CAST(0x0000A67600B217B8 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-20, 0, -1, 0, 0, N'-1,-20', 0, N'0f582a79-1e41-4cf0-bfa0-76340651891a', N'Recycle Bin', N'01bb7ff2-24dc-4c0c-95a2-c24ef72bbac8', CAST(0x0000A67600B217B2 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-1, 0, -1, 0, 0, N'-1', 0, N'916724a5-173d-4619-b97e-b9de133dd6f5', N'SYSTEM DATA: umbraco master root', N'ea7d8624-4cfe-4578-a871-24aa946bf34d', CAST(0x0000A67600B217A8 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1031, 0, -1, 0, 1, N'-1,1031', 2, N'f38bd2d7-65d0-48e6-95dc-87ce06ec2d3d', N'Folder', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x0000A67600B2181C AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1032, 0, -1, 0, 1, N'-1,1032', 2, N'cc07b313-0843-4aa8-bbda-871c8da728c8', N'Image', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x0000A67600B21822 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1033, 0, -1, 0, 1, N'-1,1033', 2, N'4c52d8ab-54e6-40cd-999c-7a5f24903e4d', N'File', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(0x0000A67600B21827 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1034, 0, -1, 0, 1, N'-1,1034', 2, N'a6857c73-d6e9-480c-b6e6-f15f6ad11125', N'Content Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B2182C AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1035, 0, -1, 0, 1, N'-1,1035', 2, N'93929b9a-93a2-4e2a-b239-d99334440a59', N'Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B21832 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1036, 0, -1, 0, 1, N'-1,1036', 2, N'2b24165f-9782-4aa3-b459-1de4a4d21f60', N'Member Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B21838 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1040, 0, -1, 0, 1, N'-1,1040', 2, N'21e798da-e06e-4eda-a511-ed257f78d4fa', N'Related Links', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B2183D AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1041, 0, -1, 0, 1, N'-1,1041', 2, N'b6b73142-b9c1-4bf8-a16d-e1c23320b549', N'Tags', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B21843 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1043, 0, -1, 0, 1, N'-1,1043', 2, N'1df9f033-e6d4-451f-b8d2-e0cbc50a836f', N'Image Cropper', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B21848 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1044, 0, -1, 0, 1, N'-1,1044', 0, N'd59be02f-1df9-4228-aa1e-01917d806cda', N'Member', N'9b5416fb-e72f-45a9-a07b-5a9a2709ce43', CAST(0x0000A67600B2184D AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1045, 0, -1, 0, 1, N'-1,1045', 2, N'7e3962cc-ce20-4ffc-b661-5897a894ba7e', N'Multiple Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B21853 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1046, 0, -1, NULL, 1, N'-1,1046', 0, N'2c2bee2b-23f7-4d85-85d8-8710246329a1', N'HomePage', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A67600B5C78F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1047, 0, -1, 0, 1, N'-1,1047', 3, N'f320ff31-224a-49fa-a87a-4b8dc00ab286', N'HomePage', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A67600B5C7A6 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1048, 0, -1, 0, 1, N'-1,1048', 24, N'79a90679-0441-45a2-a36d-c272f37c792b', N'HomePage - Page Title - Textbox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B7722E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1049, 0, -1, 0, 1, N'-1,1049', 25, N'c8b588b2-0853-4c47-a099-5f365d3913b0', N'HomePage - Footer - Textbox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A67600B8A1FA AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1050, 0, -1, 0, 1, N'-1,1050', 0, N'eaae9c5a-df1c-4844-ab2e-7c9e23e23c27', N'Homepage', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A67600BB9B53 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1051, 0, -1, 0, 1, N'-1,1051', 0, N'67ea7516-7b42-4092-b3b9-72db300de6f3', N'image', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A67B00009A37 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1052, 0, 1051, 0, 2, N'-1,1051,1052', 0, N'75d63c39-0279-42fe-aeb9-67b7100263cd', N'postel0', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(0x0000A67B000190F2 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1053, 0, -1, 0, 1, N'-1,1053', 26, N'29d830c6-15f3-44c7-a775-3100a6cb8210', N'[uBlogsy] Author Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A6A30145B81E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1054, 0, -1, 0, 1, N'-1,1054', 27, N'd1c774d6-7086-4db5-8cff-61853cbdeefa', N'[uBlogsy] Label Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A6A30145B82A AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1055, 0, -1, 0, 1, N'-1,1055', 28, N'00000455-0000-0000-0000-000000000000', N'uTagsy Tags', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(0x0000A6A30145B82D AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1056, 0, -1, NULL, 1, N'-1,1056', 0, N'95da85c0-4c1b-476c-8da9-a92cd288fa70', N'[uBlogsy] [Base] Blog', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A6A30145B896 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1057, 0, -1, NULL, 1, N'-1,1057', 0, N'fe5c74df-fd99-46e5-8292-281cd8674acd', N'[uBlogsy] [Base] Site', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A6A30145B89F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1058, 0, -1, NULL, 1, N'-1,1058', 0, N'eb2f9fc0-64ee-4a2c-82ba-3c19b3ce25a3', N'[uBlogsy] Base', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A6A30145B8A2 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1059, 0, -1, NULL, 1, N'-1,1059', 0, N'689740e2-1d0a-43bf-ae14-bdb552d03e8f', N'[uBlogsy] Landing', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A6A30145B8A5 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1060, 0, -1, NULL, 1, N'-1,1060', 0, N'e88d7b78-ea04-4751-b487-a50320e20606', N'[uBlogsy] Page', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A6A30145B8A8 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1061, 0, -1, NULL, 1, N'-1,1061', 0, N'629ca9a7-6445-4ffb-a036-81bacd9ed0dd', N'[uBlogsy] Post', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A6A30145B8AB AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1062, 0, -1, NULL, 1, N'-1,1062', 0, N'b3b08e38-8975-4911-a24b-90a318aa218c', N'[uBlogsy] Rss', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A6A30145B8AB AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1063, 0, -1, NULL, 1, N'-1,1063', 0, N'1cf6a218-8186-4ad6-a9b5-62c343eaada9', N'[uBlogsy] Site Home', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A6A30145B8AE AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1064, 0, -1, NULL, 1, N'-1,1064', 0, N'2b14f8ba-a9b4-41e9-bbf0-ab18b605c737', N'[uDatefoldersy] Folder Redirect', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(0x0000A6A30145B8B1 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1065, 0, -1, 0, 1, N'-1,1065', 1, N'e828a25b-c26f-4030-8360-b9c355784484', N'[uBlogsy] [Base]', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B90B AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1066, 0, 1065, 0, 2, N'-1,1065,1066', 0, N'66cab6f0-3557-4228-aa49-163d1002052b', N'[uBlogsy] [Base] Container', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B914 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1067, 0, 1065, 0, 2, N'-1,1065,1067', 1, N'418fb7b0-ba3e-478a-bef2-47a2d053cec9', N'[uBlogsy] [Base] Page', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B914 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1068, 0, 1065, 0, 2, N'-1,1065,1068', 2, N'3a21c5e2-8d41-4b1c-bb4e-248c1eb724c5', N'[uBlogsy] Author', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B91A AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1069, 0, 1065, 0, 2, N'-1,1065,1069', 3, N'941881bf-1426-42e1-afca-0f1866b377e8', N'[uBlogsy] Category/Label', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B91D AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1070, 0, 1066, 0, 3, N'-1,1065,1066,1070', 0, N'd63a2f9b-d7fa-44cc-a5c7-abfd16d099bf', N'[uBlogsy] Container - Author', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B920 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1071, 0, 1066, 0, 3, N'-1,1065,1066,1071', 1, N'f3455165-530b-4e52-be6f-13bc6fd7bd3a', N'[uBlogsy] Container - Label', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B920 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1072, 0, 1067, 0, 3, N'-1,1065,1067,1072', 0, N'cb2c4316-f76d-4e53-8d7b-5fb08d3a35db', N'[uBlogsy] Landing', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B923 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1073, 0, 1067, 0, 3, N'-1,1065,1067,1073', 1, N'57b16ca8-9726-4f38-bdab-724bdae29a9b', N'[uBlogsy] Page', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B926 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1074, 0, 1067, 0, 3, N'-1,1065,1067,1074', 2, N'4dc6673a-657b-44c1-835b-779e21000cfb', N'[uBlogsy] Post', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B926 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1075, 0, 1065, 0, 2, N'-1,1065,1075', 4, N'd4abb88d-5fdf-40ba-b882-dd819982287f', N'[uBlogsy] RSS', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B92C AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1076, 0, 1067, 0, 3, N'-1,1065,1067,1076', 3, N'0ea97338-6b3f-4ac5-9ed9-c6f66dd25423', N'[uBlogsy] Site Root', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B92C AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1077, 0, -1, 0, 1, N'-1,1077', 2, N'fa76b4ba-bc13-439c-a68b-2bdde0204ebb', N'[uDateFoldersy] [Base]', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B92F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1078, 0, 1077, 0, 2, N'-1,1077,1078', 0, N'4234574c-7272-4a17-acd7-a13e3d576860', N'[uDateFoldersy] Folder - Day', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B92F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1079, 0, 1077, 0, 2, N'-1,1077,1079', 1, N'10e5c6a4-a291-467e-b9bc-283244e651e1', N'[uDateFoldersy] Folder - Month', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B932 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1080, 0, 1077, 0, 2, N'-1,1077,1080', 2, N'80acc8c4-e315-4c10-861a-fa8700a3af2f', N'[uDateFoldersy] Folder - Year', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B932 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1081, 0, -1, 0, 1, N'-1,1081', 3, N'130ebf78-4219-40cc-ab54-660d7f9f00fb', N'[uTagsy] [Base]', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B935 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1082, 0, 1081, 0, 2, N'-1,1081,1082', 0, N'11e51f7d-b22a-45f3-ba45-cccf0105571c', N'[uTagsy] Tag', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B935 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1083, 0, 1081, 0, 2, N'-1,1081,1083', 1, N'8a7dcfb3-87ef-42f3-b62a-94007e60e588', N'[uTagsy] Tag Container', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(0x0000A6A30145B938 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1084, 0, -1, 0, 1, N'-1,1084', 1, N'69fba108-48f8-4d01-ae3b-12cb84a9c4cf', N'Site Root', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A6A30145B9D6 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1085, 0, 1084, 0, 2, N'-1,1084,1085', 0, N'ab1c7b63-1830-4a9c-b641-43234645852b', N'Blog', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A6A30145BA07 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1086, 0, 1085, 0, 3, N'-1,1084,1085,1086', 0, N'641ebe5d-b73d-481a-a5d0-c4c58674e009', N'Authors', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A6A30145BA0E AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1087, 0, 1086, 0, 4, N'-1,1084,1085,1086,1087', 0, N'b04df871-e559-421a-9ae2-91ceef47b03e', N'Author 1', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A6A30145BA12 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1088, 0, 1085, 0, 3, N'-1,1084,1085,1088', 1, N'd14cb4e0-c532-48aa-868d-47c0adffa6b7', N'Categories (optional)', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A6A30145BA16 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1089, 0, 1088, 0, 4, N'-1,1084,1085,1088,1089', 0, N'527891b0-6517-4e1c-a97a-192b49241617', N'Category 1', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A6A30145BA1A AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1090, 0, 1085, 0, 3, N'-1,1084,1085,1090', 2, N'1d3c0d18-aac9-4983-b7be-937aff45cd1e', N'Tags', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A6A30145BA22 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1091, 0, 1090, 0, 4, N'-1,1084,1085,1090,1091', 0, N'09eef7b6-cb83-4533-a6b2-8f257dd03ed0', N'Some Tag', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A6A30145BA25 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1092, 0, 1090, 0, 4, N'-1,1084,1085,1090,1092', 1, N'1065df42-2bc5-4e47-8b7b-7a7a22f210d4', N'another thing', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A6A30145BA28 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1093, 0, 1085, 0, 3, N'-1,1084,1085,1093', 3, N'10a078da-458d-462d-86e2-6b51ea5c5a88', N'RSS', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A6A30145BA2B AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1094, 0, 1085, 0, 3, N'-1,1084,1085,1094', 4, N'12a1b971-7bd4-4969-b21f-5714a805d258', N'2016', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A6A30145BA2F AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1095, 0, 1094, 0, 4, N'-1,1084,1085,1094,1095', 0, N'5b3c453d-4cee-4433-bc92-fb3cb3c1685e', N'June', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A6A30145BA32 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1096, 0, 1095, 0, 5, N'-1,1084,1085,1094,1095,1096', 0, N'fbd5007d-42ee-4ab6-a30b-4a18d45370b6', N'19', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A6A30145BA36 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1097, 0, 1096, 0, 6, N'-1,1084,1085,1094,1095,1096,1097', 0, N'cfe11700-082d-4865-aba7-d52656725cb6', N'test', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A6A30145BA3C AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1098, 0, 1084, 0, 2, N'-1,1084,1098', 1, N'b33cd250-44ed-4ca6-9e3c-559b7723bcad', N'About', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A6A30145BA44 AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1099, 0, 1084, 0, 2, N'-1,1084,1099', 2, N'e477b52e-c2c6-43f9-8f77-4e0b761b0e01', N'Contact', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(0x0000A6A30145BA4C AS DateTime))
SET IDENTITY_INSERT [dbo].[umbracoNode] OFF
SET IDENTITY_INSERT [dbo].[umbracoRelationType] ON 

INSERT [dbo].[umbracoRelationType] ([id], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (1, 1, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Document On Copy', N'relateDocumentOnCopy')
INSERT [dbo].[umbracoRelationType] ([id], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (2, 0, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Parent Document On Delete', N'relateParentDocumentOnDelete')
SET IDENTITY_INSERT [dbo].[umbracoRelationType] OFF
SET IDENTITY_INSERT [dbo].[umbracoServer] ON 

INSERT [dbo].[umbracoServer] ([id], [address], [computerName], [registeredDate], [lastNotifiedDate], [isActive], [isMaster]) VALUES (1, N'http://localhost:1975/umbraco', N'ADMIN-ПК//LM/W3SVC/69/ROOT', CAST(0x0000A67600B23B3D AS DateTime), CAST(0x0000A6A3016A3736 AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[umbracoServer] OFF
SET IDENTITY_INSERT [dbo].[umbracoUser] ON 

INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userType], [startStructureID], [startMediaID], [userName], [userLogin], [userPassword], [userEmail], [userLanguage], [securityStampToken], [failedLoginAttempts], [lastLockoutDate], [lastPasswordChangeDate], [lastLoginDate]) VALUES (0, 0, 0, 1, -1, -1, N'zhdan88vadim@gmail.com', N'zhdan88vadim@gmail.com', N'bnWxWyFdCueCcKrqniYK9iAS+7E=', N'zhdan88vadim@gmail.com', N'en-GB', N'db19c101-e5d9-4f3c-8a30-db7ce69592eb', 0, NULL, CAST(0x0000A67600B221C4 AS DateTime), CAST(0x0000A6A30142C043 AS DateTime))
SET IDENTITY_INSERT [dbo].[umbracoUser] OFF
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'content')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'developer')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'forms')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'media')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'member')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'settings')
INSERT [dbo].[umbracoUser2app] ([user], [app]) VALUES (0, N'users')
SET IDENTITY_INSERT [dbo].[umbracoUserType] ON 

INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (1, N'admin', N'Administrators', N'CADMOSKTPIURZ:5F7')
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (2, N'writer', N'Writer', N'CAH:F')
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (3, N'editor', N'Editors', N'CADMOSKTPUZ:5F')
INSERT [dbo].[umbracoUserType] ([id], [userTypeAlias], [userTypeName], [userTypeDefaultPermissions]) VALUES (4, N'translator', N'Translator', N'AF')
SET IDENTITY_INSERT [dbo].[umbracoUserType] OFF
/****** Object:  Index [IX_cmsContent]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsContent] ON [dbo].[cmsContent]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsContentType]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsContentType] ON [dbo].[cmsContentType]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_cmsContentType_icon]    Script Date: 18.10.2016 21:58:48 ******/
CREATE NONCLUSTERED INDEX [IX_cmsContentType_icon] ON [dbo].[cmsContentType]
(
	[icon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsContentVersion_ContentId]    Script Date: 18.10.2016 21:58:48 ******/
CREATE NONCLUSTERED INDEX [IX_cmsContentVersion_ContentId] ON [dbo].[cmsContentVersion]
(
	[ContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsContentVersion_VersionId]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsContentVersion_VersionId] ON [dbo].[cmsContentVersion]
(
	[VersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsDataType_nodeId]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsDataType_nodeId] ON [dbo].[cmsDataType]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsDictionary_id]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsDictionary_id] ON [dbo].[cmsDictionary]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsDocument]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsDocument] ON [dbo].[cmsDocument]
(
	[nodeId] ASC,
	[versionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsDocument_newest]    Script Date: 18.10.2016 21:58:48 ******/
CREATE NONCLUSTERED INDEX [IX_cmsDocument_newest] ON [dbo].[cmsDocument]
(
	[newest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsDocument_published]    Script Date: 18.10.2016 21:58:48 ******/
CREATE NONCLUSTERED INDEX [IX_cmsDocument_published] ON [dbo].[cmsDocument]
(
	[published] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_cmsMacroPropertyAlias]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsMacroPropertyAlias] ON [dbo].[cmsMacro]
(
	[macroAlias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_cmsMacroProperty_Alias]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsMacroProperty_Alias] ON [dbo].[cmsMacroProperty]
(
	[macro] ASC,
	[macroPropertyAlias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsPropertyData]    Script Date: 18.10.2016 21:58:48 ******/
CREATE NONCLUSTERED INDEX [IX_cmsPropertyData] ON [dbo].[cmsPropertyData]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsPropertyData_1]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsPropertyData_1] ON [dbo].[cmsPropertyData]
(
	[contentNodeId] ASC,
	[versionId] ASC,
	[propertytypeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsPropertyData_2]    Script Date: 18.10.2016 21:58:48 ******/
CREATE NONCLUSTERED INDEX [IX_cmsPropertyData_2] ON [dbo].[cmsPropertyData]
(
	[versionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsPropertyData_3]    Script Date: 18.10.2016 21:58:48 ******/
CREATE NONCLUSTERED INDEX [IX_cmsPropertyData_3] ON [dbo].[cmsPropertyData]
(
	[propertytypeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsPropertyTypeUniqueID]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsPropertyTypeUniqueID] ON [dbo].[cmsPropertyType]
(
	[UniqueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsPropertyTypeGroupUniqueID]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsPropertyTypeGroupUniqueID] ON [dbo].[cmsPropertyTypeGroup]
(
	[uniqueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_cmsTags]    Script Date: 18.10.2016 21:58:48 ******/
CREATE NONCLUSTERED INDEX [IX_cmsTags] ON [dbo].[cmsTags]
(
	[tag] ASC,
	[group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_cmsTaskType_alias]    Script Date: 18.10.2016 21:58:48 ******/
CREATE NONCLUSTERED INDEX [IX_cmsTaskType_alias] ON [dbo].[cmsTaskType]
(
	[alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsTemplate_nodeId]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsTemplate_nodeId] ON [dbo].[cmsTemplate]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoAccess_nodeId]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoAccess_nodeId] ON [dbo].[umbracoAccess]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_umbracoAccessRule]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoAccessRule] ON [dbo].[umbracoAccessRule]
(
	[ruleValue] ASC,
	[ruleType] ASC,
	[accessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_umbracoDeployChecksum]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoDeployChecksum] ON [dbo].[umbracoDeployChecksum]
(
	[entityType] ASC,
	[entityGuid] ASC,
	[entityPath] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_umbracoLanguage_languageISOCode]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoLanguage_languageISOCode] ON [dbo].[umbracoLanguage]
(
	[languageISOCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoLog]    Script Date: 18.10.2016 21:58:48 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoLog] ON [dbo].[umbracoLog]
(
	[NodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_umbracoMigration]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoMigration] ON [dbo].[umbracoMigration]
(
	[name] ASC,
	[version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNodeObjectType]    Script Date: 18.10.2016 21:58:48 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNodeObjectType] ON [dbo].[umbracoNode]
(
	[nodeObjectType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNodeParentId]    Script Date: 18.10.2016 21:58:48 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNodeParentId] ON [dbo].[umbracoNode]
(
	[parentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNodeTrashed]    Script Date: 18.10.2016 21:58:48 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNodeTrashed] ON [dbo].[umbracoNode]
(
	[trashed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNodeUniqueID]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoNodeUniqueID] ON [dbo].[umbracoNode]
(
	[uniqueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_umbracoRedirectUrl]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRedirectUrl] ON [dbo].[umbracoRedirectUrl]
(
	[urlHash] ASC,
	[contentKey] ASC,
	[createDateUtc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_computerName]    Script Date: 18.10.2016 21:58:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_computerName] ON [dbo].[umbracoServer]
(
	[computerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoServer_isActive]    Script Date: 18.10.2016 21:58:48 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoServer_isActive] ON [dbo].[umbracoServer]
(
	[isActive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_umbracoUser_userLogin]    Script Date: 18.10.2016 21:58:48 ******/
CREATE NONCLUSTERED INDEX [IX_umbracoUser_userLogin] ON [dbo].[umbracoUser]
(
	[userLogin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_thumbnail]  DEFAULT ('folder.png') FOR [thumbnail]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_isContainer]  DEFAULT ('0') FOR [isContainer]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_allowAtRoot]  DEFAULT ('0') FOR [allowAtRoot]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] ADD  CONSTRAINT [df_cmsContentTypeAllowedContentType_sortOrder]  DEFAULT ('0') FOR [SortOrder]
GO
ALTER TABLE [dbo].[cmsContentVersion] ADD  CONSTRAINT [DF_cmsContentVersion_VersionDate]  DEFAULT (getdate()) FOR [VersionDate]
GO
ALTER TABLE [dbo].[cmsDocument] ADD  CONSTRAINT [DF_cmsDocument_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[cmsDocument] ADD  CONSTRAINT [DF_cmsDocument_newest]  DEFAULT ('0') FOR [newest]
GO
ALTER TABLE [dbo].[cmsDocumentType] ADD  CONSTRAINT [DF_cmsDocumentType_IsDefault]  DEFAULT ('0') FOR [IsDefault]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroUseInEditor]  DEFAULT ('0') FOR [macroUseInEditor]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroRefreshRate]  DEFAULT ('0') FOR [macroRefreshRate]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCacheByPage]  DEFAULT ('1') FOR [macroCacheByPage]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCachePersonalized]  DEFAULT ('0') FOR [macroCachePersonalized]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroDontRender]  DEFAULT ('0') FOR [macroDontRender]
GO
ALTER TABLE [dbo].[cmsMacroProperty] ADD  CONSTRAINT [DF_cmsMacroProperty_macroPropertySortOrder]  DEFAULT ('0') FOR [macroPropertySortOrder]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Email]  DEFAULT ('''') FOR [Email]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_LoginName]  DEFAULT ('''') FOR [LoginName]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Password]  DEFAULT ('''') FOR [Password]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_memberCanEdit]  DEFAULT ('0') FOR [memberCanEdit]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_viewOnProfile]  DEFAULT ('0') FOR [viewOnProfile]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_sortOrder]  DEFAULT ('0') FOR [sortOrder]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_mandatory]  DEFAULT ('0') FOR [mandatory]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_UniqueID]  DEFAULT (newid()) FOR [UniqueID]
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] ADD  CONSTRAINT [DF_cmsPropertyTypeGroup_uniqueID]  DEFAULT (newid()) FOR [uniqueID]
GO
ALTER TABLE [dbo].[cmsTask] ADD  CONSTRAINT [DF_cmsTask_closed]  DEFAULT ('0') FOR [closed]
GO
ALTER TABLE [dbo].[cmsTask] ADD  CONSTRAINT [DF_cmsTask_DateTime]  DEFAULT (getdate()) FOR [DateTime]
GO
ALTER TABLE [dbo].[umbracoAccess] ADD  CONSTRAINT [DF_umbracoAccess_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoAccess] ADD  CONSTRAINT [DF_umbracoAccess_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoAccessRule] ADD  CONSTRAINT [DF_umbracoAccessRule_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoAccessRule] ADD  CONSTRAINT [DF_umbracoAccessRule_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoExternalLogin] ADD  CONSTRAINT [DF_umbracoExternalLogin_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoLog] ADD  CONSTRAINT [DF_umbracoLog_Datestamp]  DEFAULT (getdate()) FOR [Datestamp]
GO
ALTER TABLE [dbo].[umbracoMigration] ADD  CONSTRAINT [DF_umbracoMigration_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_trashed]  DEFAULT ('0') FOR [trashed]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_uniqueID]  DEFAULT (newid()) FOR [uniqueID]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoRelation] ADD  CONSTRAINT [DF_umbracoRelation_datetime]  DEFAULT (getdate()) FOR [datetime]
GO
ALTER TABLE [dbo].[umbracoServer] ADD  CONSTRAINT [DF_umbracoServer_registeredDate]  DEFAULT (getdate()) FOR [registeredDate]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userDisabled]  DEFAULT ('0') FOR [userDisabled]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userNoConsole]  DEFAULT ('0') FOR [userNoConsole]
GO
ALTER TABLE [dbo].[cmsContent]  WITH CHECK ADD  CONSTRAINT [FK_cmsContent_cmsContentType_nodeId] FOREIGN KEY([contentType])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContent] CHECK CONSTRAINT [FK_cmsContent_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsContent]  WITH CHECK ADD  CONSTRAINT [FK_cmsContent_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContent] CHECK CONSTRAINT [FK_cmsContent_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType] CHECK CONSTRAINT [FK_cmsContentType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child] FOREIGN KEY([childContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child]
GO
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent] FOREIGN KEY([parentContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType] FOREIGN KEY([Id])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1] FOREIGN KEY([AllowedId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1]
GO
ALTER TABLE [dbo].[cmsContentVersion]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentVersion_cmsContent_nodeId] FOREIGN KEY([ContentId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentVersion] CHECK CONSTRAINT [FK_cmsContentVersion_cmsContent_nodeId]
GO
ALTER TABLE [dbo].[cmsContentXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentXml_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentXml] CHECK CONSTRAINT [FK_cmsContentXml_cmsContent_nodeId]
GO
ALTER TABLE [dbo].[cmsDataType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDataType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDataType] CHECK CONSTRAINT [FK_cmsDataType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsDataTypePreValues]  WITH CHECK ADD  CONSTRAINT [FK_cmsDataTypePreValues_cmsDataType_nodeId] FOREIGN KEY([datatypeNodeId])
REFERENCES [dbo].[cmsDataType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDataTypePreValues] CHECK CONSTRAINT [FK_cmsDataTypePreValues_cmsDataType_nodeId]
GO
ALTER TABLE [dbo].[cmsDictionary]  WITH CHECK ADD  CONSTRAINT [FK_cmsDictionary_cmsDictionary_id] FOREIGN KEY([parent])
REFERENCES [dbo].[cmsDictionary] ([id])
GO
ALTER TABLE [dbo].[cmsDictionary] CHECK CONSTRAINT [FK_cmsDictionary_cmsDictionary_id]
GO
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_cmsContent_nodeId]
GO
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_cmsTemplate_nodeId] FOREIGN KEY([templateId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_cmsTemplate_nodeId]
GO
ALTER TABLE [dbo].[cmsDocument]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocument_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDocument] CHECK CONSTRAINT [FK_cmsDocument_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId] FOREIGN KEY([templateNodeId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_umbracoNode_id] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsLanguageText]  WITH CHECK ADD  CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id] FOREIGN KEY([UniqueId])
REFERENCES [dbo].[cmsDictionary] ([id])
GO
ALTER TABLE [dbo].[cmsLanguageText] CHECK CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id]
GO
ALTER TABLE [dbo].[cmsLanguageText]  WITH CHECK ADD  CONSTRAINT [FK_cmsLanguageText_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[cmsLanguageText] CHECK CONSTRAINT [FK_cmsLanguageText_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[cmsMacroProperty]  WITH CHECK ADD  CONSTRAINT [FK_cmsMacroProperty_cmsMacro_id] FOREIGN KEY([macro])
REFERENCES [dbo].[cmsMacro] ([id])
GO
ALTER TABLE [dbo].[cmsMacroProperty] CHECK CONSTRAINT [FK_cmsMacroProperty_cmsMacro_id]
GO
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_cmsContent_nodeId]
GO
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId] FOREIGN KEY([Member])
REFERENCES [dbo].[cmsMember] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId]
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id] FOREIGN KEY([MemberGroup])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId] FOREIGN KEY([NodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_umbracoNode_id] FOREIGN KEY([NodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsPreviewXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsPreviewXml_cmsContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPreviewXml] CHECK CONSTRAINT [FK_cmsPreviewXml_cmsContent_nodeId]
GO
ALTER TABLE [dbo].[cmsPreviewXml]  WITH CHECK ADD  CONSTRAINT [FK_cmsPreviewXml_cmsContentVersion_VersionId] FOREIGN KEY([versionId])
REFERENCES [dbo].[cmsContentVersion] ([VersionId])
GO
ALTER TABLE [dbo].[cmsPreviewXml] CHECK CONSTRAINT [FK_cmsPreviewXml_cmsContentVersion_VersionId]
GO
ALTER TABLE [dbo].[cmsPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyData_cmsPropertyType_id] FOREIGN KEY([propertytypeid])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyData] CHECK CONSTRAINT [FK_cmsPropertyData_cmsPropertyType_id]
GO
ALTER TABLE [dbo].[cmsPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyData_umbracoNode_id] FOREIGN KEY([contentNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyData] CHECK CONSTRAINT [FK_cmsPropertyData_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId] FOREIGN KEY([contentTypeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsDataType_nodeId] FOREIGN KEY([dataTypeId])
REFERENCES [dbo].[cmsDataType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsDataType_nodeId]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id] FOREIGN KEY([propertyTypeGroupId])
REFERENCES [dbo].[cmsPropertyTypeGroup] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id]
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId] FOREIGN KEY([contenttypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] CHECK CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsContent] FOREIGN KEY([nodeId])
REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsContent]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsPropertyType] FOREIGN KEY([propertyTypeId])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsPropertyType]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsTags_id] FOREIGN KEY([tagId])
REFERENCES [dbo].[cmsTags] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsTags_id]
GO
ALTER TABLE [dbo].[cmsTags]  WITH CHECK ADD  CONSTRAINT [FK_cmsTags_cmsTags] FOREIGN KEY([ParentId])
REFERENCES [dbo].[cmsTags] ([id])
GO
ALTER TABLE [dbo].[cmsTags] CHECK CONSTRAINT [FK_cmsTags_cmsTags]
GO
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_cmsTaskType_id] FOREIGN KEY([taskTypeId])
REFERENCES [dbo].[cmsTaskType] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_cmsTaskType_id]
GO
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoUser] FOREIGN KEY([parentUserId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoUser]
GO
ALTER TABLE [dbo].[cmsTask]  WITH CHECK ADD  CONSTRAINT [FK_cmsTask_umbracoUser1] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[cmsTask] CHECK CONSTRAINT [FK_cmsTask_umbracoUser1]
GO
ALTER TABLE [dbo].[cmsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_cmsTemplate_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTemplate] CHECK CONSTRAINT [FK_cmsTemplate_umbracoNode]
GO
ALTER TABLE [dbo].[umbracoAccess]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccess_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoAccess] CHECK CONSTRAINT [FK_umbracoAccess_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoAccess]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccess_umbracoNode_id1] FOREIGN KEY([loginNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoAccess] CHECK CONSTRAINT [FK_umbracoAccess_umbracoNode_id1]
GO
ALTER TABLE [dbo].[umbracoAccess]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccess_umbracoNode_id2] FOREIGN KEY([noAccessNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoAccess] CHECK CONSTRAINT [FK_umbracoAccess_umbracoNode_id2]
GO
ALTER TABLE [dbo].[umbracoAccessRule]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccessRule_umbracoAccess_id] FOREIGN KEY([accessId])
REFERENCES [dbo].[umbracoAccess] ([id])
GO
ALTER TABLE [dbo].[umbracoAccessRule] CHECK CONSTRAINT [FK_umbracoAccessRule_umbracoAccess_id]
GO
ALTER TABLE [dbo].[umbracoDeployDependency]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDeployDependency_umbracoDeployChecksum_id1] FOREIGN KEY([sourceId])
REFERENCES [dbo].[umbracoDeployChecksum] ([id])
GO
ALTER TABLE [dbo].[umbracoDeployDependency] CHECK CONSTRAINT [FK_umbracoDeployDependency_umbracoDeployChecksum_id1]
GO
ALTER TABLE [dbo].[umbracoDeployDependency]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDeployDependency_umbracoDeployChecksum_id2] FOREIGN KEY([targetId])
REFERENCES [dbo].[umbracoDeployChecksum] ([id])
GO
ALTER TABLE [dbo].[umbracoDeployDependency] CHECK CONSTRAINT [FK_umbracoDeployDependency_umbracoDeployChecksum_id2]
GO
ALTER TABLE [dbo].[umbracoDomains]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDomains_umbracoNode_id] FOREIGN KEY([domainRootStructureID])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDomains] CHECK CONSTRAINT [FK_umbracoDomains_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoNode_umbracoNode_id] FOREIGN KEY([parentID])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoNode] CHECK CONSTRAINT [FK_umbracoNode_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoRedirectUrl]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRedirectUrl_umbracoNode_uniqueID] FOREIGN KEY([contentKey])
REFERENCES [dbo].[umbracoNode] ([uniqueID])
GO
ALTER TABLE [dbo].[umbracoRedirectUrl] CHECK CONSTRAINT [FK_umbracoRedirectUrl_umbracoNode_uniqueID]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode] FOREIGN KEY([parentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode1] FOREIGN KEY([childId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode1]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id] FOREIGN KEY([relType])
REFERENCES [dbo].[umbracoRelationType] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id]
GO
ALTER TABLE [dbo].[umbracoUser]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser_umbracoUserType_id] FOREIGN KEY([userType])
REFERENCES [dbo].[umbracoUserType] ([id])
GO
ALTER TABLE [dbo].[umbracoUser] CHECK CONSTRAINT [FK_umbracoUser_umbracoUserType_id]
GO
ALTER TABLE [dbo].[umbracoUser2app]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2app_umbracoUser_id] FOREIGN KEY([user])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2app] CHECK CONSTRAINT [FK_umbracoUser2app_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUser2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodePermission_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodePermission] CHECK CONSTRAINT [FK_umbracoUser2NodePermission_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUser2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodePermission_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodePermission] CHECK CONSTRAINT [FK_umbracoUser2NodePermission_umbracoUser_id]
GO
