CREATE DATABASE EcomDB
go

USE [EcomDB]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 17-02-2026 10:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](max) NOT NULL,
	[LastName] [varchar](max) NOT NULL,
	[Email] [varchar](max) NOT NULL,
	[Phone] [varchar](13) NOT NULL,
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
/****** Object:  Table [dbo].[OrderItems]    Script Date: 17-02-2026 10:23:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [decimal](18, 4) NOT NULL,
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
/****** Object:  Table [dbo].[Orders]    Script Date: 17-02-2026 10:23:20 ******/
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
/****** Object:  Table [dbo].[Payments]    Script Date: 17-02-2026 10:23:20 ******/
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
/****** Object:  Table [dbo].[Products]    Script Date: 17-02-2026 10:23:20 ******/
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
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'Sulaksha', N'Shetty', N'shettys@gmail.com', N'9876543210', N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, N'Prathiksha', N'Amin', N'prathi@gmail.com', N'9123456780', N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, N'Dravya', N'Shetty', N'dravya@gmail.com', N'9988776655', N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, N'Sharadhruthi', N'Gowda', N'shara@gmail.com', N'9090909090', N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, N'Dashami', N'N', N'dashami@gmail.com', N'9876501234', N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, N'Disha', N'Gowda', N'disha@gmail.com', N'9012345678', N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, N'Srushti', N'Ittigati', N'srushti@gmail.com', N'9345678901', N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, N'Kavya', N'Naik', N'kavya.naik@gmail.com', N'9567890123', N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (9, N'Sandhya', N'Mehta', N'sandhyamehta@gmail.com', N'9789012345', N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (10, N'Neha', N'Poojary', N'nehapoojary@gmail.com', N'9890123456', N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), N'Admin', CAST(N'2026-02-06T08:42:11.683' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, 3, 5, CAST(2.0000 AS Decimal(18, 4)), CAST(150.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, 1, 12, CAST(1.0000 AS Decimal(18, 4)), CAST(1299.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, 6, 2, CAST(4.0000 AS Decimal(18, 4)), CAST(80.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, 4, 18, CAST(1.0000 AS Decimal(18, 4)), CAST(999.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, 2, 7, CAST(2.0000 AS Decimal(18, 4)), CAST(799.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, 8, 3, CAST(3.0000 AS Decimal(18, 4)), CAST(199.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, 5, 14, CAST(2.0000 AS Decimal(18, 4)), CAST(699.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, 1, 6, CAST(5.0000 AS Decimal(18, 4)), CAST(60.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (9, 7, 10, CAST(1.0000 AS Decimal(18, 4)), CAST(899.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (10, 3, 19, CAST(2.0000 AS Decimal(18, 4)), CAST(499.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (11, 4, 1, CAST(4.0000 AS Decimal(18, 4)), CAST(120.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (12, 6, 16, CAST(1.0000 AS Decimal(18, 4)), CAST(1199.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (13, 2, 9, CAST(2.0000 AS Decimal(18, 4)), CAST(699.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (14, 5, 4, CAST(3.0000 AS Decimal(18, 4)), CAST(150.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (15, 8, 11, CAST(2.0000 AS Decimal(18, 4)), CAST(220.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (16, 7, 15, CAST(3.0000 AS Decimal(18, 4)), CAST(180.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (17, 1, 8, CAST(1.0000 AS Decimal(18, 4)), CAST(599.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (18, 3, 20, CAST(2.0000 AS Decimal(18, 4)), CAST(599.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (19, 4, 6, CAST(4.0000 AS Decimal(18, 4)), CAST(60.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (20, 2, 13, CAST(1.0000 AS Decimal(18, 4)), CAST(999.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (21, 5, 17, CAST(2.0000 AS Decimal(18, 4)), CAST(899.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (22, 6, 5, CAST(3.0000 AS Decimal(18, 4)), CAST(150.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (23, 8, 18, CAST(1.0000 AS Decimal(18, 4)), CAST(999.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (24, 7, 2, CAST(6.0000 AS Decimal(18, 4)), CAST(80.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (25, 1, 3, CAST(2.0000 AS Decimal(18, 4)), CAST(199.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (26, 2, 6, CAST(5.0000 AS Decimal(18, 4)), CAST(60.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (27, 3, 11, CAST(3.0000 AS Decimal(18, 4)), CAST(220.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (28, 4, 14, CAST(1.0000 AS Decimal(18, 4)), CAST(699.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (29, 5, 9, CAST(2.0000 AS Decimal(18, 4)), CAST(699.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (30, 6, 1, CAST(4.0000 AS Decimal(18, 4)), CAST(120.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), N'Admin', CAST(N'2026-02-06T08:50:40.903' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, 7, CAST(N'2026-02-06T08:48:28.710' AS DateTime), CAST(299.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:48:28.710' AS DateTime), N'Admin', CAST(N'2026-02-06T08:48:28.710' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, 2, CAST(N'2026-02-06T08:48:28.710' AS DateTime), CAST(850.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:48:28.710' AS DateTime), N'Admin', CAST(N'2026-02-06T08:48:28.710' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, 1, CAST(N'2026-02-06T08:48:28.710' AS DateTime), CAST(1250.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:48:28.710' AS DateTime), N'Admin', CAST(N'2026-02-06T08:48:28.710' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, 3, CAST(N'2026-02-06T08:48:28.710' AS DateTime), CAST(430.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:48:28.710' AS DateTime), N'Admin', CAST(N'2026-02-06T08:48:28.710' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, 5, CAST(N'2026-02-06T08:48:28.710' AS DateTime), CAST(675.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:48:28.710' AS DateTime), N'Admin', CAST(N'2026-02-06T08:48:28.710' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, 4, CAST(N'2026-02-06T08:48:28.710' AS DateTime), CAST(2199.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:48:28.710' AS DateTime), N'Admin', CAST(N'2026-02-06T08:48:28.710' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, 6, CAST(N'2026-02-06T08:48:28.710' AS DateTime), CAST(1540.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:48:28.710' AS DateTime), N'Admin', CAST(N'2026-02-06T08:48:28.710' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, 8, CAST(N'2026-02-06T08:48:28.710' AS DateTime), CAST(999.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-06T08:48:28.710' AS DateTime), N'Admin', CAST(N'2026-02-06T08:48:28.710' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, 5, CAST(N'2026-02-06T08:52:36.080' AS DateTime), CAST(675.0000 AS Decimal(18, 4)), N'Net Banking', N'Admin', CAST(N'2026-02-06T08:52:36.080' AS DateTime), N'Admin', CAST(N'2026-02-06T08:52:36.080' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, 2, CAST(N'2026-02-06T08:52:36.080' AS DateTime), CAST(850.0000 AS Decimal(18, 4)), N'Credit Card', N'Admin', CAST(N'2026-02-06T08:52:36.080' AS DateTime), N'Admin', CAST(N'2026-02-06T08:52:36.080' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, 8, CAST(N'2026-02-06T08:52:36.080' AS DateTime), CAST(999.0000 AS Decimal(18, 4)), N'UPI', N'Admin', CAST(N'2026-02-06T08:52:36.080' AS DateTime), N'Admin', CAST(N'2026-02-06T08:52:36.080' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, 1, CAST(N'2026-02-06T08:52:36.080' AS DateTime), CAST(1250.0000 AS Decimal(18, 4)), N'Debit Card', N'Admin', CAST(N'2026-02-06T08:52:36.080' AS DateTime), N'Admin', CAST(N'2026-02-06T08:52:36.080' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, 6, CAST(N'2026-02-06T08:52:36.080' AS DateTime), CAST(1540.0000 AS Decimal(18, 4)), N'Credit Card', N'Admin', CAST(N'2026-02-06T08:52:36.080' AS DateTime), N'Admin', CAST(N'2026-02-06T08:52:36.080' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, 3, CAST(N'2026-02-06T08:52:36.080' AS DateTime), CAST(430.0000 AS Decimal(18, 4)), N'Cash', N'Admin', CAST(N'2026-02-06T08:52:36.080' AS DateTime), N'Admin', CAST(N'2026-02-06T08:52:36.080' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, 7, CAST(N'2026-02-06T08:52:36.080' AS DateTime), CAST(299.0000 AS Decimal(18, 4)), N'UPI', N'Admin', CAST(N'2026-02-06T08:52:36.080' AS DateTime), N'Admin', CAST(N'2026-02-06T08:52:36.080' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, 4, CAST(N'2026-02-06T08:52:36.080' AS DateTime), CAST(2199.0000 AS Decimal(18, 4)), N'Net Banking', N'Admin', CAST(N'2026-02-06T08:52:36.080' AS DateTime), N'Admin', CAST(N'2026-02-06T08:52:36.080' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'A4 Spiral Notebook', CAST(120.0000 AS Decimal(18, 4)), 150, N'Stationery', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, N'Sticky Notes Pack', CAST(80.0000 AS Decimal(18, 4)), 200, N'Stationery', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, N'Color Highlighter Set', CAST(199.0000 AS Decimal(18, 4)), 100, N'Stationery', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, N'Ball Pen Set (10 pcs)', CAST(150.0000 AS Decimal(18, 4)), 300, N'Stationery', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, N'Desk Organizer', CAST(499.0000 AS Decimal(18, 4)), 60, N'Stationery', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, N'Wall Calendar', CAST(180.0000 AS Decimal(18, 4)), 50, N'Home Decor', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, N'Photo Frame Set', CAST(799.0000 AS Decimal(18, 4)), 35, N'Home Decor', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, N'Table Clock', CAST(599.0000 AS Decimal(18, 4)), 40, N'Home Decor', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (9, N'Storage Basket', CAST(699.0000 AS Decimal(18, 4)), 45, N'Home Storage', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (10, N'Plastic Drawer Organizer', CAST(899.0000 AS Decimal(18, 4)), 25, N'Home Storage', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (11, N'File Folder Pack', CAST(220.0000 AS Decimal(18, 4)), 120, N'Stationery', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (12, N'Whiteboard with Marker', CAST(1299.0000 AS Decimal(18, 4)), 15, N'Office Supplies', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (13, N'Pin Board', CAST(999.0000 AS Decimal(18, 4)), 20, N'Office Supplies', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (14, N'Paper Tray Organizer', CAST(699.0000 AS Decimal(18, 4)), 35, N'Office Supplies', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (15, N'Document Holder File', CAST(180.0000 AS Decimal(18, 4)), 90, N'Stationery', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (16, N'Laundry Basket', CAST(1199.0000 AS Decimal(18, 4)), 18, N'Home Storage', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (17, N'Dustbin with Lid', CAST(299.0000 AS Decimal(18, 4)), 30, N'Home Essentials', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (18, N'Broom & Mop Set', CAST(999.0000 AS Decimal(18, 4)), 20, N'Home Essentials', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (19, N'Cloth Hangers Set (12 pcs)', CAST(499.0000 AS Decimal(18, 4)), 70, N'Home Essentials', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (20, N'Table Mat Set', CAST(599.0000 AS Decimal(18, 4)), 40, N'Home Essentials', N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), N'Admin', CAST(N'2026-02-06T08:44:13.737' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
