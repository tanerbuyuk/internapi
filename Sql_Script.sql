USE [InternshipManagement]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11.04.2021 20:57:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companys]    Script Date: 11.04.2021 20:57:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Sector] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[WebSite] [nvarchar](max) NULL,
 CONSTRAINT [PK_Companys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Managers]    Script Date: 11.04.2021 20:57:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Managers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Mail] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Managers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11.04.2021 20:57:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Faculty] [nvarchar](max) NULL,
	[Department] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[CompanyId] [int] NOT NULL,
	[InternshipDepertment] [nvarchar](max) NULL,
	[Advisor] [nvarchar](max) NULL,
	[insuranceNo] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210411165100_first', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210411165234_first2', N'5.0.5')
GO
SET IDENTITY_INSERT [dbo].[Companys] ON 

INSERT [dbo].[Companys] ([Id], [Name], [Sector], [Address], [PhoneNumber], [Mail], [WebSite]) VALUES (1, N'TB Yazılım', N'IT', N'Antalya', N'532', N'tb@test.com', N'www.test.com')
SET IDENTITY_INSERT [dbo].[Companys] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [Name], [LastName], [Faculty], [Department], [Address], [PhoneNumber], [Mail], [Password], [CompanyId], [InternshipDepertment], [Advisor], [insuranceNo]) VALUES (3, N'Taner', N'Büyük', N'UBF', N'YBS', N'Antalya', N'532', N'test@test.com', N'1234', 1, N'test', N'tayfun', 1)
INSERT [dbo].[Student] ([Id], [Name], [LastName], [Faculty], [Department], [Address], [PhoneNumber], [Mail], [Password], [CompanyId], [InternshipDepertment], [Advisor], [insuranceNo]) VALUES (4, N'Hacı', N'Coşkun', N'BP', N'BP', N'Ankara', N'542', N'test1@test.com', N'124', 1, N'test', N'tayfun', 2)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
