USE [Food Bay]
GO
/****** Object:  Table [dbo].[MST_CITY]    Script Date: 04/19/2015 15:43:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MST_CITY](
	[CityID] [bigint] IDENTITY(1000,1) NOT NULL,
	[CityName] [varchar](max) NOT NULL,
	[CreatedDateTime] [smalldatetime] NULL,
	[UpdatedDateTime] [smalldatetime] NULL,
 CONSTRAINT [PK_MST_CITY] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MST_CITY] ON
INSERT [dbo].[MST_CITY] ([CityID], [CityName], [CreatedDateTime], [UpdatedDateTime]) VALUES (1000, N'Chennai', CAST(0xA47F033E AS SmallDateTime), NULL)
INSERT [dbo].[MST_CITY] ([CityID], [CityName], [CreatedDateTime], [UpdatedDateTime]) VALUES (1001, N'Banglore', CAST(0xA47F033E AS SmallDateTime), NULL)
INSERT [dbo].[MST_CITY] ([CityID], [CityName], [CreatedDateTime], [UpdatedDateTime]) VALUES (1002, N'Gurgaon', CAST(0xA47F033E AS SmallDateTime), NULL)
INSERT [dbo].[MST_CITY] ([CityID], [CityName], [CreatedDateTime], [UpdatedDateTime]) VALUES (1003, N'Mumbai', CAST(0xA47F033E AS SmallDateTime), NULL)
INSERT [dbo].[MST_CITY] ([CityID], [CityName], [CreatedDateTime], [UpdatedDateTime]) VALUES (1004, N'Kolkata', CAST(0xA47F033E AS SmallDateTime), NULL)
INSERT [dbo].[MST_CITY] ([CityID], [CityName], [CreatedDateTime], [UpdatedDateTime]) VALUES (1005, N'Pune', CAST(0xA47F033E AS SmallDateTime), NULL)
INSERT [dbo].[MST_CITY] ([CityID], [CityName], [CreatedDateTime], [UpdatedDateTime]) VALUES (1006, N'Mangalore', CAST(0xA47F033F AS SmallDateTime), NULL)
INSERT [dbo].[MST_CITY] ([CityID], [CityName], [CreatedDateTime], [UpdatedDateTime]) VALUES (1007, N'Cochin', CAST(0xA47F033F AS SmallDateTime), NULL)
INSERT [dbo].[MST_CITY] ([CityID], [CityName], [CreatedDateTime], [UpdatedDateTime]) VALUES (1008, N'Hydrebad', CAST(0xA47F033F AS SmallDateTime), NULL)
INSERT [dbo].[MST_CITY] ([CityID], [CityName], [CreatedDateTime], [UpdatedDateTime]) VALUES (1009, N'Coimbatore', CAST(0xA47F0340 AS SmallDateTime), NULL)
SET IDENTITY_INSERT [dbo].[MST_CITY] OFF
