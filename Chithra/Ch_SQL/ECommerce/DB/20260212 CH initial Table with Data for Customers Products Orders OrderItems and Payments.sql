USE [PROJECT]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 12-02-2026 22:14:59 ******/
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
/****** Object:  Table [dbo].[OrderItems]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 4) NULL,
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
/****** Object:  Table [dbo].[Orders]    Script Date: 12-02-2026 22:15:00 ******/
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
/****** Object:  Table [dbo].[Payments]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[PaymentDate] [datetime] NOT NULL,
	[Amount] [decimal](18, 4) NOT NULL,
	[PaymentMethod] [varchar](max) NULL,
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
/****** Object:  Table [dbo].[Products]    Script Date: 12-02-2026 22:15:00 ******/
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
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'Charishma', N'GV', N'charishma@gmail.com', N'9000000001', N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, N'Abhijna', N'KC', N'kcabhijna@gmail.com', N'9000000002', N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, N'Kirthi', N'Guddena', N'kirthi@gmail.com', N'9000000003', N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, N'Deeptha', N'Malhotra', N'deepthap@gmail.com', N'9000000004', N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, N'Diya', N'Suvarna', N'diyasuvarna@gmail.com', N'9000000005', N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, N'Anitha', N'Kulal', N'kulalanitha@gmail.com', N'9000000006', N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, N'Disha', N'Gowda', N'dishashreyas@gmail.com', N'9000000007', N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, N'Geetha', N'Ganiga', N'geetha@gmail.com', N'9000000008', N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (9, N'Chithra', N'Acharya', N'harishchithra@gmail.com', N'9000000009', N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), 0)
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [Email], [Phone], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (10, N'Neha', N'Shetty', N'shettyneha@gmail.com', N'9000000010', N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), N'Admin', CAST(N'2026-02-05T15:35:26.197' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, 1, 1, 2, CAST(799.9900 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, 2, 19, 1, CAST(6999.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, 1, 15, 1, CAST(1799.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, 2, 7, 2, CAST(1999.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, 3, 3, 1, CAST(999.9900 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, 8, 4, 1, CAST(1299.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, 3, 2, 1, CAST(1499.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, 6, 8, 1, CAST(1199.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (9, 5, 9, 1, CAST(1899.9900 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (10, 1, 10, 1, CAST(5499.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (11, 6, 11, 2, CAST(699.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (12, 5, 20, 1, CAST(3499.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (13, 8, 13, 1, CAST(1599.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (14, 4, 6, 2, CAST(2499.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (15, 3, 15, 1, CAST(1799.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (16, 1, 4, 1, CAST(1299.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (17, 8, 8, 1, CAST(1199.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (18, 2, 3, 1, CAST(999.9900 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (19, 4, 6, 1, CAST(2499.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (20, 6, 11, 1, CAST(699.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (21, 7, 1, 18, CAST(799.9900 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (22, 1, 5, 14, CAST(2999.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (23, 3, 6, 1, CAST(2499.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (24, 8, 10, 5, CAST(5499.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (25, 8, 2, 1, CAST(1499.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (26, 8, 3, 2, CAST(999.9900 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (27, 8, 8, 1, CAST(1199.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (28, 8, 11, 1, CAST(699.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (29, 8, 14, 1, CAST(999.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (30, 8, 16, 1, CAST(899.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:03.673' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, 8, CAST(N'2026-02-05T16:52:11.537' AS DateTime), CAST(2599.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:11.537' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:11.537' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, 2, CAST(N'2026-02-05T16:52:11.537' AS DateTime), CAST(1499.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:11.537' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:11.537' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, 10, CAST(N'2026-02-05T16:52:11.537' AS DateTime), CAST(3999.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:11.537' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:11.537' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, 7, CAST(N'2026-02-05T16:52:11.537' AS DateTime), CAST(899.9900 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:11.537' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:11.537' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, 5, CAST(N'2026-02-05T16:52:11.537' AS DateTime), CAST(6999.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:11.537' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:11.537' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, 1, CAST(N'2026-02-05T16:52:11.537' AS DateTime), CAST(1799.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:11.537' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:11.537' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, 9, CAST(N'2026-02-05T16:52:11.537' AS DateTime), CAST(2499.5000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:11.537' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:11.537' AS DateTime), 0)
GO
INSERT [dbo].[Orders] ([Id], [CustomerId], [OrderDate], [TotalAmount], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, 3, CAST(N'2026-02-05T16:52:11.537' AS DateTime), CAST(1299.0000 AS Decimal(18, 4)), N'Admin', CAST(N'2026-02-05T16:52:11.537' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:11.537' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, 1, CAST(N'2026-02-05T16:52:06.850' AS DateTime), CAST(2599.0000 AS Decimal(18, 4)), N'UPI', N'Admin', CAST(N'2026-02-05T16:52:06.850' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:06.850' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, 8, CAST(N'2026-02-05T16:52:06.850' AS DateTime), CAST(1299.0000 AS Decimal(18, 4)), N'Card', N'Admin', CAST(N'2026-02-05T16:52:06.850' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:06.850' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, 3, CAST(N'2026-02-05T16:52:06.850' AS DateTime), CAST(3999.0000 AS Decimal(18, 4)), N'NetBanking', N'Admin', CAST(N'2026-02-05T16:52:06.850' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:06.850' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, 4, CAST(N'2026-02-05T16:52:06.850' AS DateTime), CAST(899.9900 AS Decimal(18, 4)), N'Cash', N'Admin', CAST(N'2026-02-05T16:52:06.850' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:06.850' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, 7, CAST(N'2026-02-05T16:52:06.850' AS DateTime), CAST(2499.9900 AS Decimal(18, 4)), N'UPI', N'Admin', CAST(N'2026-02-05T16:52:06.850' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:06.850' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, 6, CAST(N'2026-02-05T16:52:06.850' AS DateTime), CAST(1799.0000 AS Decimal(18, 4)), N'Card', N'Admin', CAST(N'2026-02-05T16:52:06.850' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:06.850' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, 2, CAST(N'2026-02-05T16:52:06.850' AS DateTime), CAST(1499.0000 AS Decimal(18, 4)), N'UPI', N'Admin', CAST(N'2026-02-05T16:52:06.850' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:06.850' AS DateTime), 0)
GO
INSERT [dbo].[Payments] ([Id], [OrderId], [PaymentDate], [Amount], [PaymentMethod], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, 5, CAST(N'2026-02-05T16:52:06.850' AS DateTime), CAST(6999.0000 AS Decimal(18, 4)), N'NetBanking', N'Admin', CAST(N'2026-02-05T16:52:06.850' AS DateTime), N'Admin', CAST(N'2026-02-05T16:52:06.850' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'Wireless Mouse', CAST(799.9900 AS Decimal(18, 4)), 5, N'Accessories', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, N'Bluetooth Keyboard', CAST(1499.0000 AS Decimal(18, 4)), 4, N'Accessories', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, N'USB-C Charger', CAST(999.9900 AS Decimal(18, 4)), 6, N'Chargers', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, N'Power Bank 10000mAh', CAST(1299.0000 AS Decimal(18, 4)), 3, N'Power', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (5, N'Smart Watch', CAST(2999.0000 AS Decimal(18, 4)), 2, N'Wearables', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (6, N'Wireless Earbuds', CAST(2499.9900 AS Decimal(18, 4)), 1, N'Audio', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (7, N'Bluetooth Speaker', CAST(1999.0000 AS Decimal(18, 4)), 2, N'Audio', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (8, N'Laptop Cooling Pad', CAST(1199.0000 AS Decimal(18, 4)), 1, N'Accessories', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (9, N'Webcam HD', CAST(1899.9900 AS Decimal(18, 4)), 7, N'Camera', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (10, N'Portable SSD 500GB', CAST(5499.0000 AS Decimal(18, 4)), 10, N'Storage', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (11, N'USB Hub 4 Port', CAST(699.0000 AS Decimal(18, 4)), 4, N'Accessories', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (12, N'VR Headset', CAST(4999.9900 AS Decimal(18, 4)), 8, N'Gaming', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (13, N'Game Controller', CAST(1599.0000 AS Decimal(18, 4)), 22, N'Gaming', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (14, N'Smart Plug', CAST(999.0000 AS Decimal(18, 4)), 28, N'Smart Home', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (15, N'Fitness Band', CAST(1799.0000 AS Decimal(18, 4)), 6, N'Wearables', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (16, N'Phone Tripod', CAST(899.9900 AS Decimal(18, 4)), 3, N'Accessories', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (17, N'Ring Light', CAST(1299.0000 AS Decimal(18, 4)), 9, N'Camera', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (18, N'Wireless Charging Pad', CAST(1499.0000 AS Decimal(18, 4)), 4, N'Chargers', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (19, N'Mini Projector', CAST(6999.0000 AS Decimal(18, 4)), 6, N'Display', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price], [StockQuantity], [Category], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (20, N'Dash Camera', CAST(3499.0000 AS Decimal(18, 4)), 1, N'Camera', N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), N'Admin', CAST(N'2026-02-05T16:10:00.400' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
/****** Object:  StoredProcedure [dbo].[Customers_Create]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Customers_Create]
    @FirstName    VARCHAR(100),
    @LastName     VARCHAR(100),
    @Email        VARCHAR(255),
    @Phone        VARCHAR(13),
    @CreatedBy    VARCHAR(100),
    @CreatedDate  DATETIME,
    @ModifiedBy   VARCHAR(100),
    @ModifiedDate DATETIME,
    @IsDeleted    BIT,
    @Id           INT OUTPUT 
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Customers] (
        FirstName, LastName, Email, Phone, 
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
    )
    VALUES (
        @FirstName, @LastName, @Email,  @Phone,
        @CreatedBy, @CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    );

    -- Assign the newly created Identity Id to the output variable
    SELECT @Id = SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[Customers_Delete]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Customers_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

   
AS 
BEGIN
    SET NOCOUNT ON;
    update Customers
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Customers_ReadAll]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Customers_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
      FirstName ,LastName, Email, Phone,
      CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted

     FROM 
     Customers
     
     where IsDeleted=0
END

GO
/****** Object:  StoredProcedure [dbo].[Customers_ReadByID]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Customers_ReadByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        FirstName, LastName, Email, Phone, 
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
    FROM Customers
    WHERE Id=@Id 
        AND IsDeleted=0
    END

GO
/****** Object:  StoredProcedure [dbo].[Customers_Update]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Customers_Update]
    @FirstName    VARCHAR(100),
    @LastName     VARCHAR(100),
    @Email        VARCHAR(255),
    @Phone        VARCHAR(13),
    @CreatedBy    VARCHAR(100),
    @CreatedDate  DATETIME,
    @ModifiedBy   VARCHAR(100),
    @ModifiedDate DATETIME,
    @IsDeleted    BIT,
    @Id           INT 
AS 
BEGIN
    SET NOCOUNT ON;

    update Customers
    set 
     FirstName=@FirstName
    ,LastName=@LastName
    ,Email=@Email
    ,Phone=@Phone
    ,CreatedBy=@CreatedBy
    ,CreatedDate=@CreatedDate
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    ,IsDeleted=@IsDeleted
    where 
    Id=@Id

    RETURN @@ROWCOUNT


END
GO
/****** Object:  StoredProcedure [dbo].[OrderItems_Create]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[OrderItems_Create]
    @OrderId        INT,
    @ProductId      INT,
    @Quantity       INT,
    @Price          DECIMAL(18,2),
    @CreatedBy      VARCHAR(100),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(100),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT OUTPUT 
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[OrderItems] (
        OrderId, ProductId, Quantity,Price,
        CreatedBy,CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    )
    VALUES (
        @OrderId, @ProductId, @Quantity,@Price,
        @CreatedBy,@CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    );

    -- Assign the newly created Identity Id to the output variable
    SELECT @Id = SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[OrderItems_Delete]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OrderItems_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

   
AS 
BEGIN
    SET NOCOUNT ON;
    update OrderItems
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[OrderItems_ReadAll]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[OrderItems_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
        OrderId, ProductId, Quantity,Price
        CreatedBy,CreatedDate, ModifiedBy, ModifiedDate, IsDeleted

     FROM 
     OrderItems
     
     where IsDeleted=0
END

GO
/****** Object:  StoredProcedure [dbo].[OrderItems_ReadBestProductByID]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[OrderItems_ReadBestProductByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 5 ProductId,
           SUM(Quantity)  AS Total
       
FROM OrderItems 
GROUP BY ProductId
ORDER BY Total DESC
END
GO
/****** Object:  StoredProcedure [dbo].[OrderItems_ReadByID]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[OrderItems_ReadByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        OrderId, ProductId, Quantity,Price
        CreatedBy,CreatedDate, ModifiedBy, ModifiedDate, IsDeleted
    FROM OrderItems
    WHERE Id=@Id 
        AND IsDeleted=0
    END

GO
/****** Object:  StoredProcedure [dbo].[OrderItems_Update]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[OrderItems_Update]
    @OrderId       INT,
    @ProductId      INT,
    @Quantity       INT,
    @Price          DECIMAL(18,2),
    @CreatedBy      VARCHAR(100),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(100),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT 
AS 
BEGIN
    SET NOCOUNT ON;

    update OrderItems
    set 
     OrderId=@OrderId
    ,ProductId=@ProductId 
    ,Quantity=@Quantity
    ,Price=@Price
    ,CreatedBy=@CreatedBy
    ,CreatedDate=@CreatedDate
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    ,IsDeleted=@IsDeleted
    where 
    Id=@Id

    RETURN @@ROWCOUNT


END
GO
/****** Object:  StoredProcedure [dbo].[Orders_Create]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Orders_Create]
    @CustomerId     INT,
    @OrderDate      DATETIME,
    @TotalAmount    DECIMAL(18,4),
    @CreatedBy      VARCHAR(100),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(100),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT OUTPUT 
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Orders] (
        CustomerId, OrderDate, TotalAmount,
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
    )
    VALUES (
        @CustomerId, @OrderDate, @TotalAmount,
        @CreatedBy, @CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    );

    -- Assign the newly created Identity Id to the output variable
    SELECT @Id = SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[Orders_Delete]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Orders_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

   
AS 
BEGIN
    SET NOCOUNT ON;
    update Orders
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Orders_ReadAll]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Orders_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
        CustomerId, OrderDate, TotalAmount,
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
     FROM 
     Orders
     
     where IsDeleted=0
END

GO
/****** Object:  StoredProcedure [dbo].[Orders_ReadByID]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Orders_ReadByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        CustomerId, OrderDate, TotalAmount,
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
    FROM Orders
    WHERE Id=@Id 
        AND IsDeleted=0
    END

GO
/****** Object:  StoredProcedure [dbo].[Orders_ReadCustomerDetails]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[Orders_ReadCustomerDetails]
AS 
BEGIN
    SET NOCOUNT ON;

    
SELECT  O.Id
		,C.FirstName
		,O.OrderDate
		,O.TotalAmount
FROM Orders O
INNER JOIN Customers C
ON O.CustomerId=C.Id
WHERE 
	 O.IsDeleted=0
	AND C.IsDeleted=0
    END

GO
/****** Object:  StoredProcedure [dbo].[Orders_ReadOrderMore]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Orders_ReadOrderMore]
  
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT	CustomerId,
	        COUNT(*) OrderCount
    FROM Orders
    GROUP BY CustomerId
    HAVING COUNT(*)>=1
END

GO
/****** Object:  StoredProcedure [dbo].[Orders_ReadTotalAmountById]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Orders_ReadTotalAmountById]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT  O.[Id]
      ,O.[CustomerId]
      ,O.[OrderDate]
      ,O.[TotalAmount]
      ,SUM(OI.Price*OI.Quantity) AS [Total] 
      ,O.[CreatedBy]
      ,O.[CreatedDate]
      ,O.[ModifiedBy]
      ,O.[ModifiedDate]
      ,O.[IsDeleted]
      
  FROM [PROJECT].[dbo].[Orders] O
  INNER JOIN OrderItems OI ON OI.OrderId=O.Id
  
  WHERE O.Id=8 
  AND O.IsDeleted=0
  AND OI.IsDeleted=0
  GROUP BY O.[Id]

      ,[CustomerId]
      ,[OrderDate]
      ,[TotalAmount]
      ,O.[CreatedBy]
      ,O.[CreatedDate]
      ,O.[ModifiedBy]
      ,O.[ModifiedDate]
      ,O.[IsDeleted]
END

GO
/****** Object:  StoredProcedure [dbo].[Orders_Update]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Orders_Update]
    @CustomerId     INT,
    @OrderDate      DATETIME,
    @TotalAmount    DECIMAL(18,4),
    @CreatedBy      VARCHAR(100),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(100),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT 
AS 
BEGIN
    SET NOCOUNT ON;

    update Orders
    set 
     CustomerId =@CustomerId
    ,OrderDate=@OrderDate
    ,TotalAmount=@TotalAmount
    ,CreatedBy=@CreatedBy
    ,CreatedDate=@CreatedDate
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    ,IsDeleted=@IsDeleted
    where 
    Id=@Id

    RETURN @@ROWCOUNT


END
GO
/****** Object:  StoredProcedure [dbo].[Payments_Create]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Payments_Create]
    @OrderId        INT,
    @PaymentDate    DATETIME,
    @Amount         DECIMAL(18,4),
    @PaymentMethod  VARCHAR(100),
    @CreatedBy      VARCHAR(100),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(100),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT OUTPUT 
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Payments] (
        OrderId , PaymentDate, Amount, PaymentMethod,
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
    )
    VALUES (
        @OrderId , @PaymentDate, @Amount, @PaymentMethod,
        @CreatedBy, @CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    );

    -- Assign the newly created Identity Id to the output variable
    SELECT @Id = SCOPE_IDENTITY();
END


GO
/****** Object:  StoredProcedure [dbo].[Payments_Delete]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Payments_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

   
AS 
BEGIN
    SET NOCOUNT ON;
    update Payments
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Payments_ReadAll]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Payments_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
        OrderId , PaymentDate, Amount, PaymentMethod,
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
     FROM 
     Payments
     
     where IsDeleted=0
END

GO
/****** Object:  StoredProcedure [dbo].[Payments_ReadByID]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Payments_ReadByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        OrderId , PaymentDate, Amount, PaymentMethod,
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
    FROM Payments
    WHERE Id=@Id 
        AND IsDeleted=0
    END

GO
/****** Object:  StoredProcedure [dbo].[Payments_Update]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Payments_Update]
    @OrderId        INT,
    @PaymentDate    DATETIME,
    @Amount         DECIMAL(18,4),
    @PaymentMethod  VARCHAR(100),
    @CreatedBy      VARCHAR(100),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(100),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT
AS 
BEGIN
    SET NOCOUNT ON;

    update Payments
    set 
     OrderId =@OrderId
    ,PaymentDate=@PaymentDate
    ,Amount =@Amount 
    ,PaymentMethod=@PaymentMethod
    ,CreatedBy=@CreatedBy
    ,CreatedDate=@CreatedDate
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    ,IsDeleted=@IsDeleted
    where 
    Id=@Id

    RETURN @@ROWCOUNT


END
GO
/****** Object:  StoredProcedure [dbo].[Products_Create]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[Products_Create]
    @ProductName    VARCHAR(100),
    @Price          DECIMAL(18,4),
    @StockQuantity  INT,
    @Category       VARCHAR(300),
    @CreatedBy      VARCHAR(100),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(100),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT OUTPUT 
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Products] (
        ProductName, Price, StockQuantity, Category, 
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
    )
    VALUES (
        @ProductName, @Price, @StockQuantity,  @Category,
        @CreatedBy, @CreatedDate, @ModifiedBy, @ModifiedDate, @IsDeleted
    );

    -- Assign the newly created Identity Id to the output variable
    SELECT @Id = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Products_Delete]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Products_Delete]
   @Id INT,
   @ModifiedBy VARCHAR(MAX),
   @ModifiedDate  DATETIME

   
AS 
BEGIN
    SET NOCOUNT ON;
    update Products
    SET IsDeleted=1
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    where Id=@Id
    and IsDeleted=0
    RETURN @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[Products_ReadAll]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Products_ReadAll]

AS 
BEGIN
    SET NOCOUNT ON;

     SELECT 
      ProductName, Price, StockQuantity, Category, 
      CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted

     FROM 
     Products
     
     where IsDeleted=0
END

GO
/****** Object:  StoredProcedure [dbo].[Products_ReadByID]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Products_ReadByID]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT 
        ProductName, Price, StockQuantity, Category, 
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
    FROM Products
    WHERE Id=@Id 
        AND IsDeleted=0
    END

GO
/****** Object:  StoredProcedure [dbo].[Products_ReadSearchOnPriceByPrice]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Products_ReadSearchOnPriceByPrice]

   @MinPrice DECIMAL(18,4),
   @MaxPrice DECIMAL(18,4)

AS 
BEGIN
    SET NOCOUNT ON;

    SELECT @MinPrice=0,
            @MaxPrice=MAX(Price)
        
    FROM Products
    WHERE Price BETWEEN  @MinPrice AND @MaxPrice
        AND IsDeleted=0
       
    END

GO
/****** Object:  StoredProcedure [dbo].[Products_ReadStockQuantity]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE    PROCEDURE [dbo].[Products_ReadStockQuantity]
   
AS 
BEGIN
    SET NOCOUNT ON;

    SELECT ProductName, Price, StockQuantity, Category, 
        CreatedBy,CreatedDate, ModifiedBy,ModifiedDate, IsDeleted
    FROM Products
    WHERE 
	StockQuantity<10
END

GO
/****** Object:  StoredProcedure [dbo].[Products_Update]    Script Date: 12-02-2026 22:15:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE [dbo].[Products_Update]
    @ProductName    VARCHAR(100),
    @Price          DECIMAL(18,4),
    @StockQuantity  INT,
    @Category       VARCHAR(300),
    @CreatedBy      VARCHAR(100),
    @CreatedDate    DATETIME,
    @ModifiedBy     VARCHAR(100),
    @ModifiedDate   DATETIME,
    @IsDeleted      BIT,
    @Id             INT  
AS 
BEGIN
    SET NOCOUNT ON;

    update Products
    set 
     ProductName=@ProductName
    ,Price=@Price
    ,StockQuantity=@StockQuantity
    ,Category=@Category
    ,CreatedBy=@CreatedBy
    ,CreatedDate=@CreatedDate
    ,ModifiedBy=@ModifiedBy
    ,ModifiedDate=@ModifiedDate
    ,IsDeleted=@IsDeleted
    where 
    Id=@Id

    RETURN @@ROWCOUNT


END
GO
