/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2019 (15.0.2070)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2019
    Target Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Target Database Engine Type : Standalone SQL Server
*/

USE [BlazingPizzaDB]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PizzaTopping]') AND type in (N'U'))
ALTER TABLE [dbo].[PizzaTopping] DROP CONSTRAINT IF EXISTS [FK_PizzaTopping_1_0]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PizzaTopping]') AND type in (N'U'))
ALTER TABLE [dbo].[PizzaTopping] DROP CONSTRAINT IF EXISTS [FK_PizzaTopping_0_0]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pizzas]') AND type in (N'U'))
ALTER TABLE [dbo].[Pizzas] DROP CONSTRAINT IF EXISTS [FK_Pizzas_1_0]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pizzas]') AND type in (N'U'))
ALTER TABLE [dbo].[Pizzas] DROP CONSTRAINT IF EXISTS [FK_Pizzas_0_0]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type in (N'U'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT IF EXISTS [FK_Orders_0_0]
GO
/****** Object:  Table [dbo].[Toppings]    Script Date: 17-12-2020 08:04:58 ******/
DROP TABLE IF EXISTS [dbo].[Toppings]
GO
/****** Object:  Table [dbo].[Specials]    Script Date: 17-12-2020 08:04:58 ******/
DROP TABLE IF EXISTS [dbo].[Specials]
GO
/****** Object:  Table [dbo].[PizzaTopping]    Script Date: 17-12-2020 08:04:58 ******/
DROP TABLE IF EXISTS [dbo].[PizzaTopping]
GO
/****** Object:  Table [dbo].[Pizzas]    Script Date: 17-12-2020 08:04:58 ******/
DROP TABLE IF EXISTS [dbo].[Pizzas]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 17-12-2020 08:04:58 ******/
DROP TABLE IF EXISTS [dbo].[Orders]
GO
/****** Object:  Table [dbo].[NotificationSubscriptions]    Script Date: 17-12-2020 08:04:58 ******/
DROP TABLE IF EXISTS [dbo].[NotificationSubscriptions]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 17-12-2020 08:04:58 ******/
DROP TABLE IF EXISTS [dbo].[Address]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 17-12-2020 08:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Line1] [nvarchar](500) NOT NULL,
	[Line2] [nvarchar](500) NULL,
	[City] [nvarchar](500) NOT NULL,
	[Region] [nvarchar](500) NOT NULL,
	[PostalCode] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificationSubscriptions]    Script Date: 17-12-2020 08:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationSubscriptions](
	[NotificationSubscriptionId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](500) NULL,
	[Url] [nvarchar](1500) NULL,
	[P256dh] [nvarchar](500) NULL,
	[Auth] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[NotificationSubscriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 17-12-2020 08:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](500) NULL,
	[CreatedTime] [datetime] NOT NULL,
	[DeliveryAddressId] [int] NULL,
	[DeliveryLocation_Latitude] [float] NULL,
	[DeliveryLocation_Longitude] [float] NULL,
	[CurrentLocation_Latitude] [float] NULL,
	[CurrentLocation_Longitude] [float] NULL,
	[Status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pizzas]    Script Date: 17-12-2020 08:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pizzas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[SpecialId] [int] NOT NULL,
	[Size] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PizzaTopping]    Script Date: 17-12-2020 08:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PizzaTopping](
	[ToppingId] [int] NOT NULL,
	[PizzaId] [int] NOT NULL,
 CONSTRAINT [sqlite_autoindex_PizzaTopping_1] PRIMARY KEY CLUSTERED 
(
	[ToppingId] ASC,
	[PizzaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specials]    Script Date: 17-12-2020 08:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[BasePrice] [decimal](18, 0) NOT NULL,
	[Description] [nvarchar](2000) NULL,
	[ImageUrl] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Toppings]    Script Date: 17-12-2020 08:04:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Toppings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Price] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 
