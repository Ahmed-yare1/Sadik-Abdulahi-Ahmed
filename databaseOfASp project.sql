USE [master]
GO
/****** Object:  Database [HOTEL1]    Script Date: 8/6/2020 9:48:37 AM ******/
CREATE DATABASE [HOTEL1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HOTEL1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HOTEL1.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HOTEL1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HOTEL1_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HOTEL1] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HOTEL1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HOTEL1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HOTEL1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HOTEL1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HOTEL1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HOTEL1] SET ARITHABORT OFF 
GO
ALTER DATABASE [HOTEL1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HOTEL1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HOTEL1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HOTEL1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HOTEL1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HOTEL1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HOTEL1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HOTEL1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HOTEL1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HOTEL1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HOTEL1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HOTEL1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HOTEL1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HOTEL1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HOTEL1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HOTEL1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HOTEL1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HOTEL1] SET RECOVERY FULL 
GO
ALTER DATABASE [HOTEL1] SET  MULTI_USER 
GO
ALTER DATABASE [HOTEL1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HOTEL1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HOTEL1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HOTEL1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HOTEL1] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HOTEL1', N'ON'
GO
ALTER DATABASE [HOTEL1] SET QUERY_STORE = OFF
GO
USE [HOTEL1]
GO
/****** Object:  Table [dbo].[cafe]    Script Date: 8/6/2020 9:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cafe](
	[UserID] [int] NOT NULL,
	[Fname] [varchar](50) NOT NULL,
	[Lname] [varchar](50) NOT NULL,
	[Drinks] [varchar](50) NOT NULL,
	[Cups] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[PhoneNo] [varchar](50) NOT NULL,
	[AmountDeposited] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 8/6/2020 9:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[Fname] [varchar](50) NOT NULL,
	[Lname] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Comments] [varchar](500) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hall]    Script Date: 8/6/2020 9:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hall](
	[UserID] [int] NOT NULL,
	[Fname] [varchar](50) NOT NULL,
	[Lname] [varchar](50) NOT NULL,
	[Events] [varchar](50) NOT NULL,
	[Halltype] [varchar](50) NOT NULL,
	[HallChairs] [varchar](50) NOT NULL,
	[Eventdate] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[PhoneNo] [varchar](50) NOT NULL,
	[AmountDeposited] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[res]    Script Date: 8/6/2020 9:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[res](
	[UserID] [int] NOT NULL,
	[Fname] [varchar](50) NOT NULL,
	[Lname] [varchar](50) NOT NULL,
	[FoodType] [varchar](50) NOT NULL,
	[DrinkType] [varchar](50) NOT NULL,
	[Foods_And_Drinks_Want] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[PhoneNo] [varchar](50) NOT NULL,
	[AmountDeposited] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[restaraunt]    Script Date: 8/6/2020 9:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[restaraunt](
	[UserID] [int] NOT NULL,
	[Fname] [varchar](50) NOT NULL,
	[Lname] [varchar](50) NOT NULL,
	[FoodType] [varchar](50) NOT NULL,
	[DrinkType] [varchar](50) NOT NULL,
	[Foods_And_Drinks_Want] [varchar](50) NOT NULL,
	[Date] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[PhoneNo] [varchar](50) NOT NULL,
	[AmountDeposited] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 8/6/2020 9:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[UserID] [int] NOT NULL,
	[Fname] [varchar](100) NOT NULL,
	[Lname] [varchar](100) NOT NULL,
	[RoomType] [varchar](100) NOT NULL,
	[RoomNo] [int] NOT NULL,
	[Days] [int] NOT NULL,
	[Checkin] [varchar](100) NOT NULL,
	[Checkout] [varchar](100) NOT NULL,
	[MemberType] [varchar](100) NOT NULL,
	[EmailAddress] [varchar](100) NOT NULL,
	[PhoneNo] [varchar](100) NOT NULL,
	[AmountDeposited] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[uses]    Script Date: 8/6/2020 9:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uses](
	[Fname] [varchar](50) NOT NULL,
	[Lname] [varchar](50) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Birth] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[contact] ([Fname], [Lname], [Email], [Comments]) VALUES (N'zakarie ', N'omar nor', N'zaki@gmail.com', N'asc dhamaan bahda banadir hotel waxaa idinka codsanaya inaad wax ka badashaan qaabka uu u shaqeeyo systemkan mahadsanidiin')
INSERT [dbo].[contact] ([Fname], [Lname], [Email], [Comments]) VALUES (N'zakarie', N'omar', N'zakicad99@gmail.com', N'marka kowaad waa idin salamay dhamaan dadkii ka qayb qaatay sameenta systemkan marka xigta waxaa idinka codsanayaa in systemkan aad kusoo dartaan ama aad ka dhigtaan sido kale mobile app waayo  hada kaliya waa web application')
INSERT [dbo].[contact] ([Fname], [Lname], [Email], [Comments]) VALUES (N'zakarie', N'omar', N'zakicad99@gmail.com', N'marka kowaad waa idin salamay dhamaan dadkii ka qayb qaatay sameenta systemkan marka xigta waxaa idinka codsanayaa in systemkan aad kusoo dartaan ama aad ka dhigtaan sido kale mobile app waayo  hada kaliya waa web application. mahadsanidiin')
INSERT [dbo].[contact] ([Fname], [Lname], [Email], [Comments]) VALUES (N'sadaq', N'a', N'a@gmail.com', N'wxaan rabaa qol kale')
GO
INSERT [dbo].[hall] ([UserID], [Fname], [Lname], [Events], [Halltype], [HallChairs], [Eventdate], [Email], [PhoneNo], [AmountDeposited]) VALUES (1, N'zakarie', N'g', N'aroos', N'1', N'80', N'2018-07-17', N'zakicad99@gmail.com', N'0615048939', N'640')
INSERT [dbo].[hall] ([UserID], [Fname], [Lname], [Events], [Halltype], [HallChairs], [Eventdate], [Email], [PhoneNo], [AmountDeposited]) VALUES (1, N'zakarie', N'omar', N'aroos', N'1', N'70', N'2018-07-18', N'zakicad99@gmail.com', N'0615048939', N'560')
GO
INSERT [dbo].[restaraunt] ([UserID], [Fname], [Lname], [FoodType], [DrinkType], [Foods_And_Drinks_Want], [Date], [Email], [Address], [PhoneNo], [AmountDeposited]) VALUES (2, N'zakarie', N'omar', N'16', N'1', N'1', N'2018-07-17', N'zakicad99@gmail.com', N'kpp', N'0615048939', N'14')
INSERT [dbo].[restaraunt] ([UserID], [Fname], [Lname], [FoodType], [DrinkType], [Foods_And_Drinks_Want], [Date], [Email], [Address], [PhoneNo], [AmountDeposited]) VALUES (1, N'ali', N'a', N'12', N'1', N'20', N'2019-07-11', N'zalo@gmail.com', N'hhh', N'111', N'50')
GO
INSERT [dbo].[Rooms] ([UserID], [Fname], [Lname], [RoomType], [RoomNo], [Days], [Checkin], [Checkout], [MemberType], [EmailAddress], [PhoneNo], [AmountDeposited]) VALUES (1, N'abdi', N'omar', N'1', 1, 5, N'2018-07-18', N'2018-07-26', N'Customer', N'zakicad99@gmail.com', N'0615048939', 250)
INSERT [dbo].[Rooms] ([UserID], [Fname], [Lname], [RoomType], [RoomNo], [Days], [Checkin], [Checkout], [MemberType], [EmailAddress], [PhoneNo], [AmountDeposited]) VALUES (100, N'zakarie', N'omar', N'1', 1, 5, N'2018-07-18', N'2018-07-23', N'Customer', N'zakicad99@gmail.com', N'0615048939', 250)
INSERT [dbo].[Rooms] ([UserID], [Fname], [Lname], [RoomType], [RoomNo], [Days], [Checkin], [Checkout], [MemberType], [EmailAddress], [PhoneNo], [AmountDeposited]) VALUES (10, N'ali', N'adan', N'2', 1, 4, N'2018-07-18', N'2018-07-25', N'New Member', N'zaki@gmail.com', N'0615048939', 360)
INSERT [dbo].[Rooms] ([UserID], [Fname], [Lname], [RoomType], [RoomNo], [Days], [Checkin], [Checkout], [MemberType], [EmailAddress], [PhoneNo], [AmountDeposited]) VALUES (4, N'ali', N'omar', N'1', 2, 6, N'2018-12-17', N'2018-12-22', N'Customer', N'aliomar@gmail.com', N'061566666', 600)
INSERT [dbo].[Rooms] ([UserID], [Fname], [Lname], [RoomType], [RoomNo], [Days], [Checkin], [Checkout], [MemberType], [EmailAddress], [PhoneNo], [AmountDeposited]) VALUES (1, N'zakarie', N'omar', N'1', 1, 2, N'2018-12-18', N'2018-12-19', N'New Member', N'zakicad99@gmail.com', N'61588', 100)
GO
INSERT [dbo].[uses] ([Fname], [Lname], [Username], [Email], [Birth], [Password]) VALUES (N'sadaq', N'a', N'zaki123', N'a@gmail.com', N'2020-07-29', N'1912xa')
GO
USE [master]
GO
ALTER DATABASE [HOTEL1] SET  READ_WRITE 
GO
