
/****** Object:  Table [dbo].[Accounting]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounting](
	[AccountingID] [int] IDENTITY(1,1) NOT NULL,
	[CreateUserID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Del] [int] NULL,
	[CategoryID] [int] NULL,
	[AccountingTitle] [nvarchar](200) NULL,
	[AccountingPrice] [decimal](18, 2) NULL,
	[AccountingTime] [datetime] NULL,
	[AccountingType] [int] NULL,
	[AccountingFiles] [nvarchar](max) NULL,
	[AccountingDesn] [nvarchar](500) NULL,
	[Auditor] [int] NULL,
	[AuditStatus] [int] NULL,
	[AuditTime] [datetime] NULL,
	[AuditDesn] [nvarchar](500) NULL,
 CONSTRAINT [PK__Accounti__F309AA69104A4721] PRIMARY KEY CLUSTERED 
(
	[AccountingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountingCategory]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountingCategory](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CreateUserID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Del] [int] NULL,
	[ParentID] [int] NULL,
	[Depths] [int] NULL,
	[ParentIDs] [nvarchar](2000) NULL,
	[ParentIDFirst] [int] NULL,
	[CategoryTitle] [nvarchar](50) NULL,
	[Sorts] [int] NULL,
	[CategoryDesn] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountingCategoryLog]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountingCategoryLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LogDate] [datetime] NULL,
	[LogUserID] [int] NULL,
	[LogAbout] [nvarchar](200) NULL,
	[CategoryID] [int] NOT NULL,
	[CreateUserID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Del] [int] NULL,
	[ParentID] [int] NULL,
	[Depths] [int] NULL,
	[ParentIDs] [nvarchar](2000) NULL,
	[ParentIDFirst] [int] NULL,
	[CategoryTitle] [nvarchar](50) NULL,
	[Sorts] [int] NULL,
	[CategoryDesn] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountingLog]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountingLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LogDate] [datetime] NULL,
	[LogUserID] [int] NULL,
	[LogAbout] [nvarchar](200) NULL,
	[AccountingID] [int] NOT NULL,
	[CreateUserID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Del] [int] NULL,
	[CategoryID] [int] NULL,
	[AccountingTitle] [nvarchar](200) NULL,
	[AccountingPrice] [decimal](18, 2) NULL,
	[AccountingTime] [datetime] NULL,
	[AccountingType] [int] NULL,
	[AccountingFiles] [nvarchar](max) NULL,
	[AccountingDesn] [nvarchar](500) NULL,
	[Auditor] [int] NULL,
	[AuditStatus] [int] NULL,
	[AuditTime] [datetime] NULL,
	[AuditDesn] [nvarchar](500) NULL,
 CONSTRAINT [PK__Accounti__3214EC27495BD33C] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[CreateUserID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Del] [int] NULL,
	[AdminName] [nvarchar](50) NULL,
	[AdminNick] [nvarchar](50) NULL,
	[PassWord] [nvarchar](200) NULL,
	[RoleID] [int] NULL,
	[Statues] [int] NULL,
	[LoginAttempts] [int] NULL,
	[LoginAttemptsLast] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminPower]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminPower](
	[PowerID] [int] NOT NULL,
	[CreateUserID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Del] [int] NULL,
	[ParentID] [int] NULL,
	[PowerTitle] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminRoles]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminRoles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[CreateUserID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Del] [int] NULL,
	[RolesTitle] [nvarchar](50) NULL,
	[Powers] [nvarchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounting] ON 
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (1, 1, CAST(N'2025-01-23T14:05:17.747' AS DateTime), 1, CAST(N'2025-01-23T14:05:33.937' AS DateTime), 0, 3, N'Sunuer.com', CAST(79.00 AS Decimal(18, 2)), CAST(N'2025-01-23T14:04:50.000' AS DateTime), 1, N'', N'Domain Renewal', 1, 1, CAST(N'2025-01-23T14:05:33.937' AS DateTime), N'OK')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (2, 4, CAST(N'2025-01-23T15:09:19.503' AS DateTime), 1, CAST(N'2025-01-23T15:14:55.603' AS DateTime), 0, 1, N'Charging', CAST(1000.00 AS Decimal(18, 2)), CAST(N'2025-01-23T15:08:51.000' AS DateTime), 1, N'', N'1', 1, 1, CAST(N'2025-01-23T15:14:55.603' AS DateTime), N'')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (3, 4, CAST(N'2025-01-24T17:25:36.157' AS DateTime), 0, NULL, 0, 15, N'Printing Paper', CAST(102.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:25:19.000' AS DateTime), 1, N'', N'', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (4, 4, CAST(N'2025-01-24T17:26:29.510' AS DateTime), 0, NULL, 0, 8, N'2025.01', CAST(500.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:25:55.000' AS DateTime), 1, N'', N'', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (5, 4, CAST(N'2025-01-24T17:26:53.867' AS DateTime), 4, CAST(N'2025-01-24T17:27:18.920' AS DateTime), 0, 9, N'2025.01', CAST(10000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:26:34.000' AS DateTime), 1, N'', N'', 0, 0, NULL, N'')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (6, 4, CAST(N'2025-01-24T17:27:12.503' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.060' AS DateTime), 0, 10, N'2025.01', CAST(9000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:26:57.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.060' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (7, 4, CAST(N'2025-01-24T17:27:40.913' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.060' AS DateTime), 0, 11, N'2025.01', CAST(8000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:27:23.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.060' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (8, 4, CAST(N'2025-01-24T17:28:00.530' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.057' AS DateTime), 0, 17, N'2025.01', CAST(9000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:27:48.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.057' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (9, 4, CAST(N'2025-01-24T17:28:16.643' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.057' AS DateTime), 0, 18, N'2025.01', CAST(0.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:28:04.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.057' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (10, 5, CAST(N'2025-01-24T17:29:53.760' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), 0, 5, N'Sunuer2025', CAST(3000.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:29:22.000' AS DateTime), 1, N'', N'Sunuer服务器支出', 1, 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (11, 5, CAST(N'2025-01-24T17:30:46.080' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), 0, 3, N'iwantstudy.com', CAST(79.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:29:57.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (12, 5, CAST(N'2025-01-24T17:31:19.450' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), 0, 22, N'Train Ticket202501', CAST(150.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:30:52.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (13, 5, CAST(N'2025-01-24T17:31:45.367' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), 0, 22, N'Flight Ticket202501', CAST(1600.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:31:22.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.053' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (14, 5, CAST(N'2025-01-24T17:32:38.140' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), 0, 24, N'2 Servers', CAST(19600.00 AS Decimal(18, 2)), CAST(N'2025-01-24T17:32:15.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (15, 1, CAST(N'2025-01-25T14:24:44.957' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), 0, 30, N'MES Contract', CAST(1000000.00 AS Decimal(18, 2)), CAST(N'2025-01-25T14:24:04.000' AS DateTime), 2, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (16, 1, CAST(N'2025-01-25T14:25:28.277' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), 0, 31, N'Project Contract', CAST(100000.00 AS Decimal(18, 2)), CAST(N'2025-01-25T14:25:04.000' AS DateTime), 2, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (17, 1, CAST(N'2025-01-25T14:26:24.913' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), 0, 30, N'First Payment of MES', CAST(300000.00 AS Decimal(18, 2)), CAST(N'2025-01-25T14:25:54.000' AS DateTime), 0, N'', N'30%', 1, 1, CAST(N'2025-02-20T19:37:38.050' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (18, 1, CAST(N'2025-02-15T16:24:53.647' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.047' AS DateTime), 0, 30, N'Second Payment of MES', CAST(200000.00 AS Decimal(18, 2)), CAST(N'2025-01-06T00:00:00.000' AS DateTime), 0, NULL, N'', 1, 1, CAST(N'2025-02-20T19:37:38.047' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (19, 1, CAST(N'2025-02-15T16:26:33.793' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.047' AS DateTime), 0, 0, N'Second Payment of MES', CAST(200000.00 AS Decimal(18, 2)), CAST(N'2025-02-15T16:26:33.780' AS DateTime), 0, NULL, N'', 1, 1, CAST(N'2025-02-20T19:37:38.047' AS DateTime), N'1')
GO
INSERT [dbo].[Accounting] ([AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn]) VALUES (20, 1, CAST(N'2025-02-20T19:37:08.913' AS DateTime), 1, CAST(N'2025-02-20T19:37:38.043' AS DateTime), 0, 22, N'Business Trip', CAST(300.00 AS Decimal(18, 2)), CAST(N'2025-02-20T19:36:33.000' AS DateTime), 1, N'', N'', 1, 1, CAST(N'2025-02-20T19:37:38.043' AS DateTime), N'1')
GO
SET IDENTITY_INSERT [dbo].[Accounting] OFF
GO
SET IDENTITY_INSERT [dbo].[AccountingCategory] ON 
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (1, 1, CAST(N'2025-01-23T13:48:23.733' AS DateTime), 0, NULL, 0, 0, 1, N'0', 1, N'Daily Expenses', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (2, 1, CAST(N'2025-01-23T13:48:39.747' AS DateTime), 0, NULL, 0, 0, 1, N'0', 2, N'Internet', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (3, 1, CAST(N'2025-01-23T13:48:47.950' AS DateTime), 0, NULL, 0, 2, 2, N'0,2', 2, N'Domain', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (4, 1, CAST(N'2025-01-23T13:48:55.420' AS DateTime), 0, NULL, 0, 2, 2, N'0,2', 2, N'Hosting', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (5, 1, CAST(N'2025-01-23T13:49:02.117' AS DateTime), 0, NULL, 0, 2, 2, N'0,2', 2, N'Server', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (6, 1, CAST(N'2025-01-23T13:54:41.950' AS DateTime), 1, CAST(N'2025-01-24T17:05:26.877' AS DateTime), 0, 0, 1, N'0', 6, N'Social Relations', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (7, 1, CAST(N'2025-01-23T13:55:01.290' AS DateTime), 0, NULL, 0, 0, 1, N'0', 7, N'Salary', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (8, 1, CAST(N'2025-01-23T13:55:12.497' AS DateTime), 0, NULL, 0, 7, 2, N'0,7', 7, N'Accounting', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (9, 1, CAST(N'2025-01-23T13:55:29.513' AS DateTime), 1, CAST(N'2025-01-24T17:04:52.103' AS DateTime), 0, 7, 2, N'0,7', 7, N'Employee 1', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (10, 1, CAST(N'2025-01-23T13:55:55.933' AS DateTime), 1, CAST(N'2025-01-24T17:05:00.833' AS DateTime), 0, 7, 2, N'0,7', 7, N'Employee 2', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (11, 1, CAST(N'2025-01-24T17:05:11.370' AS DateTime), 0, NULL, 0, 7, 2, N'0,7', 7, N'Employee 3', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (12, 1, CAST(N'2025-01-24T17:05:58.327' AS DateTime), 0, NULL, 0, 6, 2, N'0,6', 6, N'New Year', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (13, 1, CAST(N'2025-01-24T17:06:09.807' AS DateTime), 0, NULL, 0, 6, 2, N'0,6', 6, N'Wedding', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (14, 1, CAST(N'2025-01-24T17:06:22.917' AS DateTime), 0, NULL, 0, 6, 2, N'0,6', 6, N'Children', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (15, 1, CAST(N'2025-01-24T17:07:03.047' AS DateTime), 0, NULL, 0, 1, 2, N'0,1', 1, N'Office Supplies', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (16, 1, CAST(N'2025-01-24T17:07:17.660' AS DateTime), 1, CAST(N'2025-01-24T17:07:25.733' AS DateTime), 0, 0, 1, N'0', 16, N'Taxes', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (17, 1, CAST(N'2025-01-24T17:07:35.413' AS DateTime), 0, NULL, 0, 16, 2, N'0,16', 16, N'Value-Added Tax', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (18, 1, CAST(N'2025-01-24T17:07:42.907' AS DateTime), 0, NULL, 0, 16, 2, N'0,16', 16, N'Income Tax', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (19, 1, CAST(N'2025-01-24T17:07:58.457' AS DateTime), 0, NULL, 0, 0, 1, N'0', 19, N'MES Project', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (20, 1, CAST(N'2025-01-24T17:08:09.303' AS DateTime), 1, CAST(N'2025-01-24T17:15:04.067' AS DateTime), 0, 0, 1, N'0', 20, N'System Integration', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (21, 1, CAST(N'2025-01-24T17:13:20.070' AS DateTime), 0, NULL, 0, 1, 2, N'0,1', 1, N'Rent & Utilities', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (22, 1, CAST(N'2025-01-24T17:13:53.917' AS DateTime), 1, CAST(N'2025-01-24T17:14:12.860' AS DateTime), 0, 19, 2, N'0,19', 19, N'Daily', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (23, 1, CAST(N'2025-01-24T17:14:19.007' AS DateTime), 1, CAST(N'2025-01-24T17:15:04.070' AS DateTime), 0, 20, 2, N'0,20', 20, N'Daily', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (24, 1, CAST(N'2025-01-24T17:14:27.103' AS DateTime), 1, CAST(N'2025-01-24T17:14:35.440' AS DateTime), 0, 19, 2, N'0,19', 19, N'Hardware', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (25, 1, CAST(N'2025-01-24T17:15:13.493' AS DateTime), 0, NULL, 0, 20, 2, N'0,20', 20, N'Hardware', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (26, 1, CAST(N'2025-01-24T17:15:20.020' AS DateTime), 0, NULL, 0, 20, 2, N'0,20', 20, N'Other', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (27, 1, CAST(N'2025-01-24T17:15:33.117' AS DateTime), 0, NULL, 0, 25, 3, N'0,20,25', 20, N'Supplier 1', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (28, 1, CAST(N'2025-01-24T17:15:46.900' AS DateTime), 0, NULL, 0, 25, 3, N'0,20,25', 20, N'Supplier 2', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (29, 1, CAST(N'2025-01-24T17:16:05.027' AS DateTime), 0, NULL, 0, 25, 3, N'0,20,25', 20, N'Supplier 3', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (30, 1, CAST(N'2025-01-25T14:23:31.687' AS DateTime), 0, NULL, 0, 19, 2, N'0,19', 19, N'Contract', 0, N'')
GO
INSERT [dbo].[AccountingCategory] ([CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn]) VALUES (31, 1, CAST(N'2025-01-25T14:23:39.780' AS DateTime), 0, NULL, 0, 20, 2, N'0,20', 20, N'Contract', 0, N'')
GO
SET IDENTITY_INSERT [dbo].[AccountingCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 
GO
INSERT [dbo].[Admin] ([AdminID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [AdminName], [AdminNick], [PassWord], [RoleID], [Statues], [LoginAttempts], [LoginAttemptsLast]) VALUES (1, 0, CAST(N'2024-10-23T14:23:25.210' AS DateTime), 1, CAST(N'2024-11-22T15:05:37.073' AS DateTime), 0, N'niqiu', N'niqiu', N'CE-0B-FD-15-05-9B-68-D6-76-88-88-4D-7A-3D-3E-8C', 1, 0, 0, CAST(N'2025-02-24T21:53:12.960' AS DateTime))
GO
INSERT [dbo].[Admin] ([AdminID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [AdminName], [AdminNick], [PassWord], [RoleID], [Statues], [LoginAttempts], [LoginAttemptsLast]) VALUES (2, 1, CAST(N'2024-11-22T09:03:45.333' AS DateTime), 1, CAST(N'2024-11-22T10:24:49.350' AS DateTime), 1, N'1', N'2', N'CE-0B-FD-15-05-9B-68-D6-76-88-88-4D-7A-3D-3E-8C', 7, 0, 0, NULL)
GO
INSERT [dbo].[Admin] ([AdminID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [AdminName], [AdminNick], [PassWord], [RoleID], [Statues], [LoginAttempts], [LoginAttemptsLast]) VALUES (3, 1, CAST(N'2024-11-22T09:16:32.057' AS DateTime), 1, CAST(N'2024-11-22T10:24:55.223' AS DateTime), 1, N'1', N'2', N'30-9F-C7-D3-BC-53-BB-63-AC-42-E3-59-26-0A-C7-40', 1, 0, 0, NULL)
GO
INSERT [dbo].[Admin] ([AdminID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [AdminName], [AdminNick], [PassWord], [RoleID], [Statues], [LoginAttempts], [LoginAttemptsLast]) VALUES (4, 1, CAST(N'2024-11-25T22:58:43.857' AS DateTime), 0, NULL, 0, N'sunuer', N'sunuer', N'CE-0B-FD-15-05-9B-68-D6-76-88-88-4D-7A-3D-3E-8C', 8, 0, 0, CAST(N'2024-11-25T22:59:46.497' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (1, 0, CAST(N'2024-10-23T14:24:08.477' AS DateTime), 0, NULL, 0, 0, N'Permission Management')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (2, 0, CAST(N'2024-10-23T14:24:11.987' AS DateTime), 0, NULL, 0, 1, N'Add Permission')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (3, 0, CAST(N'2024-10-23T14:24:15.367' AS DateTime), 0, NULL, 0, 1, N'Edit Permission')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (4, 0, CAST(N'2024-10-23T14:24:18.950' AS DateTime), 0, NULL, 0, 1, N'Delete Permission')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (5, 0, CAST(N'2024-10-23T14:24:22.710' AS DateTime), 0, NULL, 0, 0, N'Role Management')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (6, 0, CAST(N'2024-10-23T14:24:25.660' AS DateTime), 0, NULL, 0, 5, N'Add Role')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (7, 0, CAST(N'2024-10-23T14:24:28.490' AS DateTime), 0, NULL, 0, 5, N'Edt Role')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (8, 0, CAST(N'2024-10-23T14:24:34.993' AS DateTime), 0, NULL, 0, 5, N'Delete Role')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (9, 0, CAST(N'2024-10-23T14:24:38.563' AS DateTime), 0, NULL, 0, 0, N'Administrator Management')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (10, 0, CAST(N'2024-10-23T14:24:41.600' AS DateTime), 0, NULL, 0, 9, N'Add Administrator')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (11, 0, CAST(N'2024-10-23T14:24:48.350' AS DateTime), 0, NULL, 0, 9, N'Edt Administrator')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (12, 0, CAST(N'2024-10-23T14:24:49.173' AS DateTime), 0, NULL, 0, 9, N'Delete Administrator')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (13, 1, CAST(N'2024-11-21T15:26:35.610' AS DateTime), 0, NULL, 0, 0, N'My Settings')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (14, 1, CAST(N'2024-11-21T15:26:37.307' AS DateTime), 0, NULL, 0, 13, N'Basic Information')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (15, 1, CAST(N'2024-11-21T15:27:06.943' AS DateTime), 1, CAST(N'2024-11-21T16:14:13.460' AS DateTime), 0, 13, N'Change Password')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (16, 1, CAST(N'2024-11-21T15:27:37.940' AS DateTime), 1, CAST(N'2024-11-21T16:15:50.470' AS DateTime), 1, 0, N'Article Management')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (17, 1, CAST(N'2024-11-21T15:56:28.290' AS DateTime), 0, NULL, 0, 16, N'Article Categories')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (19, 1, CAST(N'2024-11-21T16:20:57.590' AS DateTime), 0, NULL, 0, 16, N'Add Article Category')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (20, 0, CAST(N'2024-11-22T15:09:06.470' AS DateTime), 0, NULL, 0, 16, N'Edit Article Category')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (21, 0, CAST(N'2024-11-22T15:09:09.760' AS DateTime), 0, NULL, 0, 16, N'Delete Article Category')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (22, 0, CAST(N'2024-11-22T15:09:20.227' AS DateTime), 0, NULL, 0, 16, N'Add Article')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (23, 0, CAST(N'2024-11-22T15:09:24.637' AS DateTime), 0, NULL, 0, 16, N'Edit Article')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (24, 0, CAST(N'2024-11-22T15:09:27.413' AS DateTime), 0, NULL, 0, 16, N'Delete Article')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (25, 0, CAST(N'2025-02-15T16:39:24.917' AS DateTime), 0, NULL, 0, 200, N'Import')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (26, 0, CAST(N'2025-02-15T16:39:32.400' AS DateTime), 0, NULL, 0, 200, N'Export')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (27, 0, CAST(N'2025-01-16T09:53:01.783' AS DateTime), 0, NULL, 0, 0, N'Accounting Management')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (28, 0, CAST(N'2025-01-16T09:53:19.973' AS DateTime), 0, NULL, 0, 200, N'Accounting Category')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (29, 0, CAST(N'2025-01-16T09:53:36.340' AS DateTime), 0, NULL, 0, 200, N'Add Accounting Category')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (30, 0, CAST(N'2025-01-16T09:53:53.063' AS DateTime), 0, NULL, 0, 200, N'Edit Accounting Category')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (31, 0, CAST(N'2025-01-16T09:54:18.933' AS DateTime), 0, NULL, 0, 200, N'Delete Accounting Category')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (32, 0, CAST(N'2025-01-16T09:55:05.340' AS DateTime), 0, NULL, 0, 200, N'Accounting ')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (33, 0, CAST(N'2025-01-16T09:55:23.897' AS DateTime), 0, NULL, 0, 200, N'Add Accounting ')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (34, 0, CAST(N'2025-01-16T09:55:37.393' AS DateTime), 0, NULL, 0, 200, N'Edt Accounting ')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (35, 0, CAST(N'2025-01-16T09:55:49.837' AS DateTime), 0, NULL, 0, 200, N'Delete Accounting ')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (36, 0, CAST(N'2025-01-16T09:56:10.930' AS DateTime), 0, NULL, 0, 200, N'Accounting Review')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (37, 0, CAST(N'2025-01-16T09:56:29.853' AS DateTime), 0, NULL, 0, 200, N'View Accounting Details')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (38, 0, CAST(N'2025-01-16T09:56:44.410' AS DateTime), 0, NULL, 0, 200, N'View All Users'' Data')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (212, 0, CAST(N'2025-02-15T16:39:24.917' AS DateTime), 0, NULL, 0, 200, N'Import')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (213, 0, CAST(N'2025-02-15T16:39:32.400' AS DateTime), 0, NULL, 0, 200, N'Export')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (200, 0, CAST(N'2025-01-16T09:53:01.783' AS DateTime), 0, NULL, 0, 0, N'Accounting Management')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (201, 0, CAST(N'2025-01-16T09:53:19.973' AS DateTime), 0, NULL, 0, 200, N'Accounting Category')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (202, 0, CAST(N'2025-01-16T09:53:36.340' AS DateTime), 0, NULL, 0, 200, N'Add Accounting Category')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (203, 0, CAST(N'2025-01-16T09:53:53.063' AS DateTime), 0, NULL, 0, 200, N'Edit Accounting Category')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (204, 0, CAST(N'2025-01-16T09:54:18.933' AS DateTime), 0, NULL, 0, 200, N'Delete Accounting Category')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (205, 0, CAST(N'2025-01-16T09:55:05.340' AS DateTime), 0, NULL, 0, 200, N'Accounting ')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (206, 0, CAST(N'2025-01-16T09:55:23.897' AS DateTime), 0, NULL, 0, 200, N'Add Accounting ')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (207, 0, CAST(N'2025-01-16T09:55:37.393' AS DateTime), 0, NULL, 0, 200, N'Edt Accounting ')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (208, 0, CAST(N'2025-01-16T09:55:49.837' AS DateTime), 0, NULL, 0, 200, N'Delete Accounting ')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (209, 0, CAST(N'2025-01-16T09:56:10.930' AS DateTime), 0, NULL, 0, 200, N'Accounting Review')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (210, 0, CAST(N'2025-01-16T09:56:29.853' AS DateTime), 0, NULL, 0, 200, N'View Accounting Details')
GO
INSERT [dbo].[AdminPower] ([PowerID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [PowerTitle]) VALUES (211, 0, CAST(N'2025-01-16T09:56:44.410' AS DateTime), 0, NULL, 0, 200, N'View All Users'' Data')
GO
SET IDENTITY_INSERT [dbo].[AdminRoles] ON 
GO
INSERT [dbo].[AdminRoles] ([RoleID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [RolesTitle], [Powers]) VALUES (1, 0, CAST(N'2024-10-23T14:25:32.850' AS DateTime), 1, CAST(N'2025-02-24T20:57:57.717' AS DateTime), 0, N'Super Administrator', N'|1|2|3|4|5|6|7|8|13|14|15|27|200|25|26|201|202|203|204|205|206|207|208|209|210|211|28|29|30|31|32|33|34|35|36|37|38|212|213|9|10|11|12|')
GO
INSERT [dbo].[AdminRoles] ([RoleID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [RolesTitle], [Powers]) VALUES (9, 1, CAST(N'2024-11-25T23:01:33.960' AS DateTime), 1, CAST(N'2024-11-25T23:01:47.697' AS DateTime), 0, N'Employee', N'|9|10|11|')
GO
SET IDENTITY_INSERT [dbo].[AdminRoles] OFF
GO
ALTER TABLE [dbo].[Accounting] ADD  CONSTRAINT [DF__Accountin__Creat__7C6F7215]  DEFAULT ((0)) FOR [CreateUserID]
GO
ALTER TABLE [dbo].[Accounting] ADD  CONSTRAINT [DF__Accountin__Creat__7D63964E]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Accounting] ADD  CONSTRAINT [DF__Accountin__Updat__7E57BA87]  DEFAULT ((0)) FOR [UpdateUserID]
GO
ALTER TABLE [dbo].[Accounting] ADD  CONSTRAINT [DF__Accounting__Del__7F4BDEC0]  DEFAULT ((0)) FOR [Del]
GO
ALTER TABLE [dbo].[Accounting] ADD  CONSTRAINT [DF__Accountin__Categ__004002F9]  DEFAULT ((0)) FOR [CategoryID]
GO
ALTER TABLE [dbo].[Accounting] ADD  CONSTRAINT [DF__Accountin__Accou__01342732]  DEFAULT ((0)) FOR [AccountingType]
GO
ALTER TABLE [dbo].[Accounting] ADD  CONSTRAINT [DF__Accountin__Audit__02284B6B]  DEFAULT ((0)) FOR [Auditor]
GO
ALTER TABLE [dbo].[Accounting] ADD  CONSTRAINT [DF__Accountin__Audit__031C6FA4]  DEFAULT ((0)) FOR [AuditStatus]
GO
ALTER TABLE [dbo].[AccountingCategory] ADD  DEFAULT ((0)) FOR [CreateUserID]
GO
ALTER TABLE [dbo].[AccountingCategory] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AccountingCategory] ADD  DEFAULT ((0)) FOR [UpdateUserID]
GO
ALTER TABLE [dbo].[AccountingCategory] ADD  DEFAULT ((0)) FOR [Del]
GO
ALTER TABLE [dbo].[AccountingCategory] ADD  DEFAULT ((0)) FOR [ParentID]
GO
ALTER TABLE [dbo].[AccountingCategory] ADD  DEFAULT ((0)) FOR [Depths]
GO
ALTER TABLE [dbo].[AccountingCategory] ADD  DEFAULT ((0)) FOR [ParentIDFirst]
GO
ALTER TABLE [dbo].[AccountingCategory] ADD  DEFAULT ((0)) FOR [Sorts]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT (getdate()) FOR [LogDate]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT ((0)) FOR [LogUserID]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT ((0)) FOR [CreateUserID]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT ((0)) FOR [UpdateUserID]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT ((0)) FOR [Del]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT ((0)) FOR [ParentID]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT ((0)) FOR [Depths]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT ((0)) FOR [ParentIDFirst]
GO
ALTER TABLE [dbo].[AccountingCategoryLog] ADD  DEFAULT ((0)) FOR [Sorts]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__Accountin__LogDa__190BB0C3]  DEFAULT (getdate()) FOR [LogDate]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__Accountin__LogUs__19FFD4FC]  DEFAULT ((0)) FOR [LogUserID]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__Accountin__Creat__1AF3F935]  DEFAULT ((0)) FOR [CreateUserID]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__Accountin__Creat__1BE81D6E]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__Accountin__Updat__1CDC41A7]  DEFAULT ((0)) FOR [UpdateUserID]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__AccountingL__Del__1DD065E0]  DEFAULT ((0)) FOR [Del]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__Accountin__Categ__1EC48A19]  DEFAULT ((0)) FOR [CategoryID]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__Accountin__Accou__1FB8AE52]  DEFAULT ((0)) FOR [AccountingType]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__Accountin__Audit__20ACD28B]  DEFAULT ((0)) FOR [Auditor]
GO
ALTER TABLE [dbo].[AccountingLog] ADD  CONSTRAINT [DF__Accountin__Audit__21A0F6C4]  DEFAULT ((0)) FOR [AuditStatus]
GO
ALTER TABLE [dbo].[Admin] ADD  DEFAULT ((0)) FOR [CreateUserID]
GO
ALTER TABLE [dbo].[Admin] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Admin] ADD  DEFAULT ((0)) FOR [UpdateUserID]
GO
ALTER TABLE [dbo].[Admin] ADD  DEFAULT ((0)) FOR [Del]
GO
ALTER TABLE [dbo].[Admin] ADD  DEFAULT ((0)) FOR [RoleID]
GO
ALTER TABLE [dbo].[Admin] ADD  DEFAULT ((0)) FOR [Statues]
GO
ALTER TABLE [dbo].[Admin] ADD  DEFAULT ((0)) FOR [LoginAttempts]
GO
ALTER TABLE [dbo].[AdminPower] ADD  CONSTRAINT [DF__AdminPowe__Creat__4222D4EF]  DEFAULT ((0)) FOR [CreateUserID]
GO
ALTER TABLE [dbo].[AdminPower] ADD  CONSTRAINT [DF__AdminPowe__Creat__4316F928]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AdminPower] ADD  CONSTRAINT [DF__AdminPowe__Updat__440B1D61]  DEFAULT ((0)) FOR [UpdateUserID]
GO
ALTER TABLE [dbo].[AdminPower] ADD  CONSTRAINT [DF__AdminPower__Del__44FF419A]  DEFAULT ((0)) FOR [Del]
GO
ALTER TABLE [dbo].[AdminPower] ADD  CONSTRAINT [DF__AdminPowe__Paren__45F365D3]  DEFAULT ((0)) FOR [ParentID]
GO
ALTER TABLE [dbo].[AdminRoles] ADD  DEFAULT ((0)) FOR [CreateUserID]
GO
ALTER TABLE [dbo].[AdminRoles] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AdminRoles] ADD  DEFAULT ((0)) FOR [UpdateUserID]
GO
ALTER TABLE [dbo].[AdminRoles] ADD  DEFAULT ((0)) FOR [Del]
GO
/****** Object:  StoredProcedure [dbo].[Accounting_Add]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Accounting_Add]
    @CreateUserID int,
    @CategoryID int,
    @AccountingTitle nvarchar(200),
	@AccountingPrice decimal(18, 2),
    @AccountingTime datetime,
    @AccountingType int,
    @AccountingFiles nvarchar(max),
    @AccountingDesn nvarchar(500)
as
begin
	declare @fanhui int=0

	insert into [dbo].[Accounting] ( [CreateUserID], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType], [AccountingFiles], [AccountingDesn])
    values (@CreateUserID, @CategoryID, @AccountingTitle, @AccountingPrice, @AccountingTime, @AccountingType,@AccountingFiles, @AccountingDesn)
	select @fanhui=@@identity
	
    insert into [dbo].[AccountingLog] ([LogDate],[LogUserID],[LogAbout],[AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType],[AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn])
    select  getdate(),CreateUserID,'Add',AccountingID, CreateUserID, CreateDate, UpdateUserID, UpdateDate, Del, CategoryID, AccountingTitle, AccountingPrice, AccountingTime, AccountingType,AccountingFiles, AccountingDesn, Auditor, AuditStatus, AuditTime, AuditDesn from Accounting where AccountingID=@fanhui
    return @fanhui
end
GO
/****** Object:  StoredProcedure [dbo].[Accounting_AddImport]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Accounting_AddImport]
    @CreateUserID int,
    @CategoryTitle nvarchar(50),
    @AccountingTitle nvarchar(200),
	@AccountingPrice decimal(18, 2),
    @AccountingTime datetime,
    @AccountingType int,
    @AccountingDesn nvarchar(500)
as
begin
	declare @fanhui int=0
	declare @CategoryID int=0

	select top 1 @CategoryID=CategoryID from AccountingCategory where CategoryTitle=@CategoryTitle
	insert into [dbo].[Accounting] ( [CreateUserID], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType],  [AccountingDesn])
    values (@CreateUserID, @CategoryID, @AccountingTitle, @AccountingPrice, @AccountingTime, @AccountingType, @AccountingDesn)
	select @fanhui=@@identity

    insert into [dbo].[AccountingLog] ([LogDate],[LogUserID],[LogAbout],[AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType],[AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn])
    select  getdate(),CreateUserID,'Add',AccountingID, CreateUserID, CreateDate, UpdateUserID, UpdateDate, Del, CategoryID, AccountingTitle, AccountingPrice, AccountingTime, AccountingType,AccountingFiles, AccountingDesn, Auditor, AuditStatus, AuditTime, AuditDesn from Accounting where AccountingID=@fanhui
    return @fanhui
end
GO
/****** Object:  StoredProcedure [dbo].[Accounting_Audit]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[Accounting_Audit]
    @AccountingID int,
    @UpdateUserID int,
	@AuditStatus int,
	@AuditDesn nvarchar(500)
AS
begin
	declare @fanhui int = 0
    update [dbo].[Accounting]
    set  [UpdateUserID] = @UpdateUserID, [UpdateDate] = GETDATE(),  [Auditor] = @UpdateUserID, 
	[AuditStatus] = @AuditStatus, [AuditTime] = GETDATE(), [AuditDesn] = @AuditDesn
    where [AccountingID] = @AccountingID
	select @fanhui=@@ROWCOUNT

    insert into [dbo].[AccountingLog] ([LogDate],[LogUserID],[LogAbout],[AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType],[AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn])
    select  getdate(),UpdateUserID,'Audit',AccountingID, CreateUserID, CreateDate, UpdateUserID, UpdateDate, Del, CategoryID, AccountingTitle, AccountingPrice, AccountingTime, AccountingType,AccountingFiles, AccountingDesn, Auditor, AuditStatus, AuditTime, AuditDesn from Accounting where AccountingID=@AccountingID
   
    return @fanhui
end
GO
/****** Object:  StoredProcedure [dbo].[Accounting_ChuzhangGetCount30]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[Accounting_ChuzhangGetCount30]
    @StarTime DateTime, 
    @EndTime DateTime
as
select sum(AccountingPrice) as Number ,convert(varchar(11),AccountingTime,111) as Datas from 
Accounting  where  Del=0  and @StarTime<=AccountingTime  and @EndTime>=AccountingTime  and AccountingType=1
group by convert(varchar(11),AccountingTime,111)order by convert(varchar(11),AccountingTime,111)
GO
/****** Object:  StoredProcedure [dbo].[Accounting_Delete]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Accounting_Delete]
    @AccountingID int,
    @UpdateUserID int
as
begin

	declare @fanhui int = 0

    update  [dbo].[Accounting] set Del=1 ,UpdateUserID = @UpdateUserID, UpdateDate = getdate() where [AccountingID] = @AccountingID
	select @fanhui=@@ROWCOUNT
    insert into [dbo].[AccountingLog] ([LogDate],[LogUserID],[LogAbout],[AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType],[AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn])
    select  getdate(),UpdateUserID,'Delete',AccountingID, CreateUserID, CreateDate, UpdateUserID, UpdateDate, Del, CategoryID, AccountingTitle, AccountingPrice, AccountingTime, AccountingType,AccountingFiles, AccountingDesn, Auditor, AuditStatus, AuditTime, AuditDesn from Accounting where AccountingID=@AccountingID
   
    return @fanhui
end
GO
/****** Object:  StoredProcedure [dbo].[Accounting_Get]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Accounting_Get]
    @CategoryID int, 
    @AccountingTitle nvarchar(50), 
	@AccountingType int,
	@Star nvarchar(50),
	@End nvarchar(50),
	@CreateUserID int,
	@AuditStatus nvarchar(50),
	@AuditorUserName nvarchar(50),
    @StartRecord int, 
    @EndRecord int
as
declare @s nvarchar(MAX)
declare @searchs nvarchar(2000) = '';
if @AccountingTitle <> ''
begin
    set @searchs = @searchs + ' and (charindex(@AccountingTitle, n.AccountingTitle) > 0 or charindex(@AccountingTitle, n.AccountingDesn) > 0)';
end
if @CategoryID <> -1
begin
    set @searchs = @searchs + ' and (n.CategoryID=@CategoryID or  charindex('',''+CAST(@CategoryID AS NVARCHAR(50))+'','', '',''+b.ParentIDs+'','') > 0)';
end

	if @AccountingType <> -1
    begin
		set @searchs = @searchs + ' and n.AccountingType=@AccountingType'
    end
	if @star<>''
	begin
		select @searchs=@searchs+' and n.AccountingTime>=@star'
	end
	if @end<>''
	begin
		select @searchs=@searchs+' and n.AccountingTime<DATEADD(dd, 1, CAST(@end AS date))'
	end
	if @CreateUserID <> -1
	begin
		set @searchs =@searchs + ' and n.CreateUserID=@CreateUserID'
	end
	if @AuditStatus <> -1
    begin
		set @searchs = @searchs + ' and n.AuditStatus=@AuditStatus'
    end
	if @AuditorUserName <> ''
	begin
		set @searchs = @searchs + ' and charindex(@AuditorUserName, adm.AdminNick) > 0';
	end

	
set @s ='  select a.*from(
    select row_number() over(order by  n.AccountingID desc) as aid ,n.*,b.CategoryTitle,ad.AdminNick as CreateUserName
	,adm.AdminNick as AuditorUserName FROM  [dbo].[Accounting] as n
	left join AccountingCategory as b  on n.CategoryID=b.CategoryID 
	left join Admin as ad on ad.AdminID=n.CreateUserID
	left join Admin as adm on adm.AdminID=n.Auditor
	 where n.del=0 	'+@searchs+'
	) as a
    where a.aid between @StartRecord and (@EndRecord+@StartRecord-1) order by aid asc';

print @s;

EXEC sp_executesql @s, N'@AccountingTitle nvarchar(50),@CategoryID int,@AccountingType int,@AuditStatus int,
@Star nvarchar(50),@End nvarchar(50),@CreateUserID int,@AuditorUserName nvarchar(50),
@StartRecord int,@EndRecord int', 
@AccountingTitle,@CategoryID,@AccountingType,@AuditStatus,@Star,@End,@CreateUserID,@AuditorUserName,@StartRecord,@EndRecord

GO
/****** Object:  StoredProcedure [dbo].[Accounting_GetCount]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Accounting_GetCount]
    @CategoryID int, 
    @AccountingTitle nvarchar(50),
	@AccountingType int,
	@Star nvarchar(50),
	@End nvarchar(50),
	@CreateUserID int,
	@AuditStatus nvarchar(50),
	@AuditorUserName nvarchar(50)
as
declare @s nvarchar(MAX)
declare @searchs nvarchar(2000) = '';
if @AccountingTitle <> ''
begin
set @searchs = @searchs + ' and (charindex(@AccountingTitle, n.AccountingTitle) > 0 or charindex(@AccountingTitle, n.AccountingDesn) > 0)';
end
if @CategoryID <> -1
begin
    set @searchs = @searchs + ' and (n.CategoryID=@CategoryID or  charindex('',''+CAST(@CategoryID AS NVARCHAR(50))+'','', '',''+b.ParentIDs+'','') > 0)';
end

if @AccountingType <> -1
    begin
		set @searchs = @searchs + ' and n.AccountingType=@AccountingType'
    end
	if @star<>''
	begin
		select @searchs=@searchs+' and n.AccountingTime>=@star'
	end
	if @end<>''
	begin
		select @searchs=@searchs+' and n.AccountingTime<DATEADD(dd, 1, CAST(@end AS date))'
	end
	if @CreateUserID <> -1
	begin
		set @searchs =@searchs + ' and n.CreateUserID=@CreateUserID'
	end
	if @AuditStatus <> -1
    begin
		set @searchs = @searchs + ' and n.AuditStatus=@AuditStatus'
    end
	if @AuditorUserName <> ''
	begin
		set @searchs = @searchs + ' and charindex(@AuditorUserName, adm.AdminNick) > 0';
	end

set @s ='select Count(n.AccountingID) as Num from  [dbo].[Accounting] as n
	left join AccountingCategory as b  on n.CategoryID=b.CategoryID 	
	left join Admin as ad on ad.AdminID=n.CreateUserID
	left join Admin as adm on adm.AdminID=n.Auditor
	where n.del=0 '+@searchs;

print @s;

EXEC sp_executesql @s, N'@AccountingTitle nvarchar(50),@CategoryID int,@AccountingType int,@AuditStatus int,
@Star nvarchar(50),@End nvarchar(50),@CreateUserID int,@AuditorUserName nvarchar(50)',
@AccountingTitle,@CategoryID,@AccountingType,@AuditStatus,@Star,@End,@CreateUserID,@AuditorUserName
 
GO
/****** Object:  StoredProcedure [dbo].[Accounting_GetCount30]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Accounting_GetCount30]
    @StarTime DateTime, 
    @EndTime DateTime
as
select count(AccountingID) as Number ,convert(varchar(11),CreateDate,111) as Datas from Accounting  where  Del=0  and @StarTime<=CreateDate  and @EndTime>=CreateDate group by convert(varchar(11),CreateDate,111)order by convert(varchar(11),CreateDate,111)
GO
/****** Object:  StoredProcedure [dbo].[Accounting_GetLast]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Accounting_GetLast]
(
@AccountingID int
)
as

select top 1 AccountingID,AccountingTitle from Accounting   where CategoryID=(
select CategoryID from Accounting where AccountingID=@AccountingID
) and AccountingID<@AccountingID and del=0 and AccountingTime<getdate() order by AccountingID asc




GO
/****** Object:  StoredProcedure [dbo].[Accounting_GetModel]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Accounting_GetModel]
    @AccountingID int
AS
begin
    select n.*,a.AdminNick as AuditorUserName from [dbo].[Accounting] as n
	left join [Admin] as a on a.AdminID = n.Auditor
    where n.Del=0 and n.AccountingID = @AccountingID
end
GO
/****** Object:  StoredProcedure [dbo].[Accounting_GetNext]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Accounting_GetNext]
(
@AccountingID int
)
as

select top 1 AccountingID,AccountingTitle from Accounting   where CategoryID=(
select CategoryID from Accounting where AccountingID=@AccountingID)
and AccountingID>@AccountingID and del=0 and AccountingTime<getdate() order by AccountingID asc




GO
/****** Object:  StoredProcedure [dbo].[Accounting_GetPrice]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[Accounting_GetPrice]
    @CategoryID int, 
    @AccountingTitle nvarchar(50),
	@AccountingType int,
	@Star nvarchar(50),
	@End nvarchar(50),
	@CreateUserID int,
	@AuditStatus nvarchar(50),
	@AuditorUserName nvarchar(50)
as
declare @s nvarchar(MAX)
declare @searchs nvarchar(2000) = '';
if @AccountingTitle <> ''
begin
    set @searchs = @searchs + ' and charindex(@AccountingTitle, n.AccountingTitle) > 0';
end
if @CategoryID <> -1
begin
    set @searchs = @searchs + ' and (n.CategoryID=@CategoryID or  charindex('',''+CAST(@CategoryID AS NVARCHAR(50))+'','', '',''+b.ParentIDs+'','') > 0)';
end

	
	if @star<>''
	begin
		select @searchs=@searchs+' and n.AccountingTime>=@star'
	end
	if @end<>''
	begin
		select @searchs=@searchs+' and n.AccountingTime<DATEADD(dd, 1, CAST(@end AS date))'
	end
	if @CreateUserID <> -1
	begin
		set @searchs =@searchs + ' and n.CreateUserID=@CreateUserID'
	end
	if @AccountingType <> -1
	begin
		set @searchs =@searchs + ' and n.AccountingType=@AccountingType'
	end
	if @AuditStatus <> -1
	begin
		set @searchs =@searchs + ' and n.AuditStatus=@AuditStatus'
	end
	

	set @s='select (select isnull(sum(AccountingPrice),0) from  [dbo].[Accounting] as n
			left join AccountingCategory as b  on n.CategoryID=b.CategoryID 	
			left join Admin as ad on ad.AdminID=n.CreateUserID
			left join Admin as adm on adm.AdminID=n.Auditor
			where n.del=0 and AccountingType=0 '+@searchs+') as inAudit,
			(select  isnull(sum(AccountingPrice),0) from  [dbo].[Accounting] as n
			left join AccountingCategory as b  on n.CategoryID=b.CategoryID 	
			left join Admin as ad on ad.AdminID=n.CreateUserID
			left join Admin as adm on adm.AdminID=n.Auditor
			where n.del=0 and AccountingType=1 '+@searchs+') as OutAudit,
			(select  isnull(sum(AccountingPrice),0)  from  [dbo].[Accounting] as n
			left join AccountingCategory as b  on n.CategoryID=b.CategoryID 	
			left join Admin as ad on ad.AdminID=n.CreateUserID
			left join Admin as adm on adm.AdminID=n.Auditor
			where n.del=0 and AccountingType=2 '+@searchs+') as HeTongAudit'

		EXEC sp_executesql @s, N'@AccountingTitle nvarchar(50),@CategoryID int,@AccountingType int,@AuditStatus int,
		@Star nvarchar(50),@End nvarchar(50),@CreateUserID int,@AuditorUserName nvarchar(50)',
		@AccountingTitle,@CategoryID,@AccountingType,@AuditStatus,@Star,@End,@CreateUserID,@AuditorUserName
 
GO
/****** Object:  StoredProcedure [dbo].[Accounting_GetTop]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Accounting_GetTop]
    @CategoryID int, 
    @AccountingTitle nvarchar(50), 
    @StartRecord int, 
    @EndRecord int
as
declare @s nvarchar(MAX)
declare @searchs nvarchar(2000) = '';

if @AccountingTitle <> ''
begin
    set @searchs = @searchs + ' and charindex(@AccountingTitle, n.AccountingTitle) > 0';
end
if @CategoryID <> -1
begin
    set @searchs = @searchs + ' and (n.CategoryID=@CategoryID or  charindex('',''+CAST(@CategoryID AS NVARCHAR(50))+'','', '',''+b.ParentIDs+'','') > 0)';
end
set @s ='  select a.*from(
    select row_number() over(order by n.Sorts desc, n.AccountingID desc) as aid ,n.*,b.BigTitle FROM  [dbo].[Accounting] as n
	left join AccountingCategory as b  on n.CategoryID=b.CategoryID 
	 where n.del=0 	 and n.Statues=0 and n.AccountingTime<=getdate() '+@searchs+'
	) as a
    where a.aid between @StartRecord and (@EndRecord+@StartRecord-1) order by aid asc';

print @s;

EXEC sp_executesql @s, N'@AccountingTitle nvarchar(50),@CategoryID int,@StartRecord int,@EndRecord int', @AccountingTitle,@CategoryID,@StartRecord,@EndRecord


GO
/****** Object:  StoredProcedure [dbo].[Accounting_GetTopCount]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Accounting_GetTopCount]
    @CategoryID int, 
    @AccountingTitle nvarchar(50)
as
declare @s nvarchar(MAX)
declare @searchs nvarchar(2000) = '';
if @AccountingTitle <> ''
begin
    set @searchs = @searchs + ' and charindex(@AccountingTitle, n.AccountingTitle) > 0';
end
if @CategoryID <> -1
begin
    set @searchs = @searchs + ' and (n.CategoryID=@CategoryID or  charindex('',''+CAST(@CategoryID AS NVARCHAR(50))+'','', '',''+b.ParentIDs+'','') > 0)';
end
set @s ='select Count(n.AccountingID) as Num from  [dbo].[Accounting] as n
	left join AccountingCategory as b  on n.CategoryID=b.CategoryID 	
	where n.del=0 and n.Statues=0 and n.ReleaseTime<=getdate()'+@searchs;

print @s;
EXEC sp_executesql @s, N'@AccountingTitle nvarchar(50),@CategoryID int', @AccountingTitle,@CategoryID
 
GO
/****** Object:  StoredProcedure [dbo].[Accounting_HetongGetCount30]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[Accounting_HetongGetCount30]
    @StarTime DateTime, 
    @EndTime DateTime
as
select sum(AccountingPrice) as Number ,convert(varchar(11),AccountingTime,111) as Datas from 
Accounting  where  Del=0  and @StarTime<=AccountingTime  and @EndTime>=AccountingTime  and AccountingType=2
group by convert(varchar(11),AccountingTime,111)order by convert(varchar(11),AccountingTime,111)
GO
/****** Object:  StoredProcedure [dbo].[Accounting_RuzhangGetCount30]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create Procedure [dbo].[Accounting_RuzhangGetCount30]
    @StarTime DateTime, 
    @EndTime DateTime
as
select sum(AccountingPrice) as Number ,convert(varchar(11),AccountingTime,111) as Datas from 
Accounting  where  Del=0  and @StarTime<=AccountingTime  and @EndTime>=AccountingTime  and AccountingType=0 
group by convert(varchar(11),AccountingTime,111)order by convert(varchar(11),AccountingTime,111)
GO
/****** Object:  StoredProcedure [dbo].[Accounting_Update]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[Accounting_Update]
    @AccountingID int,
    @UpdateUserID int,
    @CategoryID int,
    @AccountingTitle nvarchar(200),
    @AccountingPrice decimal(18, 2),
    @AccountingTime datetime,
    @AccountingType int,
    @AccountingFiles nvarchar(max),
    @AccountingDesn nvarchar(500)
AS
begin
	declare @fanhui int = 0
    update [dbo].[Accounting]
    set  [UpdateUserID] = @UpdateUserID, [UpdateDate] = GETDATE(),  [CategoryID] = @CategoryID, 
	[AccountingTitle] = @AccountingTitle, [AccountingPrice] = @AccountingPrice, [AccountingTime] = @AccountingTime, 
	[AccountingType] = @AccountingType,[AccountingFiles]=@AccountingFiles, [AccountingDesn] = @AccountingDesn,
	[Auditor]=0,[AuditStatus]=0,[AuditTime]=null,AuditDesn=''
    where [AccountingID] = @AccountingID
	select @fanhui=@@ROWCOUNT

    insert into [dbo].[AccountingLog] ([LogDate],[LogUserID],[LogAbout],[AccountingID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [CategoryID], [AccountingTitle], [AccountingPrice], [AccountingTime], [AccountingType],[AccountingFiles], [AccountingDesn], [Auditor], [AuditStatus], [AuditTime], [AuditDesn])
    select  getdate(),UpdateUserID,'Edit',AccountingID, CreateUserID, CreateDate, UpdateUserID, UpdateDate, Del, CategoryID, AccountingTitle, AccountingPrice, AccountingTime, AccountingType,AccountingFiles, AccountingDesn, Auditor, AuditStatus, AuditTime, AuditDesn from Accounting where AccountingID=@AccountingID
   
    return @fanhui
end
GO
/****** Object:  StoredProcedure [dbo].[AccountingCategory_Add]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[AccountingCategory_Add]
    @CreateUserID int,
    @ParentID int,
    @CategoryTitle nvarchar(50),
	@Sorts int,
	@CategoryDesn nvarchar(500) 

    
as
 declare @fanhui int 
 select @fanhui=0
 declare @ParentIDFirst int
select @ParentIDFirst=0
 declare @Depths int 
select @Depths=0
declare @ParentIDS nvarchar(2000)
select @ParentIDS=''
select @ParentIDFirst=ParentIDFirst,@Depths=Depths,@ParentIDS=ParentIDS from [AccountingCategory] where CategoryID=@ParentID

   if @ParentIDS<>''
	begin
	  select @ParentIDS=@ParentIDS+','
	  select @ParentIDS=@ParentIDS+convert( nvarchar(50) ,@ParentID)
	end
	else
	begin
	select @ParentIDS=0
	end
    select @Depths=@Depths+1

	insert into [dbo].[AccountingCategory] ( [CreateUserID], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn])
    values ( @CreateUserID, @ParentID, @Depths, @ParentIDs, @ParentIDFirst, @CategoryTitle, @Sorts, @CategoryDesn)
	
	select  @fanhui=@@IDENTITY
    insert into [dbo].[AccountingCategoryLog] ([LogDate],[LogUserID],[LogAbout],[CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn])
    select  getdate(),CreateUserID,'Add',CategoryID, CreateUserID, CreateDate, UpdateUserID, UpdateDate, Del, ParentID, Depths, ParentIDs, ParentIDFirst, CategoryTitle, Sorts, CategoryDesn from AccountingCategory where CategoryID=@fanhui

    if(@ParentID=0)
    begin
      update [AccountingCategory] set ParentIDFirst=@fanhui where CategoryID=@fanhui
    end    
 return @fanhui
GO
/****** Object:  StoredProcedure [dbo].[AccountingCategory_Delete]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AccountingCategory_Delete]
    @CategoryID int,
    @UpdateUserID int
as
	
	declare @fanhui int = 0

    update  [dbo].[AccountingCategory] set Del=1,UpdateUserID = @UpdateUserID, UpdateDate = getdate() where CategoryID = @CategoryID
	set @fanhui = @@rowcount

    insert into [dbo].[AccountingCategoryLog] ([LogDate],[LogUserID],[LogAbout],[CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn])
    select  getdate(),UpdateUserID,'Delete',CategoryID, CreateUserID, CreateDate, UpdateUserID, UpdateDate, Del, ParentID, Depths, ParentIDs, ParentIDFirst, CategoryTitle, Sorts, CategoryDesn from AccountingCategory where CategoryID=@CategoryID

    return @fanhui
GO
/****** Object:  StoredProcedure [dbo].[AccountingCategory_Get]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AccountingCategory_Get]
    @ParentID int
as
begin
    select * from AccountingCategory where Del=0 and ParentID=@ParentID order by Sorts desc 
end
GO
/****** Object:  StoredProcedure [dbo].[AccountingCategory_GetAll]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[AccountingCategory_GetAll]
as
begin
    select * from AccountingCategory where Del=0
end
GO
/****** Object:  StoredProcedure [dbo].[AccountingCategory_GetModel]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AccountingCategory_GetModel]
    @CategoryID int
AS
begin
    select * from [dbo].[AccountingCategory]
    where CategoryID = @CategoryID
end
GO
/****** Object:  StoredProcedure [dbo].[AccountingCategory_GetNumber]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AccountingCategory_GetNumber]
    @ParentID int
as
begin
    select n.CategoryTitle,n.CategoryID,(	
    select count(AccountingID) FROM  [dbo].[Accounting] as a
	left join AccountingCategory as b  on a.CategoryID=b.CategoryID 
	 where a.Del=0 and (n.CategoryID=a.CategoryID or  charindex(','+CAST(n.CategoryID AS NVARCHAR(50))+',', ','+b.ParentIDs+',') > 0)) as Number from AccountingCategory as n where n.Del=0 and n.ParentID=@ParentID
end
GO
/****** Object:  StoredProcedure [dbo].[AccountingCategory_GetParentIDAll]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AccountingCategory_GetParentIDAll]
    @ParentID int
as
begin
    select * from AccountingCategory where Del=0 and  charindex(','+CAST(@ParentID AS NVARCHAR)+',',','+ParentIDs+',')>0
end
GO
/****** Object:  StoredProcedure [dbo].[AccountingCategory_Update]    Script Date: 2025/2/26 15:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[AccountingCategory_Update]
    @CategoryID int,
    @UpdateUserID int,
    @ParentID int,
	 @CategoryTitle nvarchar(50),
    @Sorts int,
    @CategoryDesn nvarchar(500)

AS
	declare @fanhui int
	 select @fanhui=0
	 declare @ParentIDFirst int 
	select @ParentIDFirst=0
	 declare @Depths int 
	select @Depths=0
	 declare @DepthsOld int 
	select @DepthsOld=0
	declare @ParentIDS nvarchar(2000) 
	select @ParentIDS=''
	declare @ParentIDSOld nvarchar(2000) 
	select @ParentIDSOld=''
	select @ParentIDFirst=ParentIDFirst,@Depths=Depths,@ParentIDS=ParentIDS from [AccountingCategory] where CategoryID=@ParentID

	   if @ParentIDS<>''
		begin
		  select @ParentIDS=@ParentIDS+','
		 select @ParentIDS=@ParentIDS+convert( nvarchar(50) ,@ParentID)
		end
		else
		begin
		select @ParentIDS=0
		end
		select @Depths=@Depths+1
		update [dbo].[AccountingCategory]
		set  UpdateUserID = @UpdateUserID, UpdateDate = getdate(),@DepthsOld=Depths,@ParentIDSOld=[ParentIDs], ParentID = @ParentID, Depths = @Depths, ParentIDs = @ParentIDs, 
		ParentIDFirst = @ParentIDFirst,[CategoryTitle] = @CategoryTitle, [Sorts] = @Sorts, [CategoryDesn] = @CategoryDesn
		where CategoryID = @CategoryID
		select  @fanhui=@@rowcount
    insert into [dbo].[AccountingCategoryLog] ([LogDate],[LogUserID],[LogAbout],[CategoryID], [CreateUserID], [CreateDate], [UpdateUserID], [UpdateDate], [Del], [ParentID], [Depths], [ParentIDs], [ParentIDFirst], [CategoryTitle], [Sorts], [CategoryDesn])
    select  getdate(),UpdateUserID,'Edit',CategoryID, CreateUserID, CreateDate, UpdateUserID, UpdateDate, Del, ParentID, Depths, ParentIDs, ParentIDFirst, CategoryTitle, Sorts, CategoryDesn from AccountingCategory where CategoryID=@CategoryID

	    select @DepthsOld=@Depths-@DepthsOld
		if(@ParentID=0)
		begin
		  select @ParentIDFirst=@CategoryID
		  update [AccountingCategory] set ParentIDFirst=@CategoryID where CategoryID=@CategoryID 
		end    
		 update [AccountingCategory] set ParentIDFirst=@ParentIDFirst,Depths=Depths+@DepthsOld, ParentIDS=substring(REPLACE(','+ParentIDS+',',','+@ParentIDSOld+',',','+@ParentIDS+','),2,len(REPLACE(','+ParentIDS+',',','+@ParentIDSOld+',',','+@ParentIDS+','))-2),[UpdateDate] = GETDATE(),UpdateUserID = @UpdateUserID where charindex(','+convert( nvarchar(50) ,@CategoryID)+',',','+ParentIDS+',')>0
 
 return @fanhui
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AccountingID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AccountingTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AccountingPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AccountingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AccountingType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AccountingFiles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AccountingDesn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AuditStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AuditTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounting', @level2type=N'COLUMN',@level2name=N'AuditDesn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'Depths'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'ParentIDs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'ParentIDFirst'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'CategoryTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'Sorts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategory', @level2type=N'COLUMN',@level2name=N'CategoryDesn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'LogDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'LogUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'LogAbout'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'Depths'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'ParentIDs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'ParentIDFirst'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'CategoryTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'Sorts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingCategoryLog', @level2type=N'COLUMN',@level2name=N'CategoryDesn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'LogDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'LogUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'LogAbout'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AccountingID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'CategoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AccountingTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AccountingPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AccountingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AccountingType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AccountingFiles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AccountingDesn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AuditStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AuditTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountingLog', @level2type=N'COLUMN',@level2name=N'AuditDesn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Administrator' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'AdminID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Creator' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Creation Time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Updater' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Update Time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Delete 0 No 1 Yes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Username' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'AdminName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nickname' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'AdminNick'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'PassWord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Role ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'RoleID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status (0: Normal, 1: Frozen)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'Statues'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Login Attempt Count' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'LoginAttempts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last Login Attempt Time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Admin', @level2type=N'COLUMN',@level2name=N'LoginAttemptsLast'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Creator' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPower', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Creation Time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPower', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Updater' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPower', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Update Time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPower', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Delete 0 No 1 Yes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPower', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Parent ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPower', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Permission Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminPower', @level2type=N'COLUMN',@level2name=N'PowerTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Creator' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRoles', @level2type=N'COLUMN',@level2name=N'CreateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Creation Time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRoles', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Updater' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRoles', @level2type=N'COLUMN',@level2name=N'UpdateUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Update Time' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRoles', @level2type=N'COLUMN',@level2name=N'UpdateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Delete 0 No 1 Yes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRoles', @level2type=N'COLUMN',@level2name=N'Del'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Role Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRoles', @level2type=N'COLUMN',@level2name=N'RolesTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Permission Set' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRoles', @level2type=N'COLUMN',@level2name=N'Powers'
GO
