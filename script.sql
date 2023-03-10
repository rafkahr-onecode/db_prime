USE [master]
GO
/****** Object:  Database [DB_PRIME]    Script Date: 2/10/2023 3:29:57 PM ******/
CREATE DATABASE [DB_PRIME]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_PRIME_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_PRIME.mdf' , SIZE = 9216KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB_PRIME_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_PRIME.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_PRIME] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_PRIME].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_PRIME] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_PRIME] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_PRIME] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_PRIME] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_PRIME] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_PRIME] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_PRIME] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_PRIME] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_PRIME] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_PRIME] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_PRIME] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_PRIME] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_PRIME] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_PRIME] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_PRIME] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_PRIME] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_PRIME] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_PRIME] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_PRIME] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_PRIME] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_PRIME] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_PRIME] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_PRIME] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_PRIME] SET  MULTI_USER 
GO
ALTER DATABASE [DB_PRIME] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_PRIME] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_PRIME] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_PRIME] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_PRIME] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_PRIME] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_PRIME', N'ON'
GO
ALTER DATABASE [DB_PRIME] SET QUERY_STORE = OFF
GO
USE [DB_PRIME]
GO
/****** Object:  Schema [Administrator]    Script Date: 2/10/2023 3:29:57 PM ******/
CREATE SCHEMA [Administrator]
GO
/****** Object:  Table [dbo].[TBLM_Active_Document_Status_File]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Active_Document_Status_File](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Step_Code] [nvarchar](50) NULL,
	[Status_Name] [nvarchar](200) NULL,
	[Step_Description] [nvarchar](200) NULL,
	[User_Pelaku] [nvarchar](200) NULL,
	[User_Tahap_Lanjut] [nvarchar](200) NULL,
	[Next_Step_Code] [nvarchar](200) NULL,
	[Revise_Step_Code] [nvarchar](200) NULL,
	[Reject_Step_Code] [nvarchar](200) NULL,
	[Email_Receiver] [nvarchar](200) NULL,
	[Menu_Text] [nvarchar](1000) NULL,
	[Submenu_Text] [nvarchar](1000) NULL,
	[Warna_Status] [nvarchar](50) NULL,
	[Action_Name] [nvarchar](100) NULL,
	[Is_Deleted] [bit] NULL,
	[Icon] [nvarchar](50) NULL,
	[Tooltip] [nvarchar](50) NULL,
	[Role_Access] [nvarchar](max) NULL,
	[Email_Subject] [nvarchar](1000) NULL,
	[Email_Body] [nvarchar](max) NULL,
 CONSTRAINT [PK_TBLM_Status_File] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Alih_Media_Status_File]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Alih_Media_Status_File](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Step_Code] [nvarchar](50) NULL,
	[Status_Name] [nvarchar](200) NULL,
	[Step_Description] [nvarchar](200) NULL,
	[User_Pelaku] [nvarchar](200) NULL,
	[User_Tahap_Lanjut] [nvarchar](200) NULL,
	[Next_Step_Code] [nvarchar](200) NULL,
	[Revise_Step_Code] [nvarchar](200) NULL,
	[Reject_Step_Code] [nvarchar](200) NULL,
	[Email_Receiver] [nvarchar](200) NULL,
	[Menu_Text] [nvarchar](1000) NULL,
	[Submenu_Text] [nvarchar](1000) NULL,
	[Warna_Status] [nvarchar](50) NULL,
	[Action_Name] [nvarchar](100) NULL,
	[Is_Deleted] [bit] NULL,
	[Icon] [nvarchar](50) NULL,
	[Tooltip] [nvarchar](50) NULL,
	[Role_Access] [nvarchar](max) NULL,
	[Email_Subject] [nvarchar](1000) NULL,
	[Email_Body] [nvarchar](max) NULL,
 CONSTRAINT [PK_TBLM_Alih_Media_Status_File] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Ambalan]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Ambalan](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_TBLM_Ambalan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Bahasa]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Bahasa](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_TBLM_Bahasa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Bentuk_Item]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Bentuk_Item](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_TBLM_Media_Arsip] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Directory]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Directory](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Feature_Name] [nvarchar](200) NULL,
	[Path] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Feature]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Feature](
	[Id] [nvarchar](50) NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Code] [nvarchar](50) NULL,
	[Parent_Feature_Code] [nvarchar](50) NULL,
	[Feature_Name] [nvarchar](200) NULL,
	[Area_Name] [nvarchar](200) NULL,
	[Controller_Name] [nvarchar](200) NULL,
	[Action_Name] [nvarchar](200) NULL,
	[Menu_Icon] [nvarchar](200) NULL,
	[Is_Menu] [bit] NULL,
	[Description] [nvarchar](200) NULL,
	[Sequence] [int] NULL,
	[Sequence_Child] [int] NULL,
	[Sub_Menu_Icon] [nvarchar](50) NULL,
	[Sub_Menu_Desc] [nvarchar](200) NULL,
	[Menu_Link] [nvarchar](50) NULL,
 CONSTRAINT [PK_TBLM_Feature] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_File_Transfer_Status_File]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_File_Transfer_Status_File](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Step_Code] [nvarchar](50) NULL,
	[Status_Name] [nvarchar](200) NULL,
	[Step_Description] [nvarchar](200) NULL,
	[User_Pelaku] [nvarchar](200) NULL,
	[User_Tahap_Lanjut] [nvarchar](200) NULL,
	[Next_Step_Code] [nvarchar](200) NULL,
	[Revise_Step_Code] [nvarchar](200) NULL,
	[Reject_Step_Code] [nvarchar](200) NULL,
	[Email_Receiver] [nvarchar](200) NULL,
	[Menu_Text] [nvarchar](1000) NULL,
	[Submenu_Text] [nvarchar](1000) NULL,
	[Warna_Status] [nvarchar](50) NULL,
	[Action_Name] [nvarchar](100) NULL,
	[Is_Deleted] [bit] NULL,
	[Icon] [nvarchar](50) NULL,
	[Tooltip] [nvarchar](50) NULL,
	[Role_Access] [nvarchar](max) NULL,
	[Email_Subject] [nvarchar](1000) NULL,
	[Email_Body] [nvarchar](max) NULL,
 CONSTRAINT [PK_TBLM_Status_File_STATUS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Gedung]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Gedung](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [varchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [varchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_TBLM_Gedung] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Idaman_Url]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Idaman_Url](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Name_End_Point] [nvarchar](250) NULL,
	[End_Point_Url] [nvarchar](500) NULL,
	[Parameter_Take] [nvarchar](500) NULL,
 CONSTRAINT [PK_TBLM_Idaman_Url] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Inactive_Archive_Management_Status_File]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Inactive_Archive_Management_Status_File](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Step_Code] [nvarchar](50) NULL,
	[Status_Name] [nvarchar](200) NULL,
	[Step_Description] [nvarchar](200) NULL,
	[User_Pelaku] [nvarchar](200) NULL,
	[User_Tahap_Lanjut] [nvarchar](200) NULL,
	[Next_Step_Code] [nvarchar](200) NULL,
	[Revise_Step_Code] [nvarchar](200) NULL,
	[Reject_Step_Code] [nvarchar](200) NULL,
	[Email_Receiver] [nvarchar](200) NULL,
	[Menu_Text] [nvarchar](1000) NULL,
	[Submenu_Text] [nvarchar](1000) NULL,
	[Warna_Status] [nvarchar](50) NULL,
	[Action_Name] [nvarchar](100) NULL,
	[Is_Deleted] [bit] NULL,
	[Icon] [nvarchar](50) NULL,
	[Tooltip] [nvarchar](50) NULL,
	[Role_Access] [nvarchar](max) NULL,
	[Email_Subject] [nvarchar](1000) NULL,
	[Email_Body] [nvarchar](max) NULL,
 CONSTRAINT [PK_TBLT_Inactive_Archive_Management_Status_File] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Indeks_Masalah]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Indeks_Masalah](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [varchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [varchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_TBLM_Indeks_Masalah] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Jenis_Media]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Jenis_Media](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_TBLM_Jenis_Media] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Kategori_Arsip]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Kategori_Arsip](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [varchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [varchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Hierarchy] [int] NULL,
	[Kategori] [varchar](50) NULL,
 CONSTRAINT [PK_TBLM_Kategori_Arsip] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Kesesuaian_Daftar_Fisik_Arsip]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Kesesuaian_Daftar_Fisik_Arsip](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Kesesuaian] [nvarchar](50) NULL,
 CONSTRAINT [PK_TBLM_Kesesuaian_Daftar_Fisik_Arsip] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Keterangan_Akses_Keamanan]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Keterangan_Akses_Keamanan](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [varchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [varchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Keterangan] [varchar](50) NULL,
	[Hierarchy] [int] NULL,
 CONSTRAINT [PK_TBLM_Keterangan_Akses_Keamanan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Kode_Klasifikasi_Pemberkasan]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Kode_Klasifikasi_Pemberkasan](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [varchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [varchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Kode_Sub_Pemberkasan_Id] [uniqueidentifier] NULL,
	[Kode] [nvarchar](50) NULL,
	[Deskripsi] [nvarchar](1000) NULL,
 CONSTRAINT [PK_TBLM_Kode_Klasifikasi_Pemberkasan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Kode_Pokok_Pemberkasan]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Kode_Pokok_Pemberkasan](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Kode] [nvarchar](50) NULL,
	[Pokok_Permasalahan] [nvarchar](1000) NULL,
 CONSTRAINT [PK_TBLM_Kode_Pokok_Pemberkasan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Kode_Sub_Pemberkasan]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Kode_Sub_Pemberkasan](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Kode_Pokok_Pemberkasan_Id] [uniqueidentifier] NULL,
	[Kode] [nvarchar](50) NULL,
	[Deskripsi] [nvarchar](1000) NULL,
	[Masa_Retensi_Active] [int] NULL,
	[Masa_Retensi_Inactive] [int] NULL,
	[Keterangan] [nvarchar](200) NULL,
 CONSTRAINT [PK_TBLM_Kode_Sub_Pemberkasan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Kota_Kabupaten]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Kota_Kabupaten](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [varchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [varchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Provinsi_Id] [uniqueidentifier] NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_TBLM_Kota_Kabupaten] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Lokasi_Pengolahan]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Lokasi_Pengolahan](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [varchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [varchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Delete_Date] [datetime2](7) NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_TBLM_Lokasi_Pengolahan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Perangkat]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Perangkat](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_TBLM_Perangkat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Provinsi]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Provinsi](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [varchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [varchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Delete_Date] [datetime2](7) NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_TBLM_Provinsi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Rak]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Rak](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_TBLM_Rak] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_RC_Penyimpanan]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_RC_Penyimpanan](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Record_Penyimpanan] [nvarchar](50) NULL,
 CONSTRAINT [PK_TBLM_RC_Penyimpanan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Record_Service_Request_Duplication_Type]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Record_Service_Request_Duplication_Type](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Name] [nvarchar](200) NULL,
 CONSTRAINT [PK_TBLM_Record_Service_Request_Duplication_Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Record_Service_Transaction_Type]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Record_Service_Transaction_Type](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Name] [nvarchar](200) NULL,
 CONSTRAINT [PK_TBLM_Record_Service_Transaction_Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Record_Services_Status_File]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Record_Services_Status_File](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Step_Code] [nvarchar](50) NULL,
	[Status_Name] [nvarchar](200) NULL,
	[Step_Description] [nvarchar](200) NULL,
	[User_Pelaku] [nvarchar](200) NULL,
	[User_Tahap_Lanjut] [nvarchar](200) NULL,
	[Next_Step_Code] [nvarchar](200) NULL,
	[Revise_Step_Code] [nvarchar](200) NULL,
	[Reject_Step_Code] [nvarchar](200) NULL,
	[Email_Receiver] [nvarchar](200) NULL,
	[Menu_Text] [nvarchar](1000) NULL,
	[Submenu_Text] [nvarchar](1000) NULL,
	[Warna_Status] [nvarchar](50) NULL,
	[Transaction_Type] [nvarchar](50) NULL,
	[Action_Name] [nvarchar](100) NULL,
	[Is_Deleted] [bit] NULL,
	[Icon] [nvarchar](50) NULL,
	[Tooltip] [nvarchar](50) NULL,
	[Role_Access] [nvarchar](max) NULL,
	[Email_Subject] [nvarchar](1000) NULL,
	[Email_Body] [nvarchar](max) NULL,
 CONSTRAINT [PK_TBLM_Recor_Services_Status_File] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Rekomendasi_Arsip]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Rekomendasi_Arsip](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TBLM_Rekomendasi_Arsip] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Role]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Role](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Name] [nvarchar](50) NULL,
	[Is_Add] [bit] NULL,
	[Is_Revise] [bit] NULL,
	[Is_Reject] [bit] NULL,
	[Is_Approve] [bit] NULL,
	[Is_Download] [bit] NULL,
	[Is_Submit] [bit] NULL,
	[Is_Complete] [bit] NULL,
	[Is_Survey] [bit] NULL,
	[Is_Upload] [bit] NULL,
	[Is_Assign] [bit] NULL,
	[Is_Reassign] [bit] NULL,
	[Is_Sign_Document] [bit] NULL,
	[Is_Returned] [bit] NULL,
	[Is_Extend] [bit] NULL,
	[Is_Borrowed] [bit] NULL,
	[Is_Review] [bit] NULL,
	[Is_Expired] [bit] NULL,
	[Is_Add_File_Transfer] [bit] NULL,
	[Is_Update_Inventory] [bit] NULL,
 CONSTRAINT [PK_TBLM_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Role_Feature]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Role_Feature](
	[Id] [nvarchar](50) NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Feature_Id] [nvarchar](50) NULL,
	[Role_Id] [uniqueidentifier] NULL,
	[Is_Create] [bit] NOT NULL,
	[Is_Read] [bit] NOT NULL,
	[Is_Update] [bit] NOT NULL,
	[Is_Delete] [bit] NOT NULL,
 CONSTRAINT [PK_TBLM_Role_Feature] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Ruangan]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Ruangan](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [varchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [varchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Gedung_Id] [uniqueidentifier] NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_TBLM_Ruangan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Sequence_Counter]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Sequence_Counter](
	[Name] [nvarchar](100) NOT NULL,
	[Sequence] [int] NOT NULL,
	[Year] [int] NULL,
 CONSTRAINT [PK_TBLM_Sequence_Counter_1] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Sub_Permasalahan]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Sub_Permasalahan](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [varchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [varchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Kode_Klasifikasi_Pemberkasan_Id] [uniqueidentifier] NULL,
	[Name] [varchar](1000) NULL,
 CONSTRAINT [PK_TBLM_Sub_Permasalahan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Subyek_Masalah]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Subyek_Masalah](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [varchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [varchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Delete_Date] [datetime2](7) NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_TBLM_Subyek_Masalah] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLM_Tingkat_Perkembangan_Document]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLM_Tingkat_Perkembangan_Document](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [varchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [varchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_TBLM_Tingkat_Perkembangan_Dokumen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Active_Document_File]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Active_Document_File](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Kode_Sub_Pemberkasan_Id] [uniqueidentifier] NULL,
	[Active_Document_Header_Sender_Id] [uniqueidentifier] NULL,
	[Tingkat_Perkembangan_Berkas_Id] [uniqueidentifier] NULL,
	[Kategori_Arsip_Id] [uniqueidentifier] NULL,
	[Keterangan_Akses_Keamanan_Id] [uniqueidentifier] NULL,
	[Nomor_Boks_Sementara] [nvarchar](10) NULL,
	[Nominal] [nvarchar](200) NULL,
	[Kurun_Waktu_Berkas_Mulai] [int] NULL,
	[Kurun_Waktu_Berkas_Akhir] [int] NULL,
	[Jumlah_Berkas] [int] NULL,
	[Retensi_Aktif] [int] NULL,
	[Retensi_Inaktif] [int] NULL,
	[Keterangan_Retensi] [nvarchar](200) NULL,
	[Keterangan] [nvarchar](max) NULL,
	[Request_Number] [nvarchar](200) NULL,
	[Sequence] [int] NULL,
 CONSTRAINT [PK_TBLT_File_Active_Document] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Active_Document_Header_Sender]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Active_Document_Header_Sender](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Submitted_By] [nvarchar](50) NULL,
	[Submitted_Date] [datetime2](7) NULL,
	[Approved_By] [nvarchar](50) NULL,
	[Approved_Date] [datetime2](7) NULL,
	[Assigned_To] [nvarchar](50) NULL,
	[Assigned_Date] [datetime2](7) NULL,
	[Status_Id] [uniqueidentifier] NULL,
	[Request_Number] [nvarchar](13) NULL,
	[Perusahaan] [nvarchar](200) NULL,
	[Direktorat] [nvarchar](200) NULL,
	[Fungsi] [nvarchar](200) NULL,
	[KBO] [nvarchar](200) NULL,
	[No_SK_Organisasi] [nvarchar](200) NULL,
	[Nama_Pimpinan] [nvarchar](200) NULL,
	[Alamat] [nvarchar](200) NULL,
	[Contact_Person_Name] [nvarchar](200) NULL,
	[Contact_Person_Email] [nvarchar](200) NULL,
	[Contact_Person_Mobile_Number] [nvarchar](200) NULL,
	[Jenis_Series_Arsip] [nvarchar](200) NULL,
	[Uraian_Informasi] [nvarchar](max) NULL,
	[Nama_Berkas] [nvarchar](200) NULL,
	[Jumlah_Berkas] [int] NULL,
	[Kode_Sub_Pemberkasan_Id] [uniqueidentifier] NULL,
	[Keterangan_Akses_Keamanan_Id] [uniqueidentifier] NULL,
	[Nomor_Boks_Sementara] [nvarchar](10) NULL,
 CONSTRAINT [PK_TBLT_Header_Sender_Active_Document] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Active_Document_History]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Active_Document_History](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Active_Document_Status_File_Id] [uniqueidentifier] NULL,
	[Active_Document_Header_Sender_Id] [uniqueidentifier] NULL,
	[Step_Code] [nvarchar](50) NULL,
	[Status_Name] [nvarchar](200) NULL,
	[User_Pelaku] [nvarchar](200) NULL,
	[Menu_Text] [nvarchar](1000) NULL,
	[Submenu_Text] [nvarchar](1000) NULL,
	[Comments_Text] [nvarchar](1000) NULL,
 CONSTRAINT [PK_TBLT_History_Active_Document] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Active_Document_Item]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Active_Document_Item](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Active_Document_File_Id] [uniqueidentifier] NULL,
	[Bentuk_Item_Id] [uniqueidentifier] NULL,
	[No_Item_Arsip] [nvarchar](100) NULL,
	[Uraian_Informasi] [nvarchar](max) NULL,
	[Tanggal] [datetime2](7) NULL,
	[Tingkat_Perkembangan_Dokumen_Id] [uniqueidentifier] NULL,
	[Jumlah] [int] NULL,
	[File_Name_System] [nvarchar](200) NULL,
	[File_Name_User] [nvarchar](200) NULL,
	[Keterangan] [nvarchar](max) NULL,
	[Sequence] [int] NULL,
 CONSTRAINT [PK_TBLT_Item_Active_Document] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Alih_Media_File]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Alih_Media_File](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Kode_Sub_Pemberkasan_Id] [uniqueidentifier] NULL,
	[Alih_Media_Header_Sender_Id] [uniqueidentifier] NULL,
	[Tingkat_Perkembangan_Berkas_Id] [uniqueidentifier] NULL,
	[Kategori_Arsip_Id] [uniqueidentifier] NULL,
	[Keterangan_Akses_Keamanan_Id] [uniqueidentifier] NULL,
	[Lokasi_Tersimpan] [nvarchar](200) NULL,
	[Nominal] [nvarchar](200) NULL,
	[Kurun_Waktu_Berkas_Mulai] [int] NULL,
	[Kurun_Waktu_Berkas_Akhir] [int] NULL,
	[Jumlah_Berkas] [int] NULL,
	[Retensi_Aktif] [int] NULL,
	[Retensi_Inaktif] [int] NULL,
	[Keterangan_Retensi] [nvarchar](200) NULL,
	[Keterangan] [nvarchar](max) NULL,
	[Request_Number] [nvarchar](200) NULL,
	[Sequence] [int] NULL,
 CONSTRAINT [PK_TBLT_Alih_Media_File] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Alih_Media_Header_Sender]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Alih_Media_Header_Sender](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Status_Id] [uniqueidentifier] NULL,
	[Inactive_Archive_Management_Inventory_Id] [uniqueidentifier] NULL,
	[Request_Number] [nvarchar](13) NULL,
	[Perusahaan] [nvarchar](200) NULL,
	[Direktorat] [nvarchar](200) NULL,
	[Fungsi] [nvarchar](200) NULL,
	[KBO] [nvarchar](200) NULL,
	[No_SK_Organisasi] [nvarchar](200) NULL,
	[Nama_Pimpinan] [nvarchar](200) NULL,
	[Alamat] [nvarchar](200) NULL,
	[Contact_Person_Name] [nvarchar](200) NULL,
	[Contact_Person_Email] [nvarchar](200) NULL,
	[Contact_Person_Mobile_Number] [nvarchar](200) NULL,
	[Jenis_Series_Arsip] [nvarchar](200) NULL,
	[Uraian_Informasi] [nvarchar](max) NULL,
	[Submitted_By] [nvarchar](50) NULL,
	[Submitted_Date] [datetime2](7) NULL,
	[Approved_By] [nvarchar](50) NULL,
	[Approved_Date] [datetime2](7) NULL,
	[Assigned_To] [nvarchar](50) NULL,
	[Assigned_Date] [datetime2](7) NULL,
	[Nama_Berkas] [nvarchar](200) NULL,
	[File_Transfer_Header_Sender_Id] [uniqueidentifier] NULL,
	[Lokasi_Tersimpan] [nvarchar](200) NULL,
	[Jumlah_Berkas] [int] NULL,
	[Format_Digital_Id] [uniqueidentifier] NULL,
	[Kode_Sub_Pemberkasan_Id] [uniqueidentifier] NULL,
	[Keterangan_Akses_Keamanan_Id] [uniqueidentifier] NULL,
	[Inventory_Number] [nvarchar](50) NULL,
 CONSTRAINT [PK_TBLT_Alih_Media_Header_Sender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Alih_Media_History]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Alih_Media_History](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Alih_Media_Status_File_Id] [uniqueidentifier] NULL,
	[Alih_Media_Header_Sender_Id] [uniqueidentifier] NULL,
	[Step_Code] [nvarchar](50) NULL,
	[Status_Name] [nvarchar](200) NULL,
	[User_Pelaku] [nvarchar](200) NULL,
	[Menu_Text] [nvarchar](1000) NULL,
	[Submenu_Text] [nvarchar](1000) NULL,
	[Comments_Text] [nvarchar](1000) NULL,
 CONSTRAINT [PK_TBLT_Alih_Media_History] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Alih_Media_Item]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Alih_Media_Item](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Alih_Media_File_Id] [uniqueidentifier] NULL,
	[Bentuk_Item_Id] [uniqueidentifier] NULL,
	[No_Item_Arsip] [nvarchar](100) NULL,
	[Uraian_Informasi] [nvarchar](max) NULL,
	[Tanggal] [datetime2](7) NULL,
	[Tingkat_Perkembangan_Dokumen_Id] [uniqueidentifier] NULL,
	[Jumlah] [int] NULL,
	[File_Name_System] [nvarchar](200) NULL,
	[File_Name_User] [nvarchar](200) NULL,
	[Keterangan] [nvarchar](max) NULL,
	[Sequence] [int] NULL,
	[File_Name_System_Alih_Media] [nvarchar](200) NULL,
	[File_Name_User_Alih_Media] [nvarchar](200) NULL,
	[Is_Done] [bit] NULL,
 CONSTRAINT [PK_TBLT_Alih_Media_Item] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Alih_Media_Proposal]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Alih_Media_Proposal](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Jumlah_Halaman] [int] NULL,
	[Alih_Media_Header_Sender_Id] [uniqueidentifier] NULL,
	[Alih_Media_File_Id] [uniqueidentifier] NULL,
	[Jenis_Media_Id] [uniqueidentifier] NULL,
	[Perangkat_Id] [uniqueidentifier] NULL,
	[Biaya] [nvarchar](50) NULL,
	[Waktu] [datetime2](7) NULL,
	[Keterangan] [nvarchar](1000) NULL,
	[Jenis_Media_Menjadi_Id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TBLT_Alih_Media_Proposal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_File_Signing]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_File_Signing](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Username] [nvarchar](200) NULL,
	[Role_Signing] [nvarchar](200) NULL,
 CONSTRAINT [PK_TBLT_File_Signing] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_File_Transfer_File]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_File_Transfer_File](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Kode_Sub_Pemberkasan_Id] [uniqueidentifier] NULL,
	[File_Transfer_Header_Sender_Id] [uniqueidentifier] NULL,
	[Tingkat_Perkembangan_Berkas_Id] [uniqueidentifier] NULL,
	[Kategori_Arsip_Id] [uniqueidentifier] NULL,
	[Keterangan_Akses_Keamanan_Id] [uniqueidentifier] NULL,
	[Lokasi_Tersimpan] [nvarchar](200) NULL,
	[Nominal] [nvarchar](200) NULL,
	[Kurun_Waktu_Berkas_Mulai] [int] NULL,
	[Kurun_Waktu_Berkas_Akhir] [int] NULL,
	[Jumlah_Berkas] [int] NULL,
	[Retensi_Aktif] [int] NULL,
	[Retensi_Inaktif] [int] NULL,
	[Keterangan_Retensi] [nvarchar](200) NULL,
	[Keterangan] [nvarchar](max) NULL,
	[Request_Number] [nvarchar](200) NULL,
	[Sequence] [int] NULL,
 CONSTRAINT [PK_TBLT_File] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_File_Transfer_Header_Sender]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_File_Transfer_Header_Sender](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Status_Id] [uniqueidentifier] NULL,
	[Request_Number] [nvarchar](13) NULL,
	[Perusahaan] [nvarchar](200) NULL,
	[Direktorat] [nvarchar](200) NULL,
	[Fungsi] [nvarchar](200) NULL,
	[KBO] [nvarchar](200) NULL,
	[No_SK_Organisasi] [nvarchar](200) NULL,
	[Nama_Pimpinan] [nvarchar](200) NULL,
	[Alamat] [nvarchar](200) NULL,
	[Contact_Person_Name] [nvarchar](200) NULL,
	[Contact_Person_Email] [nvarchar](200) NULL,
	[Contact_Person_Mobile_Number] [nvarchar](200) NULL,
	[Jenis_Series_Arsip] [nvarchar](200) NULL,
	[Uraian_Informasi] [nvarchar](max) NULL,
	[Submitted_By] [nvarchar](50) NULL,
	[Submitted_Date] [datetime2](7) NULL,
	[Approved_By] [nvarchar](50) NULL,
	[Approved_Date] [datetime2](7) NULL,
	[Assigned_To] [nvarchar](50) NULL,
	[Assigned_Date] [datetime2](7) NULL,
	[Nama_Berkas] [nvarchar](200) NULL,
	[Assigned_By] [nvarchar](50) NULL,
	[Survey_By] [nvarchar](50) NULL,
	[Survey_Date] [datetime2](7) NULL,
	[Jumlah_Berkas] [int] NULL,
	[Kode_Sub_Pemberkasan_Id] [uniqueidentifier] NULL,
	[Keterangan_Akses_Keamanan_Id] [uniqueidentifier] NULL,
	[Lokasi_Tersimpan] [nvarchar](200) NULL,
 CONSTRAINT [PK_TBLT_File_Transfer_Header_Sender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_File_Transfer_History]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_File_Transfer_History](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[File_Transfer_Status_File_Id] [uniqueidentifier] NULL,
	[File_Transfer_Header_Sender_Id] [uniqueidentifier] NULL,
	[Step_Code] [nvarchar](50) NULL,
	[Status_Name] [nvarchar](1000) NULL,
	[User_Pelaku] [nvarchar](1000) NULL,
	[Menu_Text] [nvarchar](1000) NULL,
	[Submenu_Text] [nvarchar](1000) NULL,
	[Comments_Text] [nvarchar](1000) NULL,
 CONSTRAINT [PK_TBLT_File_Transfer_History] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_File_Transfer_Item]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_File_Transfer_Item](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[File_Transfer_File_Id] [uniqueidentifier] NULL,
	[Bentuk_Item_Id] [uniqueidentifier] NULL,
	[No_Item_Arsip] [nvarchar](100) NULL,
	[Uraian_Informasi] [nvarchar](max) NULL,
	[Tanggal] [datetime2](7) NULL,
	[Tingkat_Perkembangan_Dokumen_Id] [uniqueidentifier] NULL,
	[Jumlah] [int] NULL,
	[File_Name_System] [nvarchar](200) NULL,
	[File_Name_User] [nvarchar](200) NULL,
	[Keterangan] [nvarchar](max) NULL,
	[Sequence] [int] NULL,
 CONSTRAINT [PK_TBLT_Item] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_File_Transfer_Survey]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_File_Transfer_Survey](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[File_Transfer_Status_File_Id] [uniqueidentifier] NULL,
	[File_Transfer_Header_Sender_Id] [uniqueidentifier] NULL,
	[Nomor_Permintaan] [nvarchar](50) NULL,
	[Pelaksana_Survey] [nvarchar](100) NULL,
	[Tanggal_Survey] [datetime2](7) NULL,
	[Penanggung_Jawab_Fungsi] [nvarchar](100) NULL,
	[Lokasi_Arsip] [nvarchar](100) NULL,
	[Kondisi_Arsip] [nvarchar](50) NULL,
	[Media_Arsip] [nvarchar](50) NULL,
	[Jumlah] [int] NULL,
	[Kurun_Waktu] [int] NULL,
	[Sistem_Penataan] [nvarchar](50) NULL,
	[Berkas_Arsip_Id] [uniqueidentifier] NULL,
	[Sarana_Simpan_Id] [uniqueidentifier] NULL,
	[Retensi_Arsip_Id] [uniqueidentifier] NULL,
	[Rekomendasi_Arsip_Id] [uniqueidentifier] NULL,
	[Catatan] [nvarchar](50) NULL,
	[File_Name_System] [nvarchar](200) NULL,
	[File_Name_User] [nvarchar](200) NULL,
	[RC_Penyimpanan_Id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TBLT_File_Transfer_Survey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Inactive_Archive_Management_File]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Inactive_Archive_Management_File](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Kode_Sub_Pemberkasan_Id] [uniqueidentifier] NULL,
	[Inactive_Archive_Management_Header_Sender_Id] [uniqueidentifier] NULL,
	[Tingkat_Perkembangan_Berkas_Id] [uniqueidentifier] NULL,
	[Kategori_Arsip_Id] [uniqueidentifier] NULL,
	[Keterangan_Akses_Keamanan_Id] [uniqueidentifier] NULL,
	[Nomor_Boks_Sementara] [nvarchar](50) NULL,
	[Nominal] [nvarchar](200) NULL,
	[Kurun_Waktu_Berkas_Mulai] [int] NULL,
	[Kurun_Waktu_Berkas_Akhir] [int] NULL,
	[Jumlah_Berkas] [int] NULL,
	[Retensi_Aktif] [int] NULL,
	[Retensi_Inaktif] [int] NULL,
	[Keterangan_Retensi] [nvarchar](200) NULL,
	[Keterangan] [nvarchar](max) NULL,
	[Request_Number] [nvarchar](200) NULL,
	[Sequence] [int] NULL,
 CONSTRAINT [PK_TBLT_Inactive_Archive_Management_File] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Inactive_Archive_Management_Header_Sender]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Inactive_Archive_Management_Header_Sender](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Status_Id] [uniqueidentifier] NULL,
	[Record_Service_Header_Sender_Id] [uniqueidentifier] NULL,
	[Request_Number] [nvarchar](13) NULL,
	[Perusahaan] [nvarchar](200) NULL,
	[Direktorat] [nvarchar](200) NULL,
	[Fungsi] [nvarchar](200) NULL,
	[KBO] [nvarchar](200) NULL,
	[No_SK_Organisasi] [nvarchar](200) NULL,
	[Nama_Pimpinan] [nvarchar](200) NULL,
	[Alamat] [nvarchar](200) NULL,
	[Contact_Person_Name] [nvarchar](200) NULL,
	[Contact_Person_Email] [nvarchar](200) NULL,
	[Contact_Person_Mobile_Number] [nvarchar](200) NULL,
	[Jenis_Series_Arsip] [nvarchar](200) NULL,
	[Uraian_Informasi] [nvarchar](200) NULL,
	[Submitted_By] [nvarchar](50) NULL,
	[Submitted_Date] [datetime2](7) NULL,
	[Approved_By] [nvarchar](50) NULL,
	[Approved_Date] [datetime2](7) NULL,
	[Assigned_To] [nvarchar](50) NULL,
	[Assigned_Date] [datetime2](7) NULL,
	[Kategori_Arsip] [nvarchar](50) NULL,
	[CanBeBorrowed] [bit] NULL,
	[Nama_Berkas] [nvarchar](50) NULL,
	[Status_Alih_Media] [bit] NULL,
	[Alih_Media_Header_Sender_Id] [uniqueidentifier] NULL,
	[Kode_Sub_Pemberkasan_Id] [uniqueidentifier] NULL,
	[Keterangan_Akses_Keamanan_Id] [uniqueidentifier] NULL,
	[Lokasi_Tersimpan] [nvarchar](200) NULL,
	[Jumlah_Berkas] [int] NULL,
	[File_Transfer_Header_Sender_Id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TBLT_Inactive_Archive_Management_Header_Sender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Inactive_Archive_Management_History]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Inactive_Archive_Management_History](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Inactive_Archive_Management_Status_File_Id] [uniqueidentifier] NULL,
	[Inactive_Archive_Management_Header_Sender_Id] [uniqueidentifier] NULL,
	[Step_Code] [nvarchar](50) NULL,
	[Status_Name] [nvarchar](200) NULL,
	[User_Pelaku] [nvarchar](200) NULL,
	[Menu_Text] [nvarchar](1000) NULL,
	[Submenu_Text] [nvarchar](1000) NULL,
	[Comment_Text] [nvarchar](1000) NULL,
 CONSTRAINT [PK_TBLT_Inactive_Archive_Management_History] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Inactive_Archive_Management_Inventory]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Inactive_Archive_Management_Inventory](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Inactive_Archive_Management_File_Id] [uniqueidentifier] NULL,
	[Gedung_Id] [uniqueidentifier] NULL,
	[Ruangan_Id] [uniqueidentifier] NULL,
	[Rak_Id] [uniqueidentifier] NULL,
	[Ambalan_Id] [uniqueidentifier] NULL,
	[Boks] [nvarchar](200) NULL,
	[Folder] [nvarchar](200) NULL,
	[Keterangan] [nvarchar](max) NULL,
	[Sequence] [int] NULL,
 CONSTRAINT [PK_TBLT_Inventory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Inactive_Archive_Management_Item]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Inactive_Archive_Management_Item](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Inactive_Archive_Management_File_Id] [uniqueidentifier] NULL,
	[Kode_Sub_Pemberkasan_Id] [uniqueidentifier] NULL,
	[Tingkat_Perkembangan_Dokumen_Id] [uniqueidentifier] NULL,
	[Bentuk_Item_Id] [uniqueidentifier] NULL,
	[No_Item_Arsip] [nvarchar](100) NULL,
	[Uraian_Informasi] [nvarchar](max) NULL,
	[Tanggal] [datetime2](7) NULL,
	[Jumlah] [int] NULL,
	[File_Name_User] [nvarchar](200) NULL,
	[File_Name_System] [nvarchar](200) NULL,
	[Keterangan] [nvarchar](max) NULL,
	[Sequence] [int] NULL,
 CONSTRAINT [PK_TBLT_Inactive_Archive_Management_Item] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Notification_Bell]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Notification_Bell](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Header_Id] [uniqueidentifier] NULL,
	[Status_Id] [uniqueidentifier] NULL,
	[Feature_Name] [nvarchar](50) NULL,
	[Sender_Name] [nvarchar](200) NULL,
	[Sent_To] [nvarchar](200) NULL,
	[Status_Notif_Read] [bit] NULL,
 CONSTRAINT [PK_TBLT_Notification_Bell] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Record_Service_Attachment]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Record_Service_Attachment](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Record_Service_Header_Sender_Id] [uniqueidentifier] NULL,
	[Sequence] [int] NULL,
	[File_Name_System] [nvarchar](200) NULL,
	[File_Name_User] [nvarchar](200) NULL,
 CONSTRAINT [PK_TBLT_Record_Service_Attachment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Record_Service_File]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Record_Service_File](
	[Id] [uniqueidentifier] NOT NULL,
	[Record_Service_Header_Sender_Id] [uniqueidentifier] NULL,
	[Inactive_Archive_Management_Header_Sender_Id] [uniqueidentifier] NULL,
	[Sequence] [int] NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
 CONSTRAINT [PK_TBLT_Record_Service_File] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Record_Service_Header_Sender]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Record_Service_Header_Sender](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Perusahaan] [nvarchar](200) NULL,
	[Direktorat] [nvarchar](200) NULL,
	[Fungsi] [nvarchar](200) NULL,
	[Nama_Pimpinan] [nvarchar](200) NULL,
	[Alamat] [nvarchar](1000) NULL,
	[Contact_Person_Name] [nvarchar](200) NULL,
	[Contact_Person_Email] [nvarchar](200) NULL,
	[Contact_Person_Mobile_Number] [nvarchar](200) NULL,
	[Judul_Permintaan_Peminjaman] [nvarchar](250) NULL,
	[Referensi] [nvarchar](250) NULL,
	[Type_Of_Duplication_Id] [uniqueidentifier] NULL,
	[Request_Number] [nvarchar](13) NULL,
	[Status_Id] [uniqueidentifier] NULL,
	[Submitted_By] [nvarchar](50) NULL,
	[Submitted_Date] [datetime2](7) NULL,
	[SubmitApproved_By] [nvarchar](50) NULL,
	[SubmitApproved_Date] [datetime2](7) NULL,
	[Approved_By] [nvarchar](50) NULL,
	[Approved_Date] [datetime2](7) NULL,
	[Assigned_To] [nvarchar](50) NULL,
	[Assigned_Date] [datetime2](7) NULL,
	[Transaction_Type_Id] [uniqueidentifier] NULL,
	[Uraian_Informasi] [nvarchar](300) NULL,
	[No_SK_Organisasi] [nvarchar](200) NULL,
	[KBO] [nvarchar](200) NULL,
	[Jenis_Series_Arsip] [nvarchar](200) NULL,
	[Inactive_Archive_Management_Header_Sender_Id] [uniqueidentifier] NULL,
	[Transfer_Date] [datetime2](7) NULL,
	[Expected_Return_Date] [datetime2](7) NULL,
	[Return_Date] [datetime2](7) NULL,
	[Download_Expired_Date] [datetime2](7) NULL,
	[Access_Expired_Date] [datetime2](7) NULL,
	[BorrowStartDate] [datetime2](7) NULL,
 CONSTRAINT [PK_TBLT_Record_Service_Header_Sender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLT_Record_Service_History]    Script Date: 2/10/2023 3:29:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLT_Record_Service_History](
	[Id] [uniqueidentifier] NOT NULL,
	[Created_By] [nvarchar](50) NULL,
	[Created_Date] [datetime2](7) NULL,
	[Updated_By] [nvarchar](50) NULL,
	[Updated_Date] [datetime2](7) NULL,
	[Deleted_Date] [datetime2](7) NULL,
	[Record_Service_Status_File_Id] [uniqueidentifier] NULL,
	[Record_Service_Header_Sender_Id] [uniqueidentifier] NULL,
	[Step_Code] [nvarchar](50) NULL,
	[Status_Name] [nvarchar](200) NULL,
	[User_Pelaku] [nvarchar](200) NULL,
	[Menu_Text] [nvarchar](1000) NULL,
	[Submenu_Text] [nvarchar](1000) NULL,
	[Comment_Text] [nvarchar](1000) NULL,
 CONSTRAINT [PK_TBLT_Record_Service_History] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TBLM_Kode_Klasifikasi_Pemberkasan]  WITH CHECK ADD  CONSTRAINT [FK_TBLM_Kode_Klasifikasi_Pemberkasan_TBLM_Kode_Sub_Pemberkasan] FOREIGN KEY([Kode_Sub_Pemberkasan_Id])
REFERENCES [dbo].[TBLM_Kode_Sub_Pemberkasan] ([Id])
GO
ALTER TABLE [dbo].[TBLM_Kode_Klasifikasi_Pemberkasan] CHECK CONSTRAINT [FK_TBLM_Kode_Klasifikasi_Pemberkasan_TBLM_Kode_Sub_Pemberkasan]
GO
ALTER TABLE [dbo].[TBLM_Kode_Sub_Pemberkasan]  WITH CHECK ADD  CONSTRAINT [FK_TBLM_Kode_Sub_Pemberkasan_TBLM_Kode_Pokok_Pemberkasan] FOREIGN KEY([Kode_Pokok_Pemberkasan_Id])
REFERENCES [dbo].[TBLM_Kode_Pokok_Pemberkasan] ([Id])
GO
ALTER TABLE [dbo].[TBLM_Kode_Sub_Pemberkasan] CHECK CONSTRAINT [FK_TBLM_Kode_Sub_Pemberkasan_TBLM_Kode_Pokok_Pemberkasan]
GO
ALTER TABLE [dbo].[TBLM_Kota_Kabupaten]  WITH CHECK ADD  CONSTRAINT [FK_TBLM_Kota_Kabupaten_TBLM_Provinsi] FOREIGN KEY([Provinsi_Id])
REFERENCES [dbo].[TBLM_Provinsi] ([Id])
GO
ALTER TABLE [dbo].[TBLM_Kota_Kabupaten] CHECK CONSTRAINT [FK_TBLM_Kota_Kabupaten_TBLM_Provinsi]
GO
ALTER TABLE [dbo].[TBLM_Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_TBLM_Role_Feature_TBLM_Feature] FOREIGN KEY([Feature_Id])
REFERENCES [dbo].[TBLM_Feature] ([Id])
GO
ALTER TABLE [dbo].[TBLM_Role_Feature] CHECK CONSTRAINT [FK_TBLM_Role_Feature_TBLM_Feature]
GO
ALTER TABLE [dbo].[TBLM_Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_TBLM_Role_Feature_TBLM_Role] FOREIGN KEY([Role_Id])
REFERENCES [dbo].[TBLM_Role] ([Id])
GO
ALTER TABLE [dbo].[TBLM_Role_Feature] CHECK CONSTRAINT [FK_TBLM_Role_Feature_TBLM_Role]
GO
ALTER TABLE [dbo].[TBLM_Ruangan]  WITH CHECK ADD  CONSTRAINT [FK_TBLM_Ruangan_TBLM_Gedung] FOREIGN KEY([Gedung_Id])
REFERENCES [dbo].[TBLM_Gedung] ([Id])
GO
ALTER TABLE [dbo].[TBLM_Ruangan] CHECK CONSTRAINT [FK_TBLM_Ruangan_TBLM_Gedung]
GO
ALTER TABLE [dbo].[TBLM_Sub_Permasalahan]  WITH CHECK ADD  CONSTRAINT [FK_TBLM_Sub_Permasalahan_TBLM_Kode_Klasifikasi_Pemberkasan] FOREIGN KEY([Kode_Klasifikasi_Pemberkasan_Id])
REFERENCES [dbo].[TBLM_Kode_Klasifikasi_Pemberkasan] ([Id])
GO
ALTER TABLE [dbo].[TBLM_Sub_Permasalahan] CHECK CONSTRAINT [FK_TBLM_Sub_Permasalahan_TBLM_Kode_Klasifikasi_Pemberkasan]
GO
ALTER TABLE [dbo].[TBLT_Active_Document_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Active_Document_File_TBLM_Kategori_Arsip] FOREIGN KEY([Kategori_Arsip_Id])
REFERENCES [dbo].[TBLM_Kategori_Arsip] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Active_Document_File] CHECK CONSTRAINT [FK_TBLT_Active_Document_File_TBLM_Kategori_Arsip]
GO
ALTER TABLE [dbo].[TBLT_Active_Document_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Active_Document_File_TBLM_Keterangan_Akses_Keamanan] FOREIGN KEY([Keterangan_Akses_Keamanan_Id])
REFERENCES [dbo].[TBLM_Keterangan_Akses_Keamanan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Active_Document_File] CHECK CONSTRAINT [FK_TBLT_Active_Document_File_TBLM_Keterangan_Akses_Keamanan]
GO
ALTER TABLE [dbo].[TBLT_Active_Document_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Active_Document_File_TBLM_Kode_Sub_Pemberkasan] FOREIGN KEY([Kode_Sub_Pemberkasan_Id])
REFERENCES [dbo].[TBLM_Kode_Sub_Pemberkasan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Active_Document_File] CHECK CONSTRAINT [FK_TBLT_Active_Document_File_TBLM_Kode_Sub_Pemberkasan]
GO
ALTER TABLE [dbo].[TBLT_Active_Document_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Active_Document_File_TBLM_Tingkat_Perkembangan_Dokumen] FOREIGN KEY([Tingkat_Perkembangan_Berkas_Id])
REFERENCES [dbo].[TBLM_Tingkat_Perkembangan_Document] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Active_Document_File] CHECK CONSTRAINT [FK_TBLT_Active_Document_File_TBLM_Tingkat_Perkembangan_Dokumen]
GO
ALTER TABLE [dbo].[TBLT_Active_Document_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Active_Document_File_TBLT_Active_Document_Header_Sender] FOREIGN KEY([Active_Document_Header_Sender_Id])
REFERENCES [dbo].[TBLT_Active_Document_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Active_Document_File] CHECK CONSTRAINT [FK_TBLT_Active_Document_File_TBLT_Active_Document_Header_Sender]
GO
ALTER TABLE [dbo].[TBLT_Active_Document_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Active_Document_Header_Sender_TBLM_Keterangan_Akses_Keamanan] FOREIGN KEY([Keterangan_Akses_Keamanan_Id])
REFERENCES [dbo].[TBLM_Keterangan_Akses_Keamanan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Active_Document_Header_Sender] CHECK CONSTRAINT [FK_TBLT_Active_Document_Header_Sender_TBLM_Keterangan_Akses_Keamanan]
GO
ALTER TABLE [dbo].[TBLT_Active_Document_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Active_Document_Header_Sender_TBLM_Kode_Sub_Pemberkasan] FOREIGN KEY([Kode_Sub_Pemberkasan_Id])
REFERENCES [dbo].[TBLM_Kode_Sub_Pemberkasan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Active_Document_Header_Sender] CHECK CONSTRAINT [FK_TBLT_Active_Document_Header_Sender_TBLM_Kode_Sub_Pemberkasan]
GO
ALTER TABLE [dbo].[TBLT_Active_Document_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Header_Sender_Active_Document_TBLM_Status_File_Active_Document] FOREIGN KEY([Status_Id])
REFERENCES [dbo].[TBLM_Active_Document_Status_File] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Active_Document_Header_Sender] CHECK CONSTRAINT [FK_TBLT_Header_Sender_Active_Document_TBLM_Status_File_Active_Document]
GO
ALTER TABLE [dbo].[TBLT_Active_Document_History]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Active_Document_History_TBLM_Active_Document_Status_File] FOREIGN KEY([Active_Document_Status_File_Id])
REFERENCES [dbo].[TBLM_Active_Document_Status_File] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Active_Document_History] CHECK CONSTRAINT [FK_TBLT_Active_Document_History_TBLM_Active_Document_Status_File]
GO
ALTER TABLE [dbo].[TBLT_Active_Document_History]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Active_Document_History_TBLT_Active_Document_Header_Sender] FOREIGN KEY([Active_Document_Header_Sender_Id])
REFERENCES [dbo].[TBLT_Active_Document_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Active_Document_History] CHECK CONSTRAINT [FK_TBLT_Active_Document_History_TBLT_Active_Document_Header_Sender]
GO
ALTER TABLE [dbo].[TBLT_Active_Document_Item]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Active_Document_Item_TBLM_Bentuk_Item] FOREIGN KEY([Bentuk_Item_Id])
REFERENCES [dbo].[TBLM_Bentuk_Item] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Active_Document_Item] CHECK CONSTRAINT [FK_TBLT_Active_Document_Item_TBLM_Bentuk_Item]
GO
ALTER TABLE [dbo].[TBLT_Active_Document_Item]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Active_Document_Item_TBLM_Tingkat_Perkembangan_Dokumen] FOREIGN KEY([Tingkat_Perkembangan_Dokumen_Id])
REFERENCES [dbo].[TBLM_Tingkat_Perkembangan_Document] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Active_Document_Item] CHECK CONSTRAINT [FK_TBLT_Active_Document_Item_TBLM_Tingkat_Perkembangan_Dokumen]
GO
ALTER TABLE [dbo].[TBLT_Active_Document_Item]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Active_Document_Item_TBLT_Active_Document_File] FOREIGN KEY([Active_Document_File_Id])
REFERENCES [dbo].[TBLT_Active_Document_File] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Active_Document_Item] CHECK CONSTRAINT [FK_TBLT_Active_Document_Item_TBLT_Active_Document_File]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_File]  WITH CHECK ADD  CONSTRAINT [AlihMediaHeaderSender_AlihMediaFile] FOREIGN KEY([Alih_Media_Header_Sender_Id])
REFERENCES [dbo].[TBLT_Alih_Media_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_File] CHECK CONSTRAINT [AlihMediaHeaderSender_AlihMediaFile]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Alih_Media_File_TBLM_Kategori_Arsip] FOREIGN KEY([Kategori_Arsip_Id])
REFERENCES [dbo].[TBLM_Kategori_Arsip] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_File] CHECK CONSTRAINT [FK_TBLT_Alih_Media_File_TBLM_Kategori_Arsip]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Alih_Media_File_TBLM_Keterangan_Akses_Keamanan] FOREIGN KEY([Keterangan_Akses_Keamanan_Id])
REFERENCES [dbo].[TBLM_Keterangan_Akses_Keamanan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_File] CHECK CONSTRAINT [FK_TBLT_Alih_Media_File_TBLM_Keterangan_Akses_Keamanan]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Alih_Media_File_TBLM_Kode_Sub_Pemberkasan] FOREIGN KEY([Kode_Sub_Pemberkasan_Id])
REFERENCES [dbo].[TBLM_Kode_Sub_Pemberkasan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_File] CHECK CONSTRAINT [FK_TBLT_Alih_Media_File_TBLM_Kode_Sub_Pemberkasan]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Alih_Media_File_TBLM_Tingkat_Perkembangan_Document] FOREIGN KEY([Tingkat_Perkembangan_Berkas_Id])
REFERENCES [dbo].[TBLM_Tingkat_Perkembangan_Document] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_File] CHECK CONSTRAINT [FK_TBLT_Alih_Media_File_TBLM_Tingkat_Perkembangan_Document]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Header_Sender]  WITH CHECK ADD  CONSTRAINT [AlihMediaHeaderSender_Ke_AlihMediaStatusFile] FOREIGN KEY([Status_Id])
REFERENCES [dbo].[TBLM_Alih_Media_Status_File] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Header_Sender] CHECK CONSTRAINT [AlihMediaHeaderSender_Ke_AlihMediaStatusFile]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Alih_Media_Header_Sender_TBLM_Jenis_Media] FOREIGN KEY([Format_Digital_Id])
REFERENCES [dbo].[TBLM_Jenis_Media] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Header_Sender] CHECK CONSTRAINT [FK_TBLT_Alih_Media_Header_Sender_TBLM_Jenis_Media]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Alih_Media_Header_Sender_TBLM_Keterangan_Akses_Keamanan] FOREIGN KEY([Keterangan_Akses_Keamanan_Id])
REFERENCES [dbo].[TBLM_Keterangan_Akses_Keamanan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Header_Sender] CHECK CONSTRAINT [FK_TBLT_Alih_Media_Header_Sender_TBLM_Keterangan_Akses_Keamanan]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Alih_Media_Header_Sender_TBLM_Kode_Sub_Pemberkasan] FOREIGN KEY([Kode_Sub_Pemberkasan_Id])
REFERENCES [dbo].[TBLM_Kode_Sub_Pemberkasan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Header_Sender] CHECK CONSTRAINT [FK_TBLT_Alih_Media_Header_Sender_TBLM_Kode_Sub_Pemberkasan]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Alih_Media_Header_Sender_TBLT_File_Transfer_Header_Sender] FOREIGN KEY([File_Transfer_Header_Sender_Id])
REFERENCES [dbo].[TBLT_File_Transfer_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Header_Sender] CHECK CONSTRAINT [FK_TBLT_Alih_Media_Header_Sender_TBLT_File_Transfer_Header_Sender]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_History]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Alih_Media_History_TBLM_Alih_Media_Status_File] FOREIGN KEY([Alih_Media_Status_File_Id])
REFERENCES [dbo].[TBLM_Alih_Media_Status_File] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_History] CHECK CONSTRAINT [FK_TBLT_Alih_Media_History_TBLM_Alih_Media_Status_File]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_History]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Alih_Media_History_TBLT_Alih_Media_Header_Sender] FOREIGN KEY([Alih_Media_Header_Sender_Id])
REFERENCES [dbo].[TBLT_Alih_Media_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_History] CHECK CONSTRAINT [FK_TBLT_Alih_Media_History_TBLT_Alih_Media_Header_Sender]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Item]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Alih_Media_Item_TBLM_Bentuk_Item] FOREIGN KEY([Bentuk_Item_Id])
REFERENCES [dbo].[TBLM_Bentuk_Item] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Item] CHECK CONSTRAINT [FK_TBLT_Alih_Media_Item_TBLM_Bentuk_Item]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Item]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Alih_Media_Item_TBLM_Tingkat_Perkembangan_Document] FOREIGN KEY([Tingkat_Perkembangan_Dokumen_Id])
REFERENCES [dbo].[TBLM_Tingkat_Perkembangan_Document] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Item] CHECK CONSTRAINT [FK_TBLT_Alih_Media_Item_TBLM_Tingkat_Perkembangan_Document]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Item]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Alih_Media_Item_TBLT_Alih_Media_File] FOREIGN KEY([Alih_Media_File_Id])
REFERENCES [dbo].[TBLT_Alih_Media_File] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Item] CHECK CONSTRAINT [FK_TBLT_Alih_Media_Item_TBLT_Alih_Media_File]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Proposal]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Alih_Media_Proposal_TBLM_Jenis_Media] FOREIGN KEY([Jenis_Media_Id])
REFERENCES [dbo].[TBLM_Jenis_Media] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Proposal] CHECK CONSTRAINT [FK_TBLT_Alih_Media_Proposal_TBLM_Jenis_Media]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Proposal]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Alih_Media_Proposal_TBLM_Perangkat] FOREIGN KEY([Perangkat_Id])
REFERENCES [dbo].[TBLM_Perangkat] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Proposal] CHECK CONSTRAINT [FK_TBLT_Alih_Media_Proposal_TBLM_Perangkat]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Proposal]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Alih_Media_Proposal_TBLT_Alih_Media_Header_Sender] FOREIGN KEY([Alih_Media_Header_Sender_Id])
REFERENCES [dbo].[TBLT_Alih_Media_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Proposal] CHECK CONSTRAINT [FK_TBLT_Alih_Media_Proposal_TBLT_Alih_Media_Header_Sender]
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Proposal]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Alih_Media_Proposal_TBLT_File_Transfer_File] FOREIGN KEY([Alih_Media_File_Id])
REFERENCES [dbo].[TBLT_File_Transfer_File] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Alih_Media_Proposal] CHECK CONSTRAINT [FK_TBLT_Alih_Media_Proposal_TBLT_File_Transfer_File]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_TBLM_Kategori_Arsip] FOREIGN KEY([Kategori_Arsip_Id])
REFERENCES [dbo].[TBLM_Kategori_Arsip] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_File] CHECK CONSTRAINT [FK_TBLT_File_TBLM_Kategori_Arsip]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_TBLM_Keterangan_Akses_Keamanan] FOREIGN KEY([Keterangan_Akses_Keamanan_Id])
REFERENCES [dbo].[TBLM_Keterangan_Akses_Keamanan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_File] CHECK CONSTRAINT [FK_TBLT_File_TBLM_Keterangan_Akses_Keamanan]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_TBLM_Tingkat_Perkembangan_Dokumen] FOREIGN KEY([Tingkat_Perkembangan_Berkas_Id])
REFERENCES [dbo].[TBLM_Tingkat_Perkembangan_Document] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_File] CHECK CONSTRAINT [FK_TBLT_File_TBLM_Tingkat_Perkembangan_Dokumen]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_Transfer_File_TBLM_Kode_Sub_Pemberkasan] FOREIGN KEY([Kode_Sub_Pemberkasan_Id])
REFERENCES [dbo].[TBLM_Kode_Sub_Pemberkasan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_File] CHECK CONSTRAINT [FK_TBLT_File_Transfer_File_TBLM_Kode_Sub_Pemberkasan]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_Transfer_File_TBLT_File_Transfer_Header_Sender] FOREIGN KEY([File_Transfer_Header_Sender_Id])
REFERENCES [dbo].[TBLT_File_Transfer_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_File] CHECK CONSTRAINT [FK_TBLT_File_Transfer_File_TBLT_File_Transfer_Header_Sender]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_Transfer_Header_Sender_TBLM_File_Transfer_Status_File] FOREIGN KEY([Status_Id])
REFERENCES [dbo].[TBLM_File_Transfer_Status_File] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Header_Sender] CHECK CONSTRAINT [FK_TBLT_File_Transfer_Header_Sender_TBLM_File_Transfer_Status_File]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_Transfer_Header_Sender_TBLM_Keterangan_Akses_Keamanan] FOREIGN KEY([Keterangan_Akses_Keamanan_Id])
REFERENCES [dbo].[TBLM_Keterangan_Akses_Keamanan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Header_Sender] CHECK CONSTRAINT [FK_TBLT_File_Transfer_Header_Sender_TBLM_Keterangan_Akses_Keamanan]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_Transfer_Header_Sender_TBLM_Kode_Sub_Pemberkasan] FOREIGN KEY([Kode_Sub_Pemberkasan_Id])
REFERENCES [dbo].[TBLM_Kode_Sub_Pemberkasan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Header_Sender] CHECK CONSTRAINT [FK_TBLT_File_Transfer_Header_Sender_TBLM_Kode_Sub_Pemberkasan]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_History]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_Transfer_History_TBLM_File_Transfer_Status_File] FOREIGN KEY([File_Transfer_Status_File_Id])
REFERENCES [dbo].[TBLM_File_Transfer_Status_File] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_History] CHECK CONSTRAINT [FK_TBLT_File_Transfer_History_TBLM_File_Transfer_Status_File]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_History]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_Transfer_History_TBLT_File_Transfer_Header_Sender] FOREIGN KEY([File_Transfer_Header_Sender_Id])
REFERENCES [dbo].[TBLT_File_Transfer_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_History] CHECK CONSTRAINT [FK_TBLT_File_Transfer_History_TBLT_File_Transfer_Header_Sender]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Item]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_Transfer_Item_TBLM_Bentuk_Item] FOREIGN KEY([Bentuk_Item_Id])
REFERENCES [dbo].[TBLM_Bentuk_Item] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Item] CHECK CONSTRAINT [FK_TBLT_File_Transfer_Item_TBLM_Bentuk_Item]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Item]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_Transfer_Item_TBLT_File_Transfer_File] FOREIGN KEY([File_Transfer_File_Id])
REFERENCES [dbo].[TBLT_File_Transfer_File] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Item] CHECK CONSTRAINT [FK_TBLT_File_Transfer_Item_TBLT_File_Transfer_File]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Item]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Item_TBLM_Tingkat_Perkembangan_Dokumen] FOREIGN KEY([Tingkat_Perkembangan_Dokumen_Id])
REFERENCES [dbo].[TBLM_Tingkat_Perkembangan_Document] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Item] CHECK CONSTRAINT [FK_TBLT_Item_TBLM_Tingkat_Perkembangan_Dokumen]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Survey]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_Transfer_Survey_Berkas_Arsip_TBLM_Kesesuaian_Daftar_Fisik_Arsip] FOREIGN KEY([Berkas_Arsip_Id])
REFERENCES [dbo].[TBLM_Kesesuaian_Daftar_Fisik_Arsip] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Survey] CHECK CONSTRAINT [FK_TBLT_File_Transfer_Survey_Berkas_Arsip_TBLM_Kesesuaian_Daftar_Fisik_Arsip]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Survey]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_Transfer_Survey_Retensi_Arsip_TBLM_Kesesuaian_Daftar_Fisik_Arsip] FOREIGN KEY([Retensi_Arsip_Id])
REFERENCES [dbo].[TBLM_Kesesuaian_Daftar_Fisik_Arsip] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Survey] CHECK CONSTRAINT [FK_TBLT_File_Transfer_Survey_Retensi_Arsip_TBLM_Kesesuaian_Daftar_Fisik_Arsip]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Survey]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_Transfer_Survey_Sarana_Simpan_TBLM_Kesesuaian_Daftar_Fisik_Arsip] FOREIGN KEY([Sarana_Simpan_Id])
REFERENCES [dbo].[TBLM_Kesesuaian_Daftar_Fisik_Arsip] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Survey] CHECK CONSTRAINT [FK_TBLT_File_Transfer_Survey_Sarana_Simpan_TBLM_Kesesuaian_Daftar_Fisik_Arsip]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Survey]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_Transfer_Survey_TBLM_File_Transfer_Status_File] FOREIGN KEY([File_Transfer_Status_File_Id])
REFERENCES [dbo].[TBLM_File_Transfer_Status_File] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Survey] CHECK CONSTRAINT [FK_TBLT_File_Transfer_Survey_TBLM_File_Transfer_Status_File]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Survey]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_Transfer_Survey_TBLM_RC_Penyimpanan] FOREIGN KEY([RC_Penyimpanan_Id])
REFERENCES [dbo].[TBLM_RC_Penyimpanan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Survey] CHECK CONSTRAINT [FK_TBLT_File_Transfer_Survey_TBLM_RC_Penyimpanan]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Survey]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_Transfer_Survey_TBLM_Rekomendasi_Arsip] FOREIGN KEY([Rekomendasi_Arsip_Id])
REFERENCES [dbo].[TBLM_Rekomendasi_Arsip] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Survey] CHECK CONSTRAINT [FK_TBLT_File_Transfer_Survey_TBLM_Rekomendasi_Arsip]
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Survey]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_File_Transfer_Survey_TBLT_File_Transfer_Header_Sender] FOREIGN KEY([File_Transfer_Header_Sender_Id])
REFERENCES [dbo].[TBLT_File_Transfer_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_File_Transfer_Survey] CHECK CONSTRAINT [FK_TBLT_File_Transfer_Survey_TBLT_File_Transfer_Header_Sender]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inactive_Archive_Management_File_TBLM_Kategori_Arsip] FOREIGN KEY([Kategori_Arsip_Id])
REFERENCES [dbo].[TBLM_Kategori_Arsip] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_File] CHECK CONSTRAINT [FK_TBLT_Inactive_Archive_Management_File_TBLM_Kategori_Arsip]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inactive_Archive_Management_File_TBLM_Keterangan_Akses_Keamanan] FOREIGN KEY([Keterangan_Akses_Keamanan_Id])
REFERENCES [dbo].[TBLM_Keterangan_Akses_Keamanan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_File] CHECK CONSTRAINT [FK_TBLT_Inactive_Archive_Management_File_TBLM_Keterangan_Akses_Keamanan]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inactive_Archive_Management_File_TBLM_Kode_Sub_Pemberkasan] FOREIGN KEY([Kode_Sub_Pemberkasan_Id])
REFERENCES [dbo].[TBLM_Kode_Sub_Pemberkasan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_File] CHECK CONSTRAINT [FK_TBLT_Inactive_Archive_Management_File_TBLM_Kode_Sub_Pemberkasan]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inactive_Archive_Management_File_TBLM_Tingkat_Perkembangan_Document] FOREIGN KEY([Tingkat_Perkembangan_Berkas_Id])
REFERENCES [dbo].[TBLM_Tingkat_Perkembangan_Document] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_File] CHECK CONSTRAINT [FK_TBLT_Inactive_Archive_Management_File_TBLM_Tingkat_Perkembangan_Document]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inactive_Archive_Management_File_TBLT_Inactive_Archive_Management_Header_Sender] FOREIGN KEY([Inactive_Archive_Management_Header_Sender_Id])
REFERENCES [dbo].[TBLT_Inactive_Archive_Management_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_File] CHECK CONSTRAINT [FK_TBLT_Inactive_Archive_Management_File_TBLT_Inactive_Archive_Management_Header_Sender]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Header_Sender_TBLM_Inactive_Archive_Management_Status_File] FOREIGN KEY([Status_Id])
REFERENCES [dbo].[TBLM_Inactive_Archive_Management_Status_File] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Header_Sender] CHECK CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Header_Sender_TBLM_Inactive_Archive_Management_Status_File]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Header_Sender_TBLM_Keterangan_Akses_Keamanan] FOREIGN KEY([Keterangan_Akses_Keamanan_Id])
REFERENCES [dbo].[TBLM_Keterangan_Akses_Keamanan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Header_Sender] CHECK CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Header_Sender_TBLM_Keterangan_Akses_Keamanan]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Header_Sender_TBLM_Kode_Sub_Pemberkasan] FOREIGN KEY([Kode_Sub_Pemberkasan_Id])
REFERENCES [dbo].[TBLM_Kode_Sub_Pemberkasan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Header_Sender] CHECK CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Header_Sender_TBLM_Kode_Sub_Pemberkasan]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Header_Sender_TBLT_Alih_Media_Header_Sender] FOREIGN KEY([Alih_Media_Header_Sender_Id])
REFERENCES [dbo].[TBLT_Alih_Media_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Header_Sender] CHECK CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Header_Sender_TBLT_Alih_Media_Header_Sender]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Header_Sender_TBLT_File_Transfer_Header_Sender] FOREIGN KEY([File_Transfer_Header_Sender_Id])
REFERENCES [dbo].[TBLT_File_Transfer_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Header_Sender] CHECK CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Header_Sender_TBLT_File_Transfer_Header_Sender]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Header_Sender_TBLT_Inactive_Archive_Management_Header_Sender] FOREIGN KEY([Id])
REFERENCES [dbo].[TBLT_Inactive_Archive_Management_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Header_Sender] CHECK CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Header_Sender_TBLT_Inactive_Archive_Management_Header_Sender]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Header_Sender_TBLT_Record_Service_Header_Sender] FOREIGN KEY([Record_Service_Header_Sender_Id])
REFERENCES [dbo].[TBLT_Record_Service_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Header_Sender] CHECK CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Header_Sender_TBLT_Record_Service_Header_Sender]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_History]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inactive_Archive_Management_History_TBLT_Inactive_Archive_Management_File] FOREIGN KEY([Inactive_Archive_Management_Status_File_Id])
REFERENCES [dbo].[TBLM_Inactive_Archive_Management_Status_File] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_History] CHECK CONSTRAINT [FK_TBLT_Inactive_Archive_Management_History_TBLT_Inactive_Archive_Management_File]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_History]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inactive_Archive_Management_History_TBLT_Inactive_Archive_Management_Header_Sender] FOREIGN KEY([Inactive_Archive_Management_Header_Sender_Id])
REFERENCES [dbo].[TBLT_Inactive_Archive_Management_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_History] CHECK CONSTRAINT [FK_TBLT_Inactive_Archive_Management_History_TBLT_Inactive_Archive_Management_Header_Sender]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Inventory]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inventory_TBLM_Ambalan] FOREIGN KEY([Ambalan_Id])
REFERENCES [dbo].[TBLM_Ambalan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Inventory] CHECK CONSTRAINT [FK_TBLT_Inventory_TBLM_Ambalan]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Inventory]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inventory_TBLM_Gedung] FOREIGN KEY([Gedung_Id])
REFERENCES [dbo].[TBLM_Gedung] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Inventory] CHECK CONSTRAINT [FK_TBLT_Inventory_TBLM_Gedung]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Inventory]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inventory_TBLM_Rak] FOREIGN KEY([Rak_Id])
REFERENCES [dbo].[TBLM_Rak] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Inventory] CHECK CONSTRAINT [FK_TBLT_Inventory_TBLM_Rak]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Inventory]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inventory_TBLM_Ruangan] FOREIGN KEY([Ruangan_Id])
REFERENCES [dbo].[TBLM_Ruangan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Inventory] CHECK CONSTRAINT [FK_TBLT_Inventory_TBLM_Ruangan]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Inventory]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inventory_TBLT_Inactive_Archive_Management_File] FOREIGN KEY([Inactive_Archive_Management_File_Id])
REFERENCES [dbo].[TBLT_Inactive_Archive_Management_File] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Inventory] CHECK CONSTRAINT [FK_TBLT_Inventory_TBLT_Inactive_Archive_Management_File]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Item]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Item_TBLM_Bentuk_Item] FOREIGN KEY([Bentuk_Item_Id])
REFERENCES [dbo].[TBLM_Bentuk_Item] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Item] CHECK CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Item_TBLM_Bentuk_Item]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Item]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Item_TBLM_Kode_Sub_Pemberkasan] FOREIGN KEY([Kode_Sub_Pemberkasan_Id])
REFERENCES [dbo].[TBLM_Kode_Sub_Pemberkasan] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Item] CHECK CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Item_TBLM_Kode_Sub_Pemberkasan]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Item]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Item_TBLM_Tingkat_Perkembangan_Document] FOREIGN KEY([Tingkat_Perkembangan_Dokumen_Id])
REFERENCES [dbo].[TBLM_Tingkat_Perkembangan_Document] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Item] CHECK CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Item_TBLM_Tingkat_Perkembangan_Document]
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Item]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Item_TBLT_Inactive_Archive_Management_File] FOREIGN KEY([Inactive_Archive_Management_File_Id])
REFERENCES [dbo].[TBLT_Inactive_Archive_Management_File] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Inactive_Archive_Management_Item] CHECK CONSTRAINT [FK_TBLT_Inactive_Archive_Management_Item_TBLT_Inactive_Archive_Management_File]
GO
ALTER TABLE [dbo].[TBLT_Record_Service_Attachment]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Record_Service_Attachment_TBLT_Record_Service_Header_Sender] FOREIGN KEY([Record_Service_Header_Sender_Id])
REFERENCES [dbo].[TBLT_Record_Service_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Record_Service_Attachment] CHECK CONSTRAINT [FK_TBLT_Record_Service_Attachment_TBLT_Record_Service_Header_Sender]
GO
ALTER TABLE [dbo].[TBLT_Record_Service_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Record_Service_File_TBLT_Inactive_Archive_Management_Header_Sender] FOREIGN KEY([Inactive_Archive_Management_Header_Sender_Id])
REFERENCES [dbo].[TBLT_Inactive_Archive_Management_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Record_Service_File] CHECK CONSTRAINT [FK_TBLT_Record_Service_File_TBLT_Inactive_Archive_Management_Header_Sender]
GO
ALTER TABLE [dbo].[TBLT_Record_Service_File]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Record_Service_File_TBLT_Record_Service_Header_Sender] FOREIGN KEY([Record_Service_Header_Sender_Id])
REFERENCES [dbo].[TBLT_Record_Service_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Record_Service_File] CHECK CONSTRAINT [FK_TBLT_Record_Service_File_TBLT_Record_Service_Header_Sender]
GO
ALTER TABLE [dbo].[TBLT_Record_Service_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Record_Service_Header_Sender_TBLM_Record_Service_Request_Duplication_Type] FOREIGN KEY([Type_Of_Duplication_Id])
REFERENCES [dbo].[TBLM_Record_Service_Request_Duplication_Type] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Record_Service_Header_Sender] CHECK CONSTRAINT [FK_TBLT_Record_Service_Header_Sender_TBLM_Record_Service_Request_Duplication_Type]
GO
ALTER TABLE [dbo].[TBLT_Record_Service_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Record_Service_Header_Sender_TBLM_Record_Service_Transaction_Type] FOREIGN KEY([Transaction_Type_Id])
REFERENCES [dbo].[TBLM_Record_Service_Transaction_Type] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Record_Service_Header_Sender] CHECK CONSTRAINT [FK_TBLT_Record_Service_Header_Sender_TBLM_Record_Service_Transaction_Type]
GO
ALTER TABLE [dbo].[TBLT_Record_Service_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Record_Service_Header_Sender_TBLM_Record_Services_Status_File] FOREIGN KEY([Status_Id])
REFERENCES [dbo].[TBLM_Record_Services_Status_File] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Record_Service_Header_Sender] CHECK CONSTRAINT [FK_TBLT_Record_Service_Header_Sender_TBLM_Record_Services_Status_File]
GO
ALTER TABLE [dbo].[TBLT_Record_Service_Header_Sender]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Record_Service_Header_Sender_TBLT_Inactive_Archive_Management_Header_Sender] FOREIGN KEY([Inactive_Archive_Management_Header_Sender_Id])
REFERENCES [dbo].[TBLT_Inactive_Archive_Management_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Record_Service_Header_Sender] CHECK CONSTRAINT [FK_TBLT_Record_Service_Header_Sender_TBLT_Inactive_Archive_Management_Header_Sender]
GO
ALTER TABLE [dbo].[TBLT_Record_Service_History]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Record_Service_History_TBLM_Record_Services_Status_File] FOREIGN KEY([Record_Service_Status_File_Id])
REFERENCES [dbo].[TBLM_Record_Services_Status_File] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Record_Service_History] CHECK CONSTRAINT [FK_TBLT_Record_Service_History_TBLM_Record_Services_Status_File]
GO
ALTER TABLE [dbo].[TBLT_Record_Service_History]  WITH CHECK ADD  CONSTRAINT [FK_TBLT_Record_Service_History_TBLT_Record_Service_Header_Sender] FOREIGN KEY([Record_Service_Header_Sender_Id])
REFERENCES [dbo].[TBLT_Record_Service_Header_Sender] ([Id])
GO
ALTER TABLE [dbo].[TBLT_Record_Service_History] CHECK CONSTRAINT [FK_TBLT_Record_Service_History_TBLT_Record_Service_Header_Sender]
GO
USE [master]
GO
ALTER DATABASE [DB_PRIME] SET  READ_WRITE 
GO
