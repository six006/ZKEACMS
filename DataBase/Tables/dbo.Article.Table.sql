﻿SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Summary] [nvarchar](255) NULL,
	[MetaKeyWords] [nvarchar](255) NULL,
	[MetaDescription] [nvarchar](255) NULL,
	[Counter] [int] NULL,
	[ArticleTypeID] [int] NULL,
	[Description] [nvarchar](255) NULL,
	[ArticleContent] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[ImageThumbUrl] [nvarchar](255) NULL,
	[ImageUrl] [nvarchar](255) NULL,
	[IsPublish] [bit] NOT NULL,
	[PublishDate] [datetime] NULL,
	[Url] [nvarchar](100) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreatebyName] [nvarchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[LastUpdateBy] [nvarchar](50) NULL,
	[LastUpdateByName] [nvarchar](100) NULL,
	[LastUpdateDate] [datetime] NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_ArticleCategory] FOREIGN KEY([ArticleTypeID])
REFERENCES [dbo].[ArticleType] ([ID])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_ArticleCategory]
GO
