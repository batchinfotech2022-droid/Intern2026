Create Database EcommerceDB;
GO

USE [EcommerceDB]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 13-02-2026 10:37:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](max) NOT NULL,
	[LastName] [varchar](max) NOT NULL,
	[Email] [varchar](max) NOT NULL,
	[Phone] [varchar](max) NOT NULL,
	[CreatedBy] [varchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](max) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 13-02-2026 10:37:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 4) NOT NULL,
	[CreatedBy] [varchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](max) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 13-02-2026 10:37:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[TotalAmount] [decimal](18, 4) NOT NULL,
	[CreatedBy] [varchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](max) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 13-02-2026 10:37:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[PaymentDate] [datetime] NOT NULL,
	[Amount] [decimal](18, 4) NOT NULL,
	[PaymentMethod] [varchar](max) NOT NULL,
	[CreatedBy] [varchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](max) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 13-02-2026 10:37:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](max) NOT NULL,
	[Price] [decimal](18, 4) NOT NULL,
	[StockQuantity] [int] NOT NULL,
	[Category] [varchar](max) NOT NULL,
	[CreatedBy] [varchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](max) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'Rahul', N'Sharma', N'rahulsharma@gmail.com', N'9876543210', N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, N'Ananya', N'Patel', N'ananyapatel@gmail.com', N'9123456789', N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, N'Vikram', N'Rao', N'vikramrao@gmail.com', N'9988776655', N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, N'Sneha', N'Nair', N'snehanair@gmail.com', N'9012345678', N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, N'Amit', N'Verma', N'amitverma@gmail.com', N'9090909090', N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, N'Pooja', N'Mehta', N'poojamehta@gmail.com', N'9345678123', N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, N'Karan', N'Singh', N'karansingh@gmail.com', N'9567890123', N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, N'Neha', N'Gupta', N'nehagupta@gmail.com', N'9786543210', N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (9, N'Arjun', N'Iyer', N'arjuniyer@gmail.com', N'9654321876', N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (10, N'Priya', N'Kulkarni', N'priyakulkarni@gmail.com', N'9823456712', N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), N'Admin', CAST(N'2026-02-12T17:12:32.370' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, 1, 1, 2, CAST(65000.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, 1, 2, 1, CAST(32000.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, 1, 3, 3, CAST(2500.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, 2, 4, 1, CAST(7000.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, 2, 5, 2, CAST(12000.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, 2, 6, 10, CAST(80.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, 3, 7, 15, CAST(20.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, 3, 8, 2, CAST(450.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (9, 3, 9, 1, CAST(1800.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (10, 4, 10, 2, CAST(1500.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (11, 4, 11, 1, CAST(800.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (12, 4, 12, 1, CAST(14000.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (13, 5, 13, 1, CAST(9500.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (14, 5, 14, 2, CAST(2200.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (15, 5, 15, 5, CAST(300.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (16, 6, 16, 1, CAST(1600.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (17, 6, 17, 1, CAST(3200.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (18, 6, 18, 4, CAST(150.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (19, 7, 19, 2, CAST(650.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (20, 7, 20, 1, CAST(2800.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (21, 7, 1, 1, CAST(65000.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (22, 8, 2, 2, CAST(32000.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (23, 8, 3, 4, CAST(2500.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (24, 8, 4, 1, CAST(7000.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (25, 9, 5, 1, CAST(12000.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (26, 9, 6, 20, CAST(80.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (27, 9, 7, 10, CAST(20.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (28, 10, 8, 3, CAST(450.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (29, 10, 9, 2, CAST(1800.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (30, 10, 10, 1, CAST(1500.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:58.787' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, 1, CAST(N'2026-02-12T17:13:34.930' AS DateTime), CAST(1500.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:34.930' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:34.930' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, 2, CAST(N'2026-02-12T17:13:34.930' AS DateTime), CAST(900.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:34.930' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:34.930' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, 3, CAST(N'2026-02-12T17:13:34.930' AS DateTime), CAST(75.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:34.930' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:34.930' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, 4, CAST(N'2026-02-12T17:13:34.930' AS DateTime), CAST(1150.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:34.930' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:34.930' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, 5, CAST(N'2026-02-12T17:13:34.930' AS DateTime), CAST(1900.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:34.930' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:34.930' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, 6, CAST(N'2026-02-12T17:13:34.930' AS DateTime), CAST(2500.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:34.930' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:34.930' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, 7, CAST(N'2026-02-12T17:13:34.930' AS DateTime), CAST(3500.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:34.930' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:34.930' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, 8, CAST(N'2026-02-12T17:13:34.930' AS DateTime), CAST(1700.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-12T17:13:34.930' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:34.930' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, 1, CAST(N'2026-02-12T17:14:15.020' AS DateTime), CAST(67500.0000 AS Decimal(18, 4)), N'Credit Card', N'Admin', CAST(N'2026-02-12T17:14:15.020' AS DateTime), N'Admin', CAST(N'2026-02-12T17:14:15.020' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, 2, CAST(N'2026-02-12T17:14:15.020' AS DateTime), CAST(20080.0000 AS Decimal(18, 4)), N'UPI', N'Admin', CAST(N'2026-02-12T17:14:15.020' AS DateTime), N'Admin', CAST(N'2026-02-12T17:14:15.020' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, 3, CAST(N'2026-02-12T17:14:15.020' AS DateTime), CAST(1250.0000 AS Decimal(18, 4)), N'Cash', N'Admin', CAST(N'2026-02-12T17:14:15.020' AS DateTime), N'Admin', CAST(N'2026-02-12T17:14:15.020' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, 4, CAST(N'2026-02-12T17:14:15.020' AS DateTime), CAST(15000.0000 AS Decimal(18, 4)), N'Debit Card', N'Admin', CAST(N'2026-02-12T17:14:15.020' AS DateTime), N'Admin', CAST(N'2026-02-12T17:14:15.020' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, 5, CAST(N'2026-02-12T17:14:15.020' AS DateTime), CAST(17500.0000 AS Decimal(18, 4)), N'Net Banking', N'Admin', CAST(N'2026-02-12T17:14:15.020' AS DateTime), N'Admin', CAST(N'2026-02-12T17:14:15.020' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, 6, CAST(N'2026-02-12T17:14:15.020' AS DateTime), CAST(3200.0000 AS Decimal(18, 4)), N'UPI', N'Admin', CAST(N'2026-02-12T17:14:15.020' AS DateTime), N'Admin', CAST(N'2026-02-12T17:14:15.020' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, 7, CAST(N'2026-02-12T17:14:15.020' AS DateTime), CAST(67800.0000 AS Decimal(18, 4)), N'Credit Card', N'Admin', CAST(N'2026-02-12T17:14:15.020' AS DateTime), N'Admin', CAST(N'2026-02-12T17:14:15.020' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, 8, CAST(N'2026-02-12T17:14:15.020' AS DateTime), CAST(4800.0000 AS Decimal(18, 4)), N'Wallet', N'Admin', CAST(N'2026-02-12T17:14:15.020' AS DateTime), N'Admin', CAST(N'2026-02-12T17:14:15.020' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'Laptop', CAST(65000.0000 AS Decimal(18, 4)), 15, N'Electronics', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, N'Smartphone', CAST(32000.0000 AS Decimal(18, 4)), 30, N'Electronics', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, N'Headphones', CAST(2500.0000 AS Decimal(18, 4)), 50, N'Electronics', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, N'Office Chair', CAST(7000.0000 AS Decimal(18, 4)), 20, N'Furniture', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, N'Study Table', CAST(12000.0000 AS Decimal(18, 4)), 10, N'Furniture', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, N'Notebook', CAST(80.0000 AS Decimal(18, 4)), 200, N'Stationery', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, N'Pen', CAST(20.0000 AS Decimal(18, 4)), 500, N'Stationery', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, N'Water Bottle', CAST(450.0000 AS Decimal(18, 4)), 60, N'Accessories', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (9, N'Backpack', CAST(1800.0000 AS Decimal(18, 4)), 40, N'Accessories', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (10, N'Keyboard', CAST(1500.0000 AS Decimal(18, 4)), 35, N'Electronics', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (11, N'Mouse', CAST(800.0000 AS Decimal(18, 4)), 60, N'Electronics', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (12, N'Monitor', CAST(14000.0000 AS Decimal(18, 4)), 12, N'Electronics', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (13, N'Printer', CAST(9500.0000 AS Decimal(18, 4)), 8, N'Electronics', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (14, N'Power Bank', CAST(2200.0000 AS Decimal(18, 4)), 25, N'Electronics', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (15, N'USB Cable', CAST(300.0000 AS Decimal(18, 4)), 100, N'Electronics', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (16, N'Desk Lamp', CAST(1600.0000 AS Decimal(18, 4)), 18, N'Furniture', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (17, N'Whiteboard', CAST(3200.0000 AS Decimal(18, 4)), 7, N'Office Supplies', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (18, N'Stapler', CAST(150.0000 AS Decimal(18, 4)), 90, N'Office Supplies', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (19, N'Calculator', CAST(650.0000 AS Decimal(18, 4)), 35, N'Electronics', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (20, N'Router', CAST(2800.0000 AS Decimal(18, 4)), 14, N'Electronics', N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), N'Admin', CAST(N'2026-02-12T17:13:04.417' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
