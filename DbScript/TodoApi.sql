USE [master]
GO
/****** Object:  Database [TodoApi]    Script Date: 3/26/2023 10:04:09 AM ******/
CREATE DATABASE [TodoApi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TodoApi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TodoApi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TodoApi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TodoApi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TodoApi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TodoApi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TodoApi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TodoApi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TodoApi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TodoApi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TodoApi] SET ARITHABORT OFF 
GO
ALTER DATABASE [TodoApi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TodoApi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TodoApi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TodoApi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TodoApi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TodoApi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TodoApi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TodoApi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TodoApi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TodoApi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TodoApi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TodoApi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TodoApi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TodoApi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TodoApi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TodoApi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TodoApi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TodoApi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TodoApi] SET  MULTI_USER 
GO
ALTER DATABASE [TodoApi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TodoApi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TodoApi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TodoApi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TodoApi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TodoApi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TodoApi] SET QUERY_STORE = OFF
GO
USE [TodoApi]
GO
/****** Object:  Table [dbo].[TodoItems]    Script Date: 3/26/2023 10:04:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TodoItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DueDate] [date] NOT NULL,
	[DaysToExpired] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [TodoApi] SET  READ_WRITE 
GO
