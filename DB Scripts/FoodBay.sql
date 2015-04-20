USE [Food Bay]
GO
/****** Object:  Table [dbo].[MST_CITY]    Script Date: 04/20/2015 10:26:03 ******/
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
/****** Object:  Table [dbo].[MST_Location]    Script Date: 04/20/2015 10:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MST_Location](
	[LocationId] [bigint] IDENTITY(2000,1) NOT NULL,
	[CityId] [bigint] NOT NULL,
	[LocationName] [varchar](max) NOT NULL,
	[CreatedDateTime] [smalldatetime] NULL,
	[UpdatedDateTime] [smalldatetime] NULL,
 CONSTRAINT [PK_MST_Location] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MST_Location] ON
INSERT [dbo].[MST_Location] ([LocationId], [CityId], [LocationName], [CreatedDateTime], [UpdatedDateTime]) VALUES (2000, 1000, N'MEPZ', CAST(0xA4800233 AS SmallDateTime), NULL)
INSERT [dbo].[MST_Location] ([LocationId], [CityId], [LocationName], [CreatedDateTime], [UpdatedDateTime]) VALUES (2001, 1000, N'DLF', CAST(0xA4800233 AS SmallDateTime), NULL)
INSERT [dbo].[MST_Location] ([LocationId], [CityId], [LocationName], [CreatedDateTime], [UpdatedDateTime]) VALUES (2002, 1000, N'SRI-SEZ', CAST(0xA4800234 AS SmallDateTime), NULL)
INSERT [dbo].[MST_Location] ([LocationId], [CityId], [LocationName], [CreatedDateTime], [UpdatedDateTime]) VALUES (2003, 1000, N'SRI-STP', CAST(0xA4800234 AS SmallDateTime), NULL)
INSERT [dbo].[MST_Location] ([LocationId], [CityId], [LocationName], [CreatedDateTime], [UpdatedDateTime]) VALUES (2004, 1000, N'Navalur', CAST(0xA4800234 AS SmallDateTime), NULL)
SET IDENTITY_INSERT [dbo].[MST_Location] OFF
/****** Object:  Table [dbo].[MST_Vendor]    Script Date: 04/20/2015 10:26:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MST_Vendor](
	[VendorId] [bigint] IDENTITY(3000,1) NOT NULL,
	[LocationId] [bigint] NOT NULL,
	[VendorName] [varchar](max) NOT NULL,
	[VendorPhoneNo] [bigint] NULL,
	[VendorPOC] [varchar](max) NULL,
	[OpenTime] [varchar](max) NULL,
	[CloseTime] [varchar](max) NULL,
	[IsWeekendAvailable] [smallint] NULL,
	[CreatedDateTime] [smalldatetime] NULL,
	[UpdatedDateTime] [smalldatetime] NULL,
 CONSTRAINT [PK_MST_Vendor] PRIMARY KEY CLUSTERED 
(
	[VendorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MST_Vendor] ON
INSERT [dbo].[MST_Vendor] ([VendorId], [LocationId], [VendorName], [VendorPhoneNo], [VendorPOC], [OpenTime], [CloseTime], [IsWeekendAvailable], [CreatedDateTime], [UpdatedDateTime]) VALUES (3000, 2000, N'ISS', 1234567890, N'ABC', N'7AM', N'11PM', 1, CAST(0xA480025B AS SmallDateTime), NULL)
INSERT [dbo].[MST_Vendor] ([VendorId], [LocationId], [VendorName], [VendorPhoneNo], [VendorPOC], [OpenTime], [CloseTime], [IsWeekendAvailable], [CreatedDateTime], [UpdatedDateTime]) VALUES (3001, 2000, N'Food Exo', 1234567890, N'ABC', N'7AM', N'11PM', 1, CAST(0xA480025B AS SmallDateTime), NULL)
INSERT [dbo].[MST_Vendor] ([VendorId], [LocationId], [VendorName], [VendorPhoneNo], [VendorPOC], [OpenTime], [CloseTime], [IsWeekendAvailable], [CreatedDateTime], [UpdatedDateTime]) VALUES (3002, 2000, N'Currys & Crunch', 1234567890, N'ABC', N'7AM', N'11PM', 1, CAST(0xA480025B AS SmallDateTime), NULL)
INSERT [dbo].[MST_Vendor] ([VendorId], [LocationId], [VendorName], [VendorPhoneNo], [VendorPOC], [OpenTime], [CloseTime], [IsWeekendAvailable], [CreatedDateTime], [UpdatedDateTime]) VALUES (3003, 2000, N'Virudhunagar', 1234567890, N'ABC', N'7AM', N'11PM', 1, CAST(0xA480025B AS SmallDateTime), NULL)
INSERT [dbo].[MST_Vendor] ([VendorId], [LocationId], [VendorName], [VendorPhoneNo], [VendorPOC], [OpenTime], [CloseTime], [IsWeekendAvailable], [CreatedDateTime], [UpdatedDateTime]) VALUES (3004, 2000, N'Anjappar', 1234567890, N'ABC', N'7AM', N'11PM', 1, CAST(0xA480025B AS SmallDateTime), NULL)
INSERT [dbo].[MST_Vendor] ([VendorId], [LocationId], [VendorName], [VendorPhoneNo], [VendorPOC], [OpenTime], [CloseTime], [IsWeekendAvailable], [CreatedDateTime], [UpdatedDateTime]) VALUES (3005, 2000, N'Wings Kitchen', 1234567890, N'ABC', N'7AM', N'11PM', 1, CAST(0xA480025C AS SmallDateTime), NULL)
SET IDENTITY_INSERT [dbo].[MST_Vendor] OFF
/****** Object:  ForeignKey [FK_City_Location]    Script Date: 04/20/2015 10:26:03 ******/
ALTER TABLE [dbo].[MST_Location]  WITH CHECK ADD  CONSTRAINT [FK_City_Location] FOREIGN KEY([CityId])
REFERENCES [dbo].[MST_CITY] ([CityID])
GO
ALTER TABLE [dbo].[MST_Location] CHECK CONSTRAINT [FK_City_Location]
GO
/****** Object:  ForeignKey [FK_City_Vendor]    Script Date: 04/20/2015 10:26:03 ******/
ALTER TABLE [dbo].[MST_Vendor]  WITH CHECK ADD  CONSTRAINT [FK_City_Vendor] FOREIGN KEY([LocationId])
REFERENCES [dbo].[MST_Location] ([LocationId])
GO
ALTER TABLE [dbo].[MST_Vendor] CHECK CONSTRAINT [FK_City_Vendor]
GO
