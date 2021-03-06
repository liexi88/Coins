USE [master]
GO
/****** Object:  Database [Staff]    Script Date: 08.02.2015 22:08:28 ******/
CREATE DATABASE [Staff]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Staff', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Staff.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Staff_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Staff_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Staff] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Staff].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Staff] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Staff] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Staff] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Staff] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Staff] SET ARITHABORT OFF 
GO
ALTER DATABASE [Staff] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Staff] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Staff] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Staff] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Staff] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Staff] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Staff] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Staff] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Staff] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Staff] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Staff] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Staff] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Staff] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Staff] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Staff] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Staff] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Staff] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Staff] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Staff] SET RECOVERY FULL 
GO
ALTER DATABASE [Staff] SET  MULTI_USER 
GO
ALTER DATABASE [Staff] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Staff] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Staff] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Staff] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Staff', N'ON'
GO
USE [Staff]
GO
/****** Object:  Table [dbo].[CoinMint]    Script Date: 08.02.2015 22:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoinMint](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CoinMint] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Coins]    Script Date: 08.02.2015 22:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCountry] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[IdDenomination] [int] NOT NULL,
	[IdUnitOfMeasure] [int] NOT NULL,
	[IdYear] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[IdStaffType] [int] NOT NULL,
	[IdCoinMint] [int] NULL,
 CONSTRAINT [PK_Coins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 08.02.2015 22:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Denomination]    Script Date: 08.02.2015 22:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Denomination](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Denomination] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StaffType]    Script Date: 08.02.2015 22:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_StaffType_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UnitOfMeasure]    Script Date: 08.02.2015 22:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnitOfMeasure](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UnitOfMeasure] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YearOfManufacture]    Script Date: 08.02.2015 22:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YearOfManufacture](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [int] NOT NULL,
 CONSTRAINT [PK_YearOfManufacture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[CoinsView]    Script Date: 08.02.2015 22:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CoinsView]
AS
SELECT        dbo.StaffType.Type, dbo.Country.Name, dbo.Denomination.Name AS Denomination, dbo.UnitOfMeasure.Name AS UnitOfMeasure, 
                         dbo.YearOfManufacture.Name AS YearOfManufacture, dbo.Coins.Count, dbo.Coins.Description, dbo.Coins.Id, dbo.Coins.IdCoinMint, dbo.CoinMint.Name AS Expr1, 
                         dbo.CoinMint.Id AS Expr2
FROM            dbo.Coins INNER JOIN
                         dbo.Country ON dbo.Coins.IdCountry = dbo.Country.Id INNER JOIN
                         dbo.Denomination ON dbo.Coins.IdDenomination = dbo.Denomination.Id INNER JOIN
                         dbo.StaffType ON dbo.Coins.IdStaffType = dbo.StaffType.Id INNER JOIN
                         dbo.UnitOfMeasure ON dbo.Coins.IdUnitOfMeasure = dbo.UnitOfMeasure.Id INNER JOIN
                         dbo.YearOfManufacture ON dbo.Coins.IdYear = dbo.YearOfManufacture.Id LEFT OUTER JOIN
                         dbo.CoinMint ON dbo.Coins.Id = dbo.CoinMint.Id


GO
SET IDENTITY_INSERT [dbo].[CoinMint] ON 

GO
INSERT [dbo].[CoinMint] ([Id], [Name]) VALUES (1, N'Московский')
GO
INSERT [dbo].[CoinMint] ([Id], [Name]) VALUES (2, N'Ленинградский')
GO
INSERT [dbo].[CoinMint] ([Id], [Name]) VALUES (3, N'Московский монетный двор (круг)')
GO
INSERT [dbo].[CoinMint] ([Id], [Name]) VALUES (4, N'Ленинградский монетный двор (овал)')
GO
SET IDENTITY_INSERT [dbo].[CoinMint] OFF
GO
SET IDENTITY_INSERT [dbo].[Coins] ON 

GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (1, 1, 2, 9, 1, 3, N'на аверсе запасной монеты точка', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (4, 1, 4, 9, 1, 6, N'слегка стерт и подмят аверс у одной монеты, еще у одной на аверсе точка', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (5, 1, 1, 9, 1, 7, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (6, 1, 1, 9, 1, 8, N'на аверсе точка', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (7, 1, 1, 9, 1, 9, N'юбилейная монета 50 лет советской власти', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (8, 1, 1, 9, 1, 10, N'на обеих сторонах имеются точки', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (9, 1, 3, 9, 1, 11, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (10, 1, 1, 9, 1, 12, N'небольшие загрязнения на реверсе', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (11, 1, 1, 9, 1, 14, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (12, 1, 1, 9, 1, 15, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (13, 1, 1, 9, 1, 16, N'небольшие загрязнения на аверсе', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (15, 1, 1, 9, 1, 19, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (16, 1, 1, 9, 1, 20, N'небольшие загрязнения на реверсе, чуток потемнел аверс', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (17, 1, 1, 9, 1, 21, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (18, 1, 2, 9, 1, 22, N'небольшие загрязнения на обеих сторонах запасной монеты', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (19, 1, 1, 9, 1, 23, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (20, 1, 2, 9, 1, 24, N'небольшие загрязнения на обеих сторонах запасной монеты', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (26, 1, 1, 9, 1, 25, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (27, 1, 3, 9, 1, 26, N'небольшие загрязнения на обеих сторонах всех монет', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (28, 1, 1, 9, 1, 27, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (29, 1, 1, 9, 1, 28, N'небольшие загрязнения на аверсе', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (30, 1, 1, 9, 1, 29, N'точки на аверсе', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (31, 1, 1, 9, 1, 31, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (32, 1, 1, 5, 1, 58, N'слегка помята и деформирована в нескольких местах', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (33, 1, 1, 5, 1, 59, N'зеленая точка на реверсе', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (34, 1, 1, 5, 1, 60, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (35, 1, 19, 5, 1, 3, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (36, 1, 7, 5, 1, 4, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (38, 1, 2, 5, 1, 9, N'юбилейные, запасная слегка потемнела', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (39, 1, 1, 5, 1, 11, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (40, 1, 2, 5, 1, 12, N'запасная слегка загрязнена повсюду', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (41, 1, 4, 5, 1, 13, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (42, 1, 6, 5, 1, 14, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (43, 1, 9, 5, 1, 15, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (44, 1, 10, 5, 1, 16, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (45, 1, 3, 5, 1, 17, N'обе запасных прилично загрязнены', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (46, 1, 4, 5, 1, 18, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (47, 1, 13, 5, 1, 19, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (48, 1, 17, 5, 1, 20, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (49, 1, 6, 5, 1, 21, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (50, 1, 11, 5, 1, 22, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (51, 1, 19, 5, 1, 23, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (52, 1, 18, 5, 1, 24, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (53, 1, 20, 5, 1, 25, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (54, 1, 23, 5, 1, 26, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (55, 1, 24, 5, 1, 27, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (56, 1, 11, 5, 1, 28, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (57, 1, 12, 5, 1, 29, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (58, 1, 7, 5, 1, 30, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (59, 1, 5, 5, 1, 31, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (60, 1, 6, 5, 1, 32, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (61, 1, 4, 5, 1, 33, NULL, 2, 1)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (62, 1, 1, 5, 1, 33, N'небольшие загрязнения на аверсе', 2, 2)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (63, 1, 3, 7, 1, 60, N'у двух запасных имеются загрязнения', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (64, 1, 1, 7, 1, 61, N'имеются небольшие повреждения и деформации', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (65, 1, 29, 7, 1, 3, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (67, 1, 7, 7, 1, 4, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (68, 1, 1, 7, 1, 9, N'юбилейная', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (69, 1, 3, 7, 1, 19, N'у запасной следы загрязнения и окисления', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (70, 1, 2, 7, 1, 20, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (71, 1, 5, 7, 1, 21, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (72, 1, 12, 7, 1, 22, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (73, 1, 9, 7, 1, 23, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (74, 1, 15, 7, 1, 24, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (75, 1, 5, 7, 1, 25, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (76, 1, 8, 7, 1, 26, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (77, 1, 8, 7, 1, 27, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (78, 1, 5, 7, 1, 28, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (79, 1, 8, 7, 1, 29, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (80, 1, 3, 7, 1, 30, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (81, 1, 3, 7, 1, 31, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (82, 1, 6, 7, 1, 32, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (83, 1, 1, 6, 1, 62, N'некоторые потертости и загрязнения', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (84, 1, 3, 6, 1, 60, N'у повторных небольшие потертости и загрязнения', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (85, 1, 18, 6, 1, 3, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (86, 1, 6, 6, 1, 4, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (87, 1, 2, 6, 1, 9, N'небольшие загрязнения', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (88, 1, 1, 6, 1, 18, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (89, 1, 1, 6, 1, 19, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (90, 1, 2, 6, 1, 20, N'у повторной точка на аверсе', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (91, 1, 7, 6, 1, 21, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (92, 1, 11, 6, 1, 22, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (93, 1, 16, 6, 1, 23, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (94, 1, 23, 6, 1, 24, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (95, 1, 13, 6, 1, 25, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (96, 1, 15, 6, 1, 26, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (98, 1, 6, 6, 1, 27, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (99, 1, 7, 6, 1, 28, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (100, 1, 6, 6, 1, 29, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (101, 1, 6, 6, 1, 30, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (102, 1, 3, 6, 1, 31, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (103, 1, 10, 6, 1, 32, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (104, 1, 9, 6, 1, 33, NULL, 2, 1)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (105, 1, 1, 4, 1, 63, N'потертости обеих сторон', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (106, 1, 1, 4, 1, 1, N'сильное полное потемнение, коррозия', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (108, 1, 1, 4, 1, 64, N'частичная коррозия в коричневый и зеленый', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (109, 1, 1, 4, 1, 61, N'частичная коррозия в зеленый', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (110, 1, 1, 4, 1, 65, N'небольшая потертость, мелкие отметины деформации', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (111, 1, 1, 4, 1, 13, N'небольшая точка на реверсе', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (112, 1, 1, 4, 1, 15, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (113, 1, 1, 4, 1, 33, NULL, 2, 2)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (114, 1, 5, 4, 1, 16, N'все имеют некоторые загрязнения', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (115, 1, 2, 4, 1, 17, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (116, 1, 5, 4, 1, 18, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (117, 1, 3, 4, 1, 19, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (118, 1, 3, 4, 1, 20, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (119, 1, 2, 4, 1, 21, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (120, 1, 2, 7, 1, 66, N'некоторые загрязнения, следы коррозии на аверсе одной монеты', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (121, 1, 1, 7, 1, 1, N'небольшая потертость на аверсе', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (122, 1, 1, 3, 3, 67, N'мелкие черные точки на аверсе', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (123, 1, 2, 3, 3, 2, N'запасаная слегка выбелена, на основной мелкая черточка повреждения на аверсе', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (124, 1, 1, 3, 3, 68, N'небольшое потемнение', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (125, 1, 1, 3, 3, 69, N'мелкие черные точки', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (126, 1, 1, 3, 3, 70, N'легкая коррозия', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (127, 1, 1, 3, 3, 71, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (128, 1, 1, 3, 3, 72, N'небольшая потертость, черные точки', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (129, 1, 1, 3, 3, 61, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (130, 1, 1, 3, 3, 62, N'черные точки', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (131, 1, 1, 3, 3, 65, N'небольшое загрязнение', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (134, 1, 1, 3, 3, 73, N'небольшая коррозия всей монеты', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (135, 1, 2, 3, 3, 74, N'небольшая потертость одной монеты, некоторое загрязнение и черные точки', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (136, 1, 1, 3, 3, 75, N'черные точки на аверсе', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (137, 1, 1, 3, 3, 58, N'мелкие черные точки на аверсе', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (138, 1, 2, 3, 3, 76, N'на запасной монете частичное потемнение', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (139, 1, 2, 3, 3, 59, N'на запасной монете черные точки', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (140, 1, 2, 3, 3, 60, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (141, 1, 2, 3, 3, 3, N'некоторая потертость обеих монет', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (142, 1, 1, 3, 3, 4, N'небольшая потертость', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (143, 1, 1, 3, 3, 7, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (144, 1, 1, 3, 3, 8, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (145, 1, 2, 3, 3, 9, N'некоторое потемнение', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (146, 1, 1, 3, 3, 10, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (147, 1, 1, 3, 3, 11, N'на реверсе одна точка', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (148, 1, 2, 3, 3, 13, N'на запасной монете потемнение', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (149, 1, 2, 3, 3, 16, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (150, 1, 1, 3, 3, 17, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (151, 1, 1, 3, 3, 18, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (152, 1, 1, 3, 3, 19, N'на аверсе точка', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (153, 1, 1, 3, 3, 20, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (154, 1, 1, 1, 4, 26, N'Д.И. Менделеев на реверсе множество мелких черных точек', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (155, 1, 1, 1, 4, 26, N'А.С. Пушкин на реверсе незначительное малое потемнение', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (156, 1, 1, 1, 4, 31, N'Т. Шевченко на реверсе незначительные точки', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (157, 1, 1, 1, 4, 23, N'Ю.А. Гагарин мелкие черные точки', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (159, 1, 1, 1, 4, 25, N'К. Маркс черные точки на обоих сторонах', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (160, 1, 2, 1, 4, 30, N'Л.Н. Толстой на запасной монете небольшое потемнение', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (161, 1, 5, 1, 4, 19, N'Олимпиада кольца', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (162, 1, 2, 1, 4, 21, N'Олимпиада станция Мир', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (163, 1, 1, 1, 4, 21, N'Олимпиада сталинская высотка мелкие черные точки с обоих сторон', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (164, 1, 1, 1, 4, 22, N'Олимпиада Долгорукий небольшие черные точки на обеих сторонах', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (165, 1, 2, 1, 4, 22, N'Олимпиада факел на запасной мелкие точки с обеих сторон', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (166, 1, 3, 1, 4, 20, N'Олимпиада кремль', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (167, 1, 1, 1, 4, 24, N'60 лет СССР Ленин в лучах с обеих сторон мелкие черные точки', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (168, 1, 1, 1, 4, 19, N'60 лет революции Ленин крейсер Аврора', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (169, 1, 1, 1, 4, 28, N'Международный год мира, некоторые потемнения обеих сторон', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (170, 1, 1, 1, 4, 23, N'Дружба навеки, небольшие потемнения обеих сторон', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (171, 1, 1, 1, 4, 27, N'За антиимпериалистическую солидарность, мир и дружбу, мелкие черные точки с обеих сторон', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (172, 1, 6, 1, 4, 12, N'Сто лет со дня рождения В.И. Ленина', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (173, 1, 1, 1, 4, 29, N'175 лет со дня бородинского сражения гусары', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (174, 1, 2, 1, 4, 29, N'175 лет со дня бородинского сражения обелиск, на реверсе запасной некоторая коррозия', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (175, 1, 2, 1, 4, 27, N'Отечественная война звезда, на запасной черные точки с обеих сторон', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (176, 1, 3, 1, 4, 7, N'20 лет победа над фашистской германией', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (177, 1, 3, 1, 4, 9, N'50 лет советской власти', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (178, 1, 3, 1, 4, 17, N'30 лет победы в великой отечественной войне', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (179, 1, 1, 1, 4, 3, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (180, 1, 3, 1, 4, 6, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (181, 1, 1, 1, 4, 7, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (182, 1, 1, 1, 4, 11, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (183, 1, 1, 1, 4, 17, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (184, 1, 1, 1, 4, 18, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (185, 1, 1, 1, 4, 24, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (186, 1, 1, 1, 4, 25, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (187, 1, 2, 1, 4, 26, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (188, 1, 1, 1, 4, 27, N'мелкие черные точки на аверсе', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (189, 1, 2, 1, 4, 28, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (190, 1, 1, 1, 4, 30, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (191, 1, 16, 4, 1, 3, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (192, 1, 4, 4, 1, 4, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (193, 1, 2, 4, 1, 22, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (194, 1, 7, 4, 1, 23, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (195, 1, 4, 4, 1, 24, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (196, 1, 3, 4, 1, 25, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (197, 1, 3, 4, 1, 26, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (198, 1, 2, 4, 1, 27, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (199, 1, 6, 4, 1, 28, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (200, 1, 11, 4, 1, 29, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (201, 1, 5, 4, 1, 30, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (203, 1, 17, 4, 1, 31, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (204, 1, 21, 4, 1, 32, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (205, 1, 18, 4, 1, 33, NULL, 2, 1)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (206, 1, 3, 3, 3, 12, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (207, 1, 6, 3, 3, 14, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (208, 1, 2, 3, 3, 15, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (209, 1, 3, 3, 3, 21, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (210, 1, 7, 3, 3, 22, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (211, 1, 9, 3, 3, 23, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (212, 1, 10, 3, 3, 24, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (214, 1, 10, 3, 3, 25, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (215, 1, 10, 3, 3, 26, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (216, 1, 8, 3, 3, 27, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (217, 1, 3, 3, 3, 28, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (218, 1, 7, 3, 3, 29, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (219, 1, 1, 3, 3, 30, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (220, 1, 8, 3, 3, 31, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (221, 1, 20, 3, 3, 32, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (222, 1, 2, 3, 3, 33, NULL, 2, 1)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (223, 1, 2, 3, 3, 33, NULL, 2, 2)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (224, 1, 1, 2, 3, 2, N'полная коррозия черным и зеленым с обеих сторон', 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (225, 1, 1, 2, 3, 68, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (226, 1, 2, 2, 3, 74, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (227, 1, 1, 2, 3, 76, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (228, 1, 1, 2, 3, 3, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (229, 1, 2, 2, 3, 5, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (230, 1, 1, 2, 3, 8, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (231, 1, 1, 2, 3, 9, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (232, 1, 1, 2, 3, 10, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (233, 1, 1, 2, 3, 11, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (234, 1, 1, 2, 3, 12, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (235, 1, 6, 2, 3, 13, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (236, 1, 1, 2, 3, 14, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (237, 1, 2, 2, 3, 15, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (238, 1, 2, 2, 3, 16, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (239, 1, 1, 2, 3, 17, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (240, 1, 1, 2, 3, 18, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (241, 1, 1, 2, 3, 19, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (242, 1, 2, 2, 3, 20, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (243, 1, 1, 2, 3, 21, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (244, 1, 4, 2, 3, 22, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (245, 1, 5, 2, 3, 23, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (246, 1, 8, 2, 3, 24, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (247, 1, 11, 2, 3, 25, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (248, 1, 15, 2, 3, 26, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (249, 1, 24, 2, 3, 27, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (250, 1, 12, 2, 3, 28, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (251, 1, 12, 2, 3, 29, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (252, 1, 4, 2, 3, 30, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (253, 1, 13, 2, 3, 31, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (254, 1, 4, 2, 3, 32, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (255, 1, 2, 2, 3, 33, NULL, 2, 1)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (256, 1, 1, 1, 2, 70, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (257, 1, 1, 1, 2, 59, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (258, 1, 1, 1, 2, 5, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (259, 1, 1, 1, 2, 7, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (260, 1, 2, 1, 2, 9, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (261, 1, 1, 1, 2, 10, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (262, 1, 6, 1, 2, 11, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (264, 1, 4, 1, 2, 12, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (265, 1, 6, 1, 2, 13, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (266, 1, 3, 1, 2, 14, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (267, 1, 6, 1, 2, 15, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (268, 1, 1, 1, 2, 16, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (269, 1, 3, 1, 2, 17, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (270, 1, 11, 1, 2, 18, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (271, 1, 5, 1, 2, 19, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (272, 1, 6, 1, 2, 21, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (273, 1, 3, 1, 2, 20, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (274, 1, 10, 1, 2, 22, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (275, 1, 14, 1, 2, 23, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (276, 1, 17, 1, 2, 24, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (277, 1, 17, 1, 2, 25, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (278, 1, 22, 1, 2, 26, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (279, 1, 42, 1, 2, 27, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (280, 1, 44, 1, 2, 28, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (281, 1, 60, 1, 2, 29, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (282, 1, 52, 1, 2, 30, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (283, 1, 72, 1, 2, 31, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (284, 1, 95, 1, 2, 32, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (285, 1, 31, 1, 2, 33, NULL, 2, 1)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (286, 1, 4, 1, 2, 33, NULL, 2, 2)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (287, 2, 16, 5, 1, 33, NULL, 2, 1)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (288, 2, 8, 9, 1, 33, NULL, 2, 2)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (289, 2, 6, 1, 4, 33, NULL, 2, 4)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (290, 2, 1, 1, 4, 34, NULL, 2, 2)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (291, 2, 5, 1, 4, 34, NULL, 2, 3)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (292, 2, 75, 1, 4, 34, NULL, 2, 1)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (293, 2, 1, 4, 5, 33, NULL, 2, 4)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (294, 2, 2, 4, 5, 33, NULL, 2, 3)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (295, 2, 1, 4, 5, 34, NULL, 2, 2)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (296, 2, 16, 4, 5, 34, NULL, 2, 1)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (298, 2, 1, 5, 5, 34, NULL, 2, 3)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (299, 2, 8, 5, 5, 34, NULL, 2, 4)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (300, 2, 1, 5, 5, 35, NULL, 2, 4)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (301, 2, 41, 5, 5, 35, NULL, 2, 3)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (302, 2, 4, 5, 5, 33, N'Биметаллические', 2, 4)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (303, 2, 4, 7, 5, 34, NULL, 2, 3)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (304, 2, 11, 7, 5, 34, NULL, 2, 4)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (305, 2, 3, 9, 5, 34, N'Биметаллические', 2, 4)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (306, 2, 4, 9, 5, 35, NULL, 2, 4)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (307, 2, 26, 9, 5, 35, NULL, 2, 3)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (308, 2, 1, 10, 5, 34, N'Биметаллические', 2, 4)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (309, 2, 3, 10, 5, 35, NULL, 2, 4)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (310, 2, 8, 10, 5, 35, NULL, 2, 3)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (311, 4, 4, 1, 2, 34, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (312, 4, 1, 1, 2, 49, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (313, 4, 1, 1, 2, 51, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (314, 4, 1, 1, 2, 52, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (315, 4, 1, 1, 2, 53, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (316, 4, 1, 1, 2, 54, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (317, 4, 4, 2, 3, 35, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (318, 4, 2, 2, 3, 36, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (319, 4, 1, 2, 3, 44, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (320, 4, 1, 2, 3, 52, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (321, 4, 13, 4, 1, 34, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (322, 4, 1, 4, 1, 51, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (323, 4, 1, 4, 1, 52, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (324, 4, 18, 5, 1, 34, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (325, 4, 1, 5, 1, 36, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (326, 4, 1, 5, 1, 38, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (327, 4, 1, 5, 1, 48, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (328, 4, 3, 5, 1, 49, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (329, 4, 2, 5, 1, 51, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (330, 4, 1, 5, 1, 52, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (331, 4, 1, 5, 1, 53, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (332, 4, 1, 8, 1, 34, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (333, 4, 1, 8, 1, 36, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (334, 4, 1, 8, 1, 48, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (335, 4, 1, 8, 1, 50, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (336, 4, 1, 8, 1, 51, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (337, 4, 1, 8, 1, 52, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (338, 4, 1, 8, 1, 53, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (339, 4, 2, 9, 1, 34, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (340, 4, 1, 9, 1, 49, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (341, 4, 1, 9, 1, 50, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (342, 4, 1, 9, 1, 51, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (343, 4, 3, 1, 7, 43, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (344, 4, 1, 1, 7, 44, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (345, 4, 1, 1, 7, 45, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (346, 4, 1, 1, 7, 46, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (347, 4, 1, 1, 7, 47, NULL, 2, NULL)
GO
INSERT [dbo].[Coins] ([Id], [IdCountry], [Count], [IdDenomination], [IdUnitOfMeasure], [IdYear], [Description], [IdStaffType], [IdCoinMint]) VALUES (348, 4, 1, 1, 7, 48, NULL, 2, NULL)
GO
SET IDENTITY_INSERT [dbo].[Coins] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (1, N'СССР')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (2, N'Россия')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (3, N'Российская империя')
GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (4, N'Украина')
GO
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Denomination] ON 

GO
INSERT [dbo].[Denomination] ([Id], [Name]) VALUES (1, N'1')
GO
INSERT [dbo].[Denomination] ([Id], [Name]) VALUES (2, N'2')
GO
INSERT [dbo].[Denomination] ([Id], [Name]) VALUES (3, N'3')
GO
INSERT [dbo].[Denomination] ([Id], [Name]) VALUES (4, N'5')
GO
INSERT [dbo].[Denomination] ([Id], [Name]) VALUES (5, N'10')
GO
INSERT [dbo].[Denomination] ([Id], [Name]) VALUES (6, N'15')
GO
INSERT [dbo].[Denomination] ([Id], [Name]) VALUES (7, N'20')
GO
INSERT [dbo].[Denomination] ([Id], [Name]) VALUES (8, N'25')
GO
INSERT [dbo].[Denomination] ([Id], [Name]) VALUES (9, N'50')
GO
INSERT [dbo].[Denomination] ([Id], [Name]) VALUES (10, N'100')
GO
SET IDENTITY_INSERT [dbo].[Denomination] OFF
GO
SET IDENTITY_INSERT [dbo].[StaffType] ON 

GO
INSERT [dbo].[StaffType] ([Id], [Type]) VALUES (1, N'Books')
GO
INSERT [dbo].[StaffType] ([Id], [Type]) VALUES (2, N'Coins')
GO
SET IDENTITY_INSERT [dbo].[StaffType] OFF
GO
SET IDENTITY_INSERT [dbo].[UnitOfMeasure] ON 

GO
INSERT [dbo].[UnitOfMeasure] ([Id], [Name]) VALUES (1, N'копеек')
GO
INSERT [dbo].[UnitOfMeasure] ([Id], [Name]) VALUES (2, N'копейка')
GO
INSERT [dbo].[UnitOfMeasure] ([Id], [Name]) VALUES (3, N'копейки')
GO
INSERT [dbo].[UnitOfMeasure] ([Id], [Name]) VALUES (4, N'рубль')
GO
INSERT [dbo].[UnitOfMeasure] ([Id], [Name]) VALUES (5, N'рублей')
GO
INSERT [dbo].[UnitOfMeasure] ([Id], [Name]) VALUES (6, N'рубля')
GO
INSERT [dbo].[UnitOfMeasure] ([Id], [Name]) VALUES (7, N'гривна')
GO
SET IDENTITY_INSERT [dbo].[UnitOfMeasure] OFF
GO
SET IDENTITY_INSERT [dbo].[YearOfManufacture] ON 

GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (1, 1930)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (2, 1932)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (3, 1961)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (4, 1962)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (5, 1963)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (6, 1964)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (7, 1965)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (8, 1966)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (9, 1967)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (10, 1968)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (11, 1969)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (12, 1970)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (13, 1971)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (14, 1972)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (15, 1973)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (16, 1974)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (17, 1975)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (18, 1976)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (19, 1977)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (20, 1978)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (21, 1979)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (22, 1980)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (23, 1981)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (24, 1982)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (25, 1983)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (26, 1984)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (27, 1985)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (28, 1986)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (29, 1987)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (30, 1988)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (31, 1989)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (32, 1990)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (33, 1991)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (34, 1992)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (35, 1993)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (36, 1994)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (37, 1995)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (38, 1996)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (39, 1997)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (40, 1998)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (41, 1999)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (42, 2000)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (43, 2001)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (44, 2002)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (45, 2003)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (46, 2004)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (47, 2005)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (48, 2006)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (49, 2007)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (50, 2008)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (51, 2009)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (52, 2010)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (53, 2011)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (54, 2012)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (55, 2013)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (56, 2014)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (57, 2015)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (58, 1954)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (59, 1956)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (60, 1957)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (61, 1946)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (62, 1948)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (63, 1928)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (64, 1941)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (65, 1949)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (66, 1924)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (67, 1929)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (68, 1935)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (69, 1938)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (70, 1939)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (71, 1940)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (72, 1943)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (73, 1950)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (74, 1952)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (75, 1953)
GO
INSERT [dbo].[YearOfManufacture] ([Id], [Name]) VALUES (76, 1955)
GO
SET IDENTITY_INSERT [dbo].[YearOfManufacture] OFF
GO
ALTER TABLE [dbo].[Coins]  WITH CHECK ADD  CONSTRAINT [FK_Coins_CoinMint] FOREIGN KEY([IdCoinMint])
REFERENCES [dbo].[CoinMint] ([Id])
GO
ALTER TABLE [dbo].[Coins] CHECK CONSTRAINT [FK_Coins_CoinMint]
GO
ALTER TABLE [dbo].[Coins]  WITH CHECK ADD  CONSTRAINT [FK_Coins_Country] FOREIGN KEY([IdCountry])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[Coins] CHECK CONSTRAINT [FK_Coins_Country]
GO
ALTER TABLE [dbo].[Coins]  WITH CHECK ADD  CONSTRAINT [FK_Coins_Denomination] FOREIGN KEY([IdDenomination])
REFERENCES [dbo].[Denomination] ([Id])
GO
ALTER TABLE [dbo].[Coins] CHECK CONSTRAINT [FK_Coins_Denomination]
GO
ALTER TABLE [dbo].[Coins]  WITH CHECK ADD  CONSTRAINT [FK_Coins_StaffType] FOREIGN KEY([IdStaffType])
REFERENCES [dbo].[StaffType] ([Id])
GO
ALTER TABLE [dbo].[Coins] CHECK CONSTRAINT [FK_Coins_StaffType]
GO
ALTER TABLE [dbo].[Coins]  WITH CHECK ADD  CONSTRAINT [FK_Coins_UnitOfMeasure] FOREIGN KEY([IdUnitOfMeasure])
REFERENCES [dbo].[UnitOfMeasure] ([Id])
GO
ALTER TABLE [dbo].[Coins] CHECK CONSTRAINT [FK_Coins_UnitOfMeasure]
GO
ALTER TABLE [dbo].[Coins]  WITH CHECK ADD  CONSTRAINT [FK_Coins_YearOfManufacture] FOREIGN KEY([IdYear])
REFERENCES [dbo].[YearOfManufacture] ([Id])
GO
ALTER TABLE [dbo].[Coins] CHECK CONSTRAINT [FK_Coins_YearOfManufacture]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Coins"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 217
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "Country"
            Begin Extent = 
               Top = 21
               Left = 500
               Bottom = 116
               Right = 670
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Denomination"
            Begin Extent = 
               Top = 26
               Left = 583
               Bottom = 121
               Right = 753
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "StaffType"
            Begin Extent = 
               Top = 169
               Left = 0
               Bottom = 264
               Right = 170
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UnitOfMeasure"
            Begin Extent = 
               Top = 141
               Left = 558
               Bottom = 236
               Right = 728
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "YearOfManufacture"
            Begin Extent = 
               Top = 248
               Left = 401
               Bottom = 343
               Right = 571
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CoinMint"
            Begin Extent = 
               Top = 140
               Left = 373
               Bottom = 235
               Right = 543
            End
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CoinsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 810
         Width = 930
         Width = 750
         Width = 885
         Width = 1035
         Width = 930
         Width = 3945
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CoinsView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CoinsView'
GO
USE [master]
GO
ALTER DATABASE [Staff] SET  READ_WRITE 
GO
