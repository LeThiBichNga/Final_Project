USE [ProjectFinal]
GO
/****** Object:  Table [dbo].[Config]    Script Date: 5/2/2021 1:39:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Config](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[Facebook] [nvarchar](500) NULL,
	[vnp_Url] [nvarchar](500) NULL,
	[vnp_Returnurl] [nvarchar](500) NULL,
	[vnpay_api_url] [nvarchar](500) NULL,
	[vnp_TmnCode] [nvarchar](500) NULL,
	[vnp_HashSecret] [nvarchar](500) NULL,
 CONSTRAINT [PK_Config] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 5/2/2021 1:39:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[Phone] [nvarchar](500) NULL,
	[Address] [nvarchar](500) NULL,
	[CreateDate] [datetime] NULL,
	[Content] [nvarchar](max) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewCategory]    Script Date: 5/2/2021 1:39:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_NewCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 5/2/2021 1:39:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[NewCategoryId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[LastEditdate] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[LastEditBy] [nvarchar](50) NULL,
	[Type] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 5/2/2021 1:39:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [nvarchar](200) NOT NULL,
	[TotalMoney] [money] NULL,
	[PaymentTypeId] [int] NULL,
	[PaymentStatusId] [int] NULL,
	[Phone] [nvarchar](500) NULL,
	[Name] [nvarchar](500) NULL,
	[Address] [nvarchar](500) NULL,
	[Email] [nvarchar](50) NULL,
	[CreateBy] [nvarchar](128) NULL,
	[CreateDate] [datetime] NULL,
	[LastEditBy] [nvarchar](128) NULL,
	[LastEditDate] [datetime] NULL,
	[ContentPayment] [nvarchar](500) NULL,
	[ServiceId] [bigint] NULL,
	[OrderCode] [nvarchar](100) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentBanking]    Script Date: 5/2/2021 1:39:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentBanking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentTypeId] [int] NULL,
	[BankCode] [nvarchar](200) NULL,
	[BankName] [nvarchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [uniqueidentifier] NULL,
	[LastEditDate] [datetime] NULL,
	[LastEditBy] [uniqueidentifier] NULL,
	[BankLogo] [nvarchar](200) NULL,
	[BankInfo] [nvarchar](200) NULL,
	[BankNumber] [nvarchar](50) NULL,
	[BankReceive] [nvarchar](200) NULL,
 CONSTRAINT [PK_PaymentBanking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentExpVat]    Script Date: 5/2/2021 1:39:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentExpVat](
	[PaymentExpVatId] [int] IDENTITY(1,1) NOT NULL,
	[OrderCode] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](200) NULL,
	[TaxCode] [nvarchar](50) NULL,
	[BuyerName] [nvarchar](100) NULL,
	[CompanyAddress] [nvarchar](200) NULL,
	[ReceiveBillAddress] [nvarchar](200) NULL,
	[CreateBy] [uniqueidentifier] NULL,
	[CreateDate] [datetime] NULL,
	[LastEditBy] [uniqueidentifier] NULL,
	[LastEditDate] [datetime] NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_PaymentExpVat] PRIMARY KEY CLUSTERED 
(
	[PaymentExpVatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentLog]    Script Date: 5/2/2021 1:39:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentLog](
	[PaymentLogId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [nvarchar](128) NULL,
	[Amount] [numeric](18, 0) NULL,
	[PaymentStatusId] [int] NULL,
	[PaymentTypeId] [int] NULL,
	[CustomerName] [nvarchar](500) NULL,
	[CreateBy] [nvarchar](128) NULL,
	[CreateDate] [datetime] NULL,
	[BankCode] [nvarchar](50) NULL,
	[BankTranNo] [nvarchar](50) NULL,
	[CardType] [nvarchar](50) NULL,
	[OrderInfo] [nvarchar](500) NULL,
	[TransactionNo] [nvarchar](50) NULL,
	[ResponseCode] [nvarchar](50) NULL,
	[TxnRef] [nvarchar](50) NULL,
 CONSTRAINT [PK_PaymentLog] PRIMARY KEY CLUSTERED 
(
	[PaymentLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentStatus]    Script Date: 5/2/2021 1:39:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentStatus](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_PaymentStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentType]    Script Date: 5/2/2021 1:39:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentType](
	[PaymentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
 CONSTRAINT [PK_PaymentType] PRIMARY KEY CLUSTERED 
(
	[PaymentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 5/2/2021 1:39:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Money] [money] NULL,
	[Descripttion] [nvarchar](max) NULL,
	[Image] [nvarchar](500) NULL,
	[CreateDate] [datetime] NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceCategory]    Script Date: 5/2/2021 1:39:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_ServiceCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/2/2021 1:39:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Pass] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video]    Script Date: 5/2/2021 1:39:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[Video] [nvarchar](500) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Video] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Config] ON 

INSERT [dbo].[Config] ([Id], [Phone], [Email], [Description], [Facebook], [vnp_Url], [vnp_Returnurl], [vnpay_api_url], [vnp_TmnCode], [vnp_HashSecret]) VALUES (8, N'0987654321', NULL, NULL, N'facebook.com', N'http://sandbox.vnpayment.vn/paymentv2/vpcpay.html', N'https://localhost:44365/Payment/ReturnUrl', N'https://merchant.vnpay.vn/merchant_webapi/merchant.html', N'ILOTT001', N'XREURTBXDHGJNDXCQQLJEAZUSVPHOERK')
SET IDENTITY_INSERT [dbo].[Config] OFF
GO
SET IDENTITY_INSERT [dbo].[NewCategory] ON 

INSERT [dbo].[NewCategory] ([Id], [Name], [Description], [Status]) VALUES (1, N'Danh mục 1', N'có', 1)
SET IDENTITY_INSERT [dbo].[NewCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([Id], [Title], [Description], [Detail], [NewCategoryId], [CreateDate], [LastEditdate], [CreateBy], [LastEditBy], [Type], [Status]) VALUES (1, N'gggg', N'ko', N'<p>kokk</p>', 1, CAST(N'2021-04-18T17:17:08.937' AS DateTime), CAST(N'2021-05-02T12:08:38.430' AS DateTime), NULL, NULL, 1, 1)
INSERT [dbo].[News] ([Id], [Title], [Description], [Detail], [NewCategoryId], [CreateDate], [LastEditdate], [CreateBy], [LastEditBy], [Type], [Status]) VALUES (2, N'gggg', N'k', N'<p>kk</p>', 1, CAST(N'2021-04-19T23:04:34.867' AS DateTime), NULL, NULL, NULL, 1, 1)
INSERT [dbo].[News] ([Id], [Title], [Description], [Detail], [NewCategoryId], [CreateDate], [LastEditdate], [CreateBy], [LastEditBy], [Type], [Status]) VALUES (3, N'gggg', N'k', N'<p>kk</p>', 1, CAST(N'2021-04-19T23:04:34.867' AS DateTime), NULL, NULL, NULL, 1, 1)
INSERT [dbo].[News] ([Id], [Title], [Description], [Detail], [NewCategoryId], [CreateDate], [LastEditdate], [CreateBy], [LastEditBy], [Type], [Status]) VALUES (4, N'gggg', N'ko', N'<p>kokk</p>', 1, CAST(N'2021-04-18T17:17:08.937' AS DateTime), CAST(N'2021-05-02T12:08:38.430' AS DateTime), NULL, NULL, 1, 1)
INSERT [dbo].[News] ([Id], [Title], [Description], [Detail], [NewCategoryId], [CreateDate], [LastEditdate], [CreateBy], [LastEditBy], [Type], [Status]) VALUES (5, N'gggg', N'k', N'<p>kk</p>', 1, CAST(N'2021-04-19T23:04:34.867' AS DateTime), NULL, NULL, NULL, 1, 1)
INSERT [dbo].[News] ([Id], [Title], [Description], [Detail], [NewCategoryId], [CreateDate], [LastEditdate], [CreateBy], [LastEditBy], [Type], [Status]) VALUES (6, N'gggg', N'k', N'<p>kk</p>', 1, CAST(N'2021-04-19T23:04:34.867' AS DateTime), NULL, NULL, NULL, 1, 1)
INSERT [dbo].[News] ([Id], [Title], [Description], [Detail], [NewCategoryId], [CreateDate], [LastEditdate], [CreateBy], [LastEditBy], [Type], [Status]) VALUES (7, N'gggg', N'ko', N'<p>kokk</p>', 1, CAST(N'2021-04-18T17:17:08.937' AS DateTime), CAST(N'2021-05-02T12:08:38.430' AS DateTime), NULL, NULL, 1, 1)
INSERT [dbo].[News] ([Id], [Title], [Description], [Detail], [NewCategoryId], [CreateDate], [LastEditdate], [CreateBy], [LastEditBy], [Type], [Status]) VALUES (8, N'gggg', N'k', N'<p>kk</p>', 1, CAST(N'2021-04-19T23:04:34.867' AS DateTime), NULL, NULL, NULL, 1, 1)
INSERT [dbo].[News] ([Id], [Title], [Description], [Detail], [NewCategoryId], [CreateDate], [LastEditdate], [CreateBy], [LastEditBy], [Type], [Status]) VALUES (9, N'gggg', N'k', N'<p>kk</p>', 1, CAST(N'2021-04-19T23:04:34.867' AS DateTime), NULL, NULL, NULL, 1, 1)
INSERT [dbo].[News] ([Id], [Title], [Description], [Detail], [NewCategoryId], [CreateDate], [LastEditdate], [CreateBy], [LastEditBy], [Type], [Status]) VALUES (10, N'gggg', N'ko', N'<p>kokk</p>', 1, CAST(N'2021-04-18T17:17:08.937' AS DateTime), CAST(N'2021-05-02T12:08:38.430' AS DateTime), NULL, NULL, 1, 1)
INSERT [dbo].[News] ([Id], [Title], [Description], [Detail], [NewCategoryId], [CreateDate], [LastEditdate], [CreateBy], [LastEditBy], [Type], [Status]) VALUES (11, N'gggg', N'k', N'<p>kk</p>', 1, CAST(N'2021-04-19T23:04:34.867' AS DateTime), NULL, NULL, NULL, 1, 1)
INSERT [dbo].[News] ([Id], [Title], [Description], [Detail], [NewCategoryId], [CreateDate], [LastEditdate], [CreateBy], [LastEditBy], [Type], [Status]) VALUES (12, N'gggg', N'k', N'<p>kk</p>', 1, CAST(N'2021-04-19T23:04:34.867' AS DateTime), NULL, NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[News] OFF
GO
INSERT [dbo].[Order] ([OrderId], [TotalMoney], [PaymentTypeId], [PaymentStatusId], [Phone], [Name], [Address], [Email], [CreateBy], [CreateDate], [LastEditBy], [LastEditDate], [ContentPayment], [ServiceId], [OrderCode]) VALUES (N'32ca60d3-1b4b-4c6f-8df0-976beac52f77', 1000000.0000, 3, 1, N'0987654321', N'ABCgggg', N'gggg', NULL, NULL, CAST(N'2021-02-25T20:58:27.797' AS DateTime), NULL, CAST(N'2021-02-25T20:58:27.797' AS DateTime), N'gggg', 5, NULL)
INSERT [dbo].[Order] ([OrderId], [TotalMoney], [PaymentTypeId], [PaymentStatusId], [Phone], [Name], [Address], [Email], [CreateBy], [CreateDate], [LastEditBy], [LastEditDate], [ContentPayment], [ServiceId], [OrderCode]) VALUES (N'5854f877-0a60-4160-8027-52dd2e0fa753', 1000000.0000, 3, 1, N'0987654321', N'ABC', N'ạkabsfjkabsjkfbsajkb', NULL, NULL, CAST(N'2021-02-25T16:13:02.413' AS DateTime), NULL, CAST(N'2021-02-25T16:13:02.413' AS DateTime), N'snfjasnfnaslkfn', 5, NULL)
INSERT [dbo].[Order] ([OrderId], [TotalMoney], [PaymentTypeId], [PaymentStatusId], [Phone], [Name], [Address], [Email], [CreateBy], [CreateDate], [LastEditBy], [LastEditDate], [ContentPayment], [ServiceId], [OrderCode]) VALUES (N'59aa672e-568f-4290-aa7e-f31a109e16f6', 1000000.0000, 3, 1, N'0333749728', N'Do Van Nghia', N'Yen My,Hung yen', N'nghiadv1006@gmail.com', NULL, CAST(N'2021-03-07T21:51:04.413' AS DateTime), NULL, CAST(N'2021-03-07T21:51:04.413' AS DateTime), N'gggg', 10, NULL)
INSERT [dbo].[Order] ([OrderId], [TotalMoney], [PaymentTypeId], [PaymentStatusId], [Phone], [Name], [Address], [Email], [CreateBy], [CreateDate], [LastEditBy], [LastEditDate], [ContentPayment], [ServiceId], [OrderCode]) VALUES (N'73931308-4665-4230-94c4-b79524789774', 1000000.0000, 3, 0, N'0987654321', N'ABCgggg', N'gggg', NULL, NULL, CAST(N'2021-02-25T21:13:12.407' AS DateTime), NULL, CAST(N'2021-02-25T21:13:12.407' AS DateTime), N'gggg', 5, NULL)
INSERT [dbo].[Order] ([OrderId], [TotalMoney], [PaymentTypeId], [PaymentStatusId], [Phone], [Name], [Address], [Email], [CreateBy], [CreateDate], [LastEditBy], [LastEditDate], [ContentPayment], [ServiceId], [OrderCode]) VALUES (N'797eab61-60a4-48b8-818f-8203c6db1ebb', 1000000.0000, 3, 0, N'0987654321', N'ABC', N'ạkabsfjkabsjkfbsajkb', NULL, NULL, CAST(N'2021-02-23T22:58:02.227' AS DateTime), NULL, CAST(N'2021-02-23T22:58:02.227' AS DateTime), N'snfjasnfnaslkfn', 5, NULL)
INSERT [dbo].[Order] ([OrderId], [TotalMoney], [PaymentTypeId], [PaymentStatusId], [Phone], [Name], [Address], [Email], [CreateBy], [CreateDate], [LastEditBy], [LastEditDate], [ContentPayment], [ServiceId], [OrderCode]) VALUES (N'79dcd615-5f89-4d01-8017-92100d1d0c35', 1000000.0000, 3, 0, N'0987654321', N'ABC', N'ạkabsfjkabsjkfbsajkb', NULL, NULL, CAST(N'2021-02-23T23:08:52.740' AS DateTime), NULL, CAST(N'2021-02-23T23:08:53.293' AS DateTime), N'snfjasnfnaslkfn', 5, NULL)
INSERT [dbo].[Order] ([OrderId], [TotalMoney], [PaymentTypeId], [PaymentStatusId], [Phone], [Name], [Address], [Email], [CreateBy], [CreateDate], [LastEditBy], [LastEditDate], [ContentPayment], [ServiceId], [OrderCode]) VALUES (N'7e316f2a-f89b-4c1e-b393-8978ae9cdfcb', 1000000.0000, 3, 0, N'0987654321', N'ABC', N'ạkabsfjkabsjkfbsajkb', NULL, NULL, CAST(N'2021-02-23T23:03:00.480' AS DateTime), NULL, CAST(N'2021-02-23T23:03:00.723' AS DateTime), N'snfjasnfnaslkfn', 5, NULL)
INSERT [dbo].[Order] ([OrderId], [TotalMoney], [PaymentTypeId], [PaymentStatusId], [Phone], [Name], [Address], [Email], [CreateBy], [CreateDate], [LastEditBy], [LastEditDate], [ContentPayment], [ServiceId], [OrderCode]) VALUES (N'90e3f7d0-2dcd-47b9-a54c-765321766742', 1000000.0000, 3, 1, N'0333749728', N'Do Van Nghia', N'Yen My,Hung yen', NULL, NULL, CAST(N'2021-03-07T21:43:13.790' AS DateTime), NULL, CAST(N'2021-03-07T21:43:13.790' AS DateTime), N'gggg', 14, NULL)
INSERT [dbo].[Order] ([OrderId], [TotalMoney], [PaymentTypeId], [PaymentStatusId], [Phone], [Name], [Address], [Email], [CreateBy], [CreateDate], [LastEditBy], [LastEditDate], [ContentPayment], [ServiceId], [OrderCode]) VALUES (N'99cc5e78-5356-4583-b693-fe622093e200', 1000000.0000, 3, 1, N'0333749728', N'Do Van Nghia', N'Yen My,Hung yen', NULL, NULL, CAST(N'2021-03-07T21:31:50.870' AS DateTime), NULL, CAST(N'2021-03-07T21:31:50.870' AS DateTime), N'gggg', 11, NULL)
INSERT [dbo].[Order] ([OrderId], [TotalMoney], [PaymentTypeId], [PaymentStatusId], [Phone], [Name], [Address], [Email], [CreateBy], [CreateDate], [LastEditBy], [LastEditDate], [ContentPayment], [ServiceId], [OrderCode]) VALUES (N'b653042f-3125-4016-a188-8d0c1544937b', 1000000.0000, 3, 0, N'0987654321', N'ABCdđ', N'ạkabsfjkabsjkfbsajkb', NULL, NULL, CAST(N'2021-02-25T20:54:57.763' AS DateTime), NULL, CAST(N'2021-02-25T20:54:57.763' AS DateTime), N'snfjasnfnaslkfn', 5, NULL)
INSERT [dbo].[Order] ([OrderId], [TotalMoney], [PaymentTypeId], [PaymentStatusId], [Phone], [Name], [Address], [Email], [CreateBy], [CreateDate], [LastEditBy], [LastEditDate], [ContentPayment], [ServiceId], [OrderCode]) VALUES (N'e1508f55-b590-4628-83af-807178eff54d', 100000.0000, 3, 1, N'0987654321', N'Hoàng Văn Minh', N'ưdgqwjkdwqjkdb', N'abdksadkashd@gmail.com', NULL, CAST(N'2021-05-02T10:52:41.513' AS DateTime), NULL, CAST(N'2021-05-02T10:52:41.513' AS DateTime), N'jkkabdkad', 5, NULL)
INSERT [dbo].[Order] ([OrderId], [TotalMoney], [PaymentTypeId], [PaymentStatusId], [Phone], [Name], [Address], [Email], [CreateBy], [CreateDate], [LastEditBy], [LastEditDate], [ContentPayment], [ServiceId], [OrderCode]) VALUES (N'eef0b2fb-2d9d-4f1a-92eb-4442e69f3509', 1000000.0000, 3, 1, N'0987654321', N'ABC', N'ạkabsfjkabsjkfbsajkb', NULL, NULL, CAST(N'2021-02-23T21:44:08.157' AS DateTime), NULL, CAST(N'2021-02-23T21:44:08.157' AS DateTime), N'snfjasnfnaslkfn', 5, NULL)
GO
SET IDENTITY_INSERT [dbo].[PaymentBanking] ON 

INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (1, 1, N'ABBANK', N'Ngân hàng thương mại cổ phần An Bình (ABBANK)', CAST(N'2020-07-17T14:18:29.523' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.523' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (2, 1, N'ACB', N'Ngân hàng ACB', CAST(N'2020-07-17T14:18:29.523' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.523' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (3, 1, N'AGRIBANK', N'Ngân hàng Nông nghiệp (Agribank)', CAST(N'2020-07-17T14:18:29.527' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.527' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (4, 1, N'BACABANK', N'Ngân Hàng TMCP Bắc Á', CAST(N'2020-07-17T14:18:29.527' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.527' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (5, 1, N'BIDV', N'Ngân hàng đầu tư và phát triển Việt Nam (BIDV)', CAST(N'2020-07-17T14:18:29.530' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.530' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (6, 1, N'DONGABANK', N'Ngân hàng Đông Á (DongABank)', CAST(N'2020-07-17T14:18:29.537' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.537' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (7, 1, N'EXIMBANK', N'Ngân hàng EximBank', CAST(N'2020-07-17T14:18:29.540' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.540' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (8, 1, N'HDBANK', N'Ngân hàng HDBank', CAST(N'2020-07-17T14:18:29.550' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.550' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (9, 1, N'IVB', N'Ngân hàng TNHH Indovina (IVB)', CAST(N'2020-07-17T14:18:29.563' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.563' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (10, 1, N'MBBANK', N'Ngân hàng thương mại cổ phần Quân đội', CAST(N'2020-07-17T14:18:29.570' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.570' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (11, 1, N'NAMABANK', N'Ngân hàng Nam Á (NamABank)', CAST(N'2020-07-17T14:18:29.583' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.583' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (12, 1, N'NCB', N'Ngân hàng Quốc dân (NCB)', CAST(N'2020-07-17T14:18:29.593' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.593' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (13, 1, N'OCB', N'Ngân hàng Phương Đông (OCB)', CAST(N'2020-07-17T14:18:29.613' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.613' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (14, 1, N'OJB', N'Ngân hàng Đại Dương (OceanBank)', CAST(N'2020-07-17T14:18:29.627' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.627' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (15, 1, N'PVCOMBANK', N'Ngân hàng TMCP Đại Chúng Việt Nam', CAST(N'2020-07-17T14:18:29.643' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.643' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (16, 1, N'SACOMBANK', N'Ngân hàng TMCP Sài Gòn Thương Tín (SacomBank)', CAST(N'2020-07-17T14:18:29.660' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.660' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (17, 1, N'SAIGONBANK', N'Ngân hàng thương mại cổ phần Sài Gòn Công Thương', CAST(N'2020-07-17T14:18:29.677' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.677' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (18, 1, N'SCB', N'Ngân hàng TMCP Sài Gòn (SCB)', CAST(N'2020-07-17T14:18:29.687' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.687' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (19, 1, N'SHB', N'Ngân hàng Thương mại cổ phần Sài Gòn - Hà Nội(SHB)', CAST(N'2020-07-17T14:18:29.693' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.693' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (20, 1, N'TECHCOMBANK', N'Ngân hàng Kỹ thương Việt Nam (TechcomBank)', CAST(N'2020-07-17T14:18:29.703' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.703' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (21, 1, N'TPBANK', N'Ngân hàng Tiên Phong (TPBank)', CAST(N'2020-07-17T14:18:29.713' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.713' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (22, 1, N'VPBANK', N'Ngân hàng Việt Nam Thịnh vượng (VPBank)', CAST(N'2020-07-17T14:18:29.720' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.720' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (23, 1, N'SEABANK', N'Ngân Hàng TMCP Đông Nam Á', CAST(N'2020-07-17T14:18:29.730' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.730' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (24, 1, N'VIB', N'Ngân hàng Thương mại cổ phần Quốc tế Việt Nam (VIB)', CAST(N'2020-07-17T14:18:29.743' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.743' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (25, 1, N'VIETABANK', N'Ngân hàng TMCP Việt Á', CAST(N'2020-07-17T14:18:29.753' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.753' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (26, 1, N'VIETBANK', N'Ngân hàng thương mại cổ phần Việt Nam Thương Tín', CAST(N'2020-07-17T14:18:29.770' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.770' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (27, 1, N'VIETCAPITALBANK', N'Ngân Hàng Bản Việt', CAST(N'2020-07-17T14:18:29.783' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.783' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (28, 1, N'VIETCOMBANK', N'Ngân hàng Ngoại thương (Vietcombank)', CAST(N'2020-07-17T14:18:29.797' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.797' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (29, 1, N'VIETINBANK', N'Ngân hàng Công thương (Vietinbank)', CAST(N'2020-07-17T14:18:29.810' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.810' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (30, 1, N'BIDC', N'Ngân Hàng BIDC', CAST(N'2020-07-17T14:18:29.817' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.817' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (31, 1, N'LAOVIETBANK', N'NGÂN HÀNG LIÊN DOANH LÀO - VIỆT', CAST(N'2020-07-17T14:18:29.823' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.823' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (32, 1, N'WOORIBANK', N'Ngân hàng TNHH MTV Woori Việt Nam', CAST(N'2020-07-17T14:18:29.827' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.827' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (33, 2, N'AMEX', N'American Express', CAST(N'2020-07-17T14:18:29.827' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.827' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (34, 2, N'VISA', N'Thẻ quốc tế Visa', CAST(N'2020-07-17T14:18:29.840' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.840' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (35, 2, N'MASTERCARD', N'Thẻ quốc tế MasterCard', CAST(N'2020-07-17T14:18:29.847' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.847' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (36, 2, N'JCB', N'Thẻ quốc tế JCB', CAST(N'2020-07-17T14:18:29.847' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.847' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (37, 2, N'UPI', N'UnionPay International', CAST(N'2020-07-17T14:18:29.847' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.847' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PaymentBanking] ([Id], [PaymentTypeId], [BankCode], [BankName], [CreateDate], [CreateBy], [LastEditDate], [LastEditBy], [BankLogo], [BankInfo], [BankNumber], [BankReceive]) VALUES (38, 3, N'VNPAYQR', N'Ví điện tử VNPAY', CAST(N'2020-07-17T14:18:29.850' AS DateTime), NULL, CAST(N'2020-07-17T14:18:29.850' AS DateTime), NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PaymentBanking] OFF
GO
INSERT [dbo].[PaymentStatus] ([Id], [Name]) VALUES (-1, N'Thanh toán không thành công')
INSERT [dbo].[PaymentStatus] ([Id], [Name]) VALUES (0, N'Chờ thanh toán')
INSERT [dbo].[PaymentStatus] ([Id], [Name]) VALUES (1, N'Đã thanh toán')
GO
SET IDENTITY_INSERT [dbo].[PaymentType] ON 

INSERT [dbo].[PaymentType] ([PaymentTypeId], [Name]) VALUES (1, N'Thẻ ATM nội địa')
INSERT [dbo].[PaymentType] ([PaymentTypeId], [Name]) VALUES (2, N'Thẻ tín dụng')
INSERT [dbo].[PaymentType] ([PaymentTypeId], [Name]) VALUES (3, N'Ví điện tử')
SET IDENTITY_INSERT [dbo].[PaymentType] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([Id], [Name], [Money], [Descripttion], [Image], [CreateDate], [FromDate], [ToDate], [Status]) VALUES (1, N'Chiến dịch từ thiện vùng cao', 100000000.0000, N'Mấy ngày này, các tác viên của Quỹ Từ Thiện Việt Nam lần lượt ra Hà Nội để hỗ trợ Quán Yên Vui Đống Đa Hà Nội mở bán thử vào ngày 14/12/2020.', N'/UploadFiles/Screenshot (98)213641053.png', CAST(N'2021-01-27T00:00:00.000' AS DateTime), CAST(N'2021-04-23T10:36:00.000' AS DateTime), CAST(N'2021-04-30T10:36:00.000' AS DateTime), 1)
INSERT [dbo].[Service] ([Id], [Name], [Money], [Descripttion], [Image], [CreateDate], [FromDate], [ToDate], [Status]) VALUES (2, N'Chiến dịch phát cơm từ thiện', 100000000.0000, N'Mấy ngày này, các tác viên của Quỹ Từ Thiện Việt Nam lần lượt ra Hà Nội để hỗ trợ Quán Yên Vui Đống Đa Hà Nội mở bán thử vào ngày 14/12/2020.', N'/UploadFiles/Screenshot (97)213714936.png', CAST(N'2021-01-27T00:00:00.000' AS DateTime), CAST(N'2021-04-10T10:44:00.000' AS DateTime), CAST(N'2021-04-18T10:44:00.000' AS DateTime), 1)
INSERT [dbo].[Service] ([Id], [Name], [Money], [Descripttion], [Image], [CreateDate], [FromDate], [ToDate], [Status]) VALUES (3, N'Quán Yên Vui Đống Đa – Hà Nội', 100000000.0000, N'Mấy ngày này, các tác viên của Quỹ Từ Thiện Việt Nam lần lượt ra Hà Nội để hỗ trợ Quán Yên Vui Đống Đa Hà Nội mở bán thử vào ngày 14/12/2020.', N'/UploadFiles/Screenshot (97)213556427.png', CAST(N'2021-01-27T00:00:00.000' AS DateTime), CAST(N'2021-04-23T10:35:00.000' AS DateTime), CAST(N'2021-04-30T10:35:00.000' AS DateTime), 1)
INSERT [dbo].[Service] ([Id], [Name], [Money], [Descripttion], [Image], [CreateDate], [FromDate], [ToDate], [Status]) VALUES (4, N'Chiến dịch ủng hộ miền Trung', 100000000.0000, N'Mấy ngày này, các tác viên của Quỹ Từ Thiện Việt Nam lần lượt ra Hà Nội để hỗ trợ Quán Yên Vui Đống Đa Hà Nội mở bán thử vào ngày 14/12/2020.', N'/UploadFiles/Screenshot (98)213517263.png', CAST(N'2021-01-27T00:00:00.000' AS DateTime), CAST(N'2021-04-15T10:34:00.000' AS DateTime), CAST(N'2021-04-29T10:35:00.000' AS DateTime), 1)
INSERT [dbo].[Service] ([Id], [Name], [Money], [Descripttion], [Image], [CreateDate], [FromDate], [ToDate], [Status]) VALUES (5, N'Quán Yên Vui Đống Đa – Hà Nội', 100000000.0000, N'Mấy ngày này, các tác viên của Quỹ Từ Thiện Việt Nam lần lượt ra Hà Nội để hỗ trợ Quán Yên Vui Đống Đa Hà Nội mở bán thử vào ngày 14/12/2020.', N'/UploadFiles/Screenshot (43)212402655.png', CAST(N'2021-01-27T00:00:00.000' AS DateTime), CAST(N'2021-04-03T10:23:00.000' AS DateTime), CAST(N'2021-04-15T10:23:00.000' AS DateTime), 1)
INSERT [dbo].[Service] ([Id], [Name], [Money], [Descripttion], [Image], [CreateDate], [FromDate], [ToDate], [Status]) VALUES (12, N'Do Van Nghia', 66666.0000, N'ko', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
INSERT [dbo].[User] ([Id], [UserName], [Pass], [CreateDate], [Status]) VALUES (1, N'admin', N'123', CAST(N'2021-03-14T00:00:00.000' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[Video] ON 

INSERT [dbo].[Video] ([Id], [Name], [Description], [Video], [Status]) VALUES (1, N'Video 1', N'<p>ko</p>', N'https://www.youtube.com/embed/Aexxa7vzUVM', 1)
INSERT [dbo].[Video] ([Id], [Name], [Description], [Video], [Status]) VALUES (2, N'Video 2', N'<p>ko</p>', N'https://www.youtube.com/watch?v=BnWiFq0AxQc', 1)
INSERT [dbo].[Video] ([Id], [Name], [Description], [Video], [Status]) VALUES (3, N'Video 1', N'<p>ko</p>', N'https://www.youtube.com/embed/Aexxa7vzUVM', 1)
INSERT [dbo].[Video] ([Id], [Name], [Description], [Video], [Status]) VALUES (4, N'Video 2', N'<p>ko</p>', N'https://www.youtube.com/watch?v=BnWiFq0AxQc', 1)
INSERT [dbo].[Video] ([Id], [Name], [Description], [Video], [Status]) VALUES (5, N'Video 1', N'<p>ko</p>', N'https://www.youtube.com/embed/Aexxa7vzUVM', 1)
INSERT [dbo].[Video] ([Id], [Name], [Description], [Video], [Status]) VALUES (6, N'Video 2', N'<p>ko</p>', N'https://www.youtube.com/watch?v=BnWiFq0AxQc', 1)
INSERT [dbo].[Video] ([Id], [Name], [Description], [Video], [Status]) VALUES (7, N'Video 1', N'<p>ko</p>', N'https://www.youtube.com/embed/Aexxa7vzUVM', 1)
INSERT [dbo].[Video] ([Id], [Name], [Description], [Video], [Status]) VALUES (8, N'Video 2', N'<p>ko</p>', N'https://www.youtube.com/watch?v=BnWiFq0AxQc', 1)
INSERT [dbo].[Video] ([Id], [Name], [Description], [Video], [Status]) VALUES (9, N'Video 1', N'<p>ko</p>', N'https://www.youtube.com/embed/Aexxa7vzUVM', 1)
INSERT [dbo].[Video] ([Id], [Name], [Description], [Video], [Status]) VALUES (10, N'Video 2', N'<p>ko</p>', N'https://www.youtube.com/watch?v=BnWiFq0AxQc', 1)
SET IDENTITY_INSERT [dbo].[Video] OFF
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_News_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[PaymentLog] ADD  CONSTRAINT [DF_PaymentLog_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_NewCategory] FOREIGN KEY([NewCategoryId])
REFERENCES [dbo].[NewCategory] ([Id])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_NewCategory]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PaymentStatus] FOREIGN KEY([PaymentStatusId])
REFERENCES [dbo].[PaymentStatus] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PaymentStatus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PaymentType] FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentType] ([PaymentTypeId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PaymentType]
GO
ALTER TABLE [dbo].[PaymentBanking]  WITH CHECK ADD  CONSTRAINT [FK_PaymentBanking_PaymentType] FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentType] ([PaymentTypeId])
GO
ALTER TABLE [dbo].[PaymentBanking] CHECK CONSTRAINT [FK_PaymentBanking_PaymentType]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'getdate()' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Service'
GO