GO
INSERT [dbo].[Address] ([Id], [Name], [Line1], [Line2], [City], [Region], [PostalCode]) VALUES (1, N'nag', N'tttt', N'rrr', N'hyd', N'ggg', N'500035')
GO
INSERT [dbo].[Address] ([Id], [Name], [Line1], [Line2], [City], [Region], [PostalCode]) VALUES (2, N'test', N'w', N'f', N'hyd', N'ff', N'777777')
GO
INSERT [dbo].[Address] ([Id], [Name], [Line1], [Line2], [City], [Region], [PostalCode]) VALUES (3, N'CC', N'GGG', N'DDDD', N'FFF', N'FDFF', N'3455')
GO
INSERT [dbo].[Address] ([Id], [Name], [Line1], [Line2], [City], [Region], [PostalCode]) VALUES (1003, N'Nagendra Kumar Battiprolu', N'Nagendra Kumar Battiprolu', N'Nagendra Kumar Battiprolu', N'Nagendra Kumar Battiprolu', N'gggg', N'ggmar Battiprolu')
GO
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([OrderId], [UserId], [CreatedTime], [DeliveryAddressId], [DeliveryLocation_Latitude], [DeliveryLocation_Longitude], [CurrentLocation_Latitude], [CurrentLocation_Longitude], [Status]) VALUES (4014, N'Nagendrakumar Battiprolu', CAST(N'2020-12-07T15:22:00.643' AS DateTime), NULL, 47.61186, -122.331926, 47.61186, -122.331926, N'Delivered')
GO
INSERT [dbo].[Orders] ([OrderId], [UserId], [CreatedTime], [DeliveryAddressId], [DeliveryLocation_Latitude], [DeliveryLocation_Longitude], [CurrentLocation_Latitude], [CurrentLocation_Longitude], [Status]) VALUES (4015, N'Nagendrakumar Battiprolu', CAST(N'2020-12-07T15:23:37.937' AS DateTime), NULL, 47.61186, -122.331926, 47.61186, -122.331926, N'Delivered')
GO
INSERT [dbo].[Orders] ([OrderId], [UserId], [CreatedTime], [DeliveryAddressId], [DeliveryLocation_Latitude], [DeliveryLocation_Longitude], [CurrentLocation_Latitude], [CurrentLocation_Longitude], [Status]) VALUES (4016, N'Nagendrakumar Battiprolu', CAST(N'2020-12-07T15:24:43.247' AS DateTime), NULL, 47.61186, -122.331926, 47.61186, -122.331926, N'Delivered')
GO
INSERT [dbo].[Orders] ([OrderId], [UserId], [CreatedTime], [DeliveryAddressId], [DeliveryLocation_Latitude], [DeliveryLocation_Longitude], [CurrentLocation_Latitude], [CurrentLocation_Longitude], [Status]) VALUES (4017, N'Nagendrakumar Battiprolu', CAST(N'2020-12-07T15:24:55.923' AS DateTime), NULL, 47.61186, -122.331926, 47.61186, -122.331926, N'Delivered')
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Pizzas] ON 
GO
INSERT [dbo].[Pizzas] ([Id], [OrderId], [SpecialId], [Size]) VALUES (4016, 4014, 4, 15)
GO
INSERT [dbo].[Pizzas] ([Id], [OrderId], [SpecialId], [Size]) VALUES (4017, 4015, 3, 12)
GO
INSERT [dbo].[Pizzas] ([Id], [OrderId], [SpecialId], [Size]) VALUES (4018, 4015, 5, 15)
GO
INSERT [dbo].[Pizzas] ([Id], [OrderId], [SpecialId], [Size]) VALUES (4019, 4016, 4, 14)
GO
INSERT [dbo].[Pizzas] ([Id], [OrderId], [SpecialId], [Size]) VALUES (4020, 4017, 7, 12)
GO
SET IDENTITY_INSERT [dbo].[Pizzas] OFF
GO
SET IDENTITY_INSERT [dbo].[Specials] ON 
GO
INSERT [dbo].[Specials] ([Id], [Name], [BasePrice], [Description], [ImageUrl]) VALUES (2, N'The Baconatorizor', CAST(12 AS Decimal(18, 0)), N'It has EVERY kind of bacon', N'img/pizzas/bacon.jpg')
GO
INSERT [dbo].[Specials] ([Id], [Name], [BasePrice], [Description], [ImageUrl]) VALUES (3, N'Classic pepperoni', CAST(11 AS Decimal(18, 0)), N'It''s the pizza you grew up with, but Blazing hot!', N'img/pizzas/pepperoni.jpg')
GO
INSERT [dbo].[Specials] ([Id], [Name], [BasePrice], [Description], [ImageUrl]) VALUES (4, N'Buffalo chicken', CAST(13 AS Decimal(18, 0)), N'Spicy chicken, hot sauce and bleu cheese, guaranteed to warm you up', N'img/pizzas/meaty.jpg')
GO
INSERT [dbo].[Specials] ([Id], [Name], [BasePrice], [Description], [ImageUrl]) VALUES (5, N'Mushroom Lovers', CAST(11 AS Decimal(18, 0)), N'It has mushrooms. Isn''t that obvious?', N'img/pizzas/mushroom.jpg')
GO
INSERT [dbo].[Specials] ([Id], [Name], [BasePrice], [Description], [ImageUrl]) VALUES (6, N'The Brit', CAST(10 AS Decimal(18, 0)), N'When in London...', N'img/pizzas/brit.jpg')
GO
INSERT [dbo].[Specials] ([Id], [Name], [BasePrice], [Description], [ImageUrl]) VALUES (7, N'Veggie Delight', CAST(12 AS Decimal(18, 0)), N'It''s like salad, but on a pizza', N'img/pizzas/salad.jpg')
GO
INSERT [dbo].[Specials] ([Id], [Name], [BasePrice], [Description], [ImageUrl]) VALUES (8, N'Margherita', CAST(10 AS Decimal(18, 0)), N'Traditional Italian pizza with tomatoes and basil', N'img/pizzas/margherita.jpg')
GO
INSERT [dbo].[Specials] ([Id], [Name], [BasePrice], [Description], [ImageUrl]) VALUES (9, N'Basic Cheese Pizza', CAST(10 AS Decimal(18, 0)), N'It''s cheesy and delicious. Why wouldn''t you want one?', N'img/pizzas/cheese.jpg')
GO
SET IDENTITY_INSERT [dbo].[Specials] OFF
GO
SET IDENTITY_INSERT [dbo].[Toppings] ON 
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (1, N'Blue cheese', CAST(3 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (2, N'Buffalo chicken', CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (3, N'Blazing hot peppers', CAST(4 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (4, N'Steak (medium-rare)', CAST(9 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (5, N'Basil', CAST(2 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (6, N'Fresh tomatos', CAST(2 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (7, N'Artichoke hearts', CAST(3 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (8, N'Sturgeon caviar', CAST(102 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (9, N'Served on a silver platter', CAST(251 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (10, N'Venison meatballs', CAST(3 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (11, N'Duck sausage', CAST(3 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (12, N'Pepperoni', CAST(1 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (13, N'Mushrooms', CAST(1 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (14, N'Onions', CAST(1 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (15, N'Bell peppers', CAST(1 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (16, N'Fresh-baked scones', CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (17, N'Tea and crumpets', CAST(5 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (18, N'Canadian bacon', CAST(3 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (19, N'British bacon', CAST(3 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (20, N'American bacon', CAST(3 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (21, N'Lobster on top', CAST(65 AS Decimal(18, 0)))
GO
INSERT [dbo].[Toppings] ([Id], [Name], [Price]) VALUES (22, N'Extra cheese', CAST(3 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Toppings] OFF
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_0_0] FOREIGN KEY([DeliveryAddressId])
REFERENCES [dbo].[Address] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_0_0]
GO
ALTER TABLE [dbo].[Pizzas]  WITH CHECK ADD  CONSTRAINT [FK_Pizzas_0_0] FOREIGN KEY([SpecialId])
REFERENCES [dbo].[Specials] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pizzas] CHECK CONSTRAINT [FK_Pizzas_0_0]
GO
ALTER TABLE [dbo].[Pizzas]  WITH CHECK ADD  CONSTRAINT [FK_Pizzas_1_0] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pizzas] CHECK CONSTRAINT [FK_Pizzas_1_0]
GO
ALTER TABLE [dbo].[PizzaTopping]  WITH CHECK ADD  CONSTRAINT [FK_PizzaTopping_0_0] FOREIGN KEY([ToppingId])
REFERENCES [dbo].[Toppings] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PizzaTopping] CHECK CONSTRAINT [FK_PizzaTopping_0_0]
GO
ALTER TABLE [dbo].[PizzaTopping]  WITH CHECK ADD  CONSTRAINT [FK_PizzaTopping_1_0] FOREIGN KEY([PizzaId])
REFERENCES [dbo].[Pizzas] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PizzaTopping] CHECK CONSTRAINT [FK_PizzaTopping_1_0]
GO
