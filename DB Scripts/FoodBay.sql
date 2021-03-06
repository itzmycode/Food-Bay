USE [Food Bay]
GO
/****** Object:  Table [dbo].[MST_CITY]    Script Date: 04/24/2015 13:02:45 ******/
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
/****** Object:  Table [dbo].[MST_Location]    Script Date: 04/24/2015 13:02:45 ******/
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
/****** Object:  Table [dbo].[MST_Vendor]    Script Date: 04/24/2015 13:02:45 ******/
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
/****** Object:  Table [dbo].[MST_FoodItems]    Script Date: 04/24/2015 13:02:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MST_FoodItems](
	[FoodItemId] [bigint] IDENTITY(4000,1) NOT NULL,
	[VendorId] [bigint] NOT NULL,
	[FoodItemName] [varchar](max) NOT NULL,
	[FoodItemPrice] [decimal](18, 2) NULL,
	[TaxPercentage] [decimal](18, 2) NULL,
	[CreatedDateTime] [smalldatetime] NULL,
	[SmallDateTime] [smalldatetime] NULL,
 CONSTRAINT [PK_MST_FoodItems] PRIMARY KEY CLUSTERED 
(
	[FoodItemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MST_FoodItems] ON
INSERT [dbo].[MST_FoodItems] ([FoodItemId], [VendorId], [FoodItemName], [FoodItemPrice], [TaxPercentage], [CreatedDateTime], [SmallDateTime]) VALUES (4000, 3000, N'Mini Meals', CAST(40.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[MST_FoodItems] ([FoodItemId], [VendorId], [FoodItemName], [FoodItemPrice], [TaxPercentage], [CreatedDateTime], [SmallDateTime]) VALUES (4001, 3000, N'Andhra Meals', CAST(40.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[MST_FoodItems] ([FoodItemId], [VendorId], [FoodItemName], [FoodItemPrice], [TaxPercentage], [CreatedDateTime], [SmallDateTime]) VALUES (4002, 3000, N'South Indian Meals', CAST(40.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[MST_FoodItems] ([FoodItemId], [VendorId], [FoodItemName], [FoodItemPrice], [TaxPercentage], [CreatedDateTime], [SmallDateTime]) VALUES (4003, 3000, N'Curd Rice', CAST(25.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[MST_FoodItems] ([FoodItemId], [VendorId], [FoodItemName], [FoodItemPrice], [TaxPercentage], [CreatedDateTime], [SmallDateTime]) VALUES (4004, 3000, N'Sambar Rice', CAST(30.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[MST_FoodItems] ([FoodItemId], [VendorId], [FoodItemName], [FoodItemPrice], [TaxPercentage], [CreatedDateTime], [SmallDateTime]) VALUES (4005, 3000, N'Variety Rice', CAST(30.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL)
SET IDENTITY_INSERT [dbo].[MST_FoodItems] OFF
/****** Object:  ForeignKey [FK_Vendor_FoodItems]    Script Date: 04/24/2015 13:02:45 ******/
ALTER TABLE [dbo].[MST_FoodItems]  WITH CHECK ADD  CONSTRAINT [FK_Vendor_FoodItems] FOREIGN KEY([VendorId])
REFERENCES [dbo].[MST_Vendor] ([VendorId])
GO
ALTER TABLE [dbo].[MST_FoodItems] CHECK CONSTRAINT [FK_Vendor_FoodItems]
GO
/****** Object:  ForeignKey [FK_City_Location]    Script Date: 04/24/2015 13:02:45 ******/
ALTER TABLE [dbo].[MST_Location]  WITH CHECK ADD  CONSTRAINT [FK_City_Location] FOREIGN KEY([CityId])
REFERENCES [dbo].[MST_CITY] ([CityID])
GO
ALTER TABLE [dbo].[MST_Location] CHECK CONSTRAINT [FK_City_Location]
GO
/****** Object:  ForeignKey [FK_City_Vendor]    Script Date: 04/24/2015 13:02:45 ******/
ALTER TABLE [dbo].[MST_Vendor]  WITH CHECK ADD  CONSTRAINT [FK_City_Vendor] FOREIGN KEY([LocationId])
REFERENCES [dbo].[MST_Location] ([LocationId])
GO
ALTER TABLE [dbo].[MST_Vendor] CHECK CONSTRAINT [FK_City_Vendor]
GO
