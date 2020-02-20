USE [CustomerInformation]
GO

INSERT INTO [dbo].[Customers] ([CustomerId],[ForeName] ,[Surname],[DateOfBirth])
     VALUES (1 ,'Joe','Bloggs','1983-04-08 00:00:00.000')

INSERT INTO [dbo].[Customers] ([CustomerId],[ForeName] ,[Surname],[DateOfBirth])
     VALUES (2 ,'Jane','Doe','1979-04-09 00:00:00.000')

INSERT INTO [dbo].[Customers] ([CustomerId],[ForeName] ,[Surname],[DateOfBirth])
     VALUES (3 ,'Bob','Smith','1992-10-27 00:00:00.000')

INSERT INTO [dbo].[Customers] ([CustomerId],[ForeName] ,[Surname],[DateOfBirth])
     VALUES (4 ,'Kate','Jones','1990-12-09 00:00:00.000')

INSERT INTO [dbo].[Customers] ([CustomerId],[ForeName] ,[Surname],[DateOfBirth])
     VALUES (5 ,'Ann','Banks','1990-03-10 00:00:00.000')

INSERT INTO [dbo].[Customers] ([CustomerId],[ForeName] ,[Surname],[DateOfBirth])
     VALUES (6 ,'Jeff','Hope','1963-01-19 00:00:00.000')

INSERT INTO [dbo].[Customers] ([CustomerId],[ForeName] ,[Surname],[DateOfBirth])
     VALUES (7 ,'Peter','SMith','1969-08-10 00:00:00.000')



INSERT INTO [dbo].[Vehicles] ([VehicleId],[RegistrationNumber],[Manufacturer],[Model],[EngineSize],[RegistationDate],[InteriorColour])
	VALUES (1,'BJ07 YUK','Renault','Clio',1290,'2007-02-28 00:00:00.000','Cream')

INSERT INTO [dbo].[Vehicles] ([VehicleId],[RegistrationNumber],[Manufacturer],[Model],[EngineSize],[RegistationDate],[InteriorColour])
	VALUES (7,'BJ12 UUY','Renault','Twingo',1190,'2007-03-12 00:00:00.000','Grey')

INSERT INTO [dbo].[Vehicles] ([VehicleId],[RegistrationNumber],[Manufacturer],[Model],[EngineSize],[RegistationDate],[InteriorColour])
	VALUES (2,'BT58 OKJ','Ford','',1187,'2008-10-03 00:00:00.000','Black')

INSERT INTO [dbo].[Vehicles] ([VehicleId],[RegistrationNumber],[Manufacturer],[Model],[EngineSize],[RegistationDate],[InteriorColour])
	VALUES (3,'BJ53 WYR','Peugeot','108', 987,'2003-07-03 00:00:00.000','Grey')

INSERT INTO [dbo].[Vehicles] ([VehicleId],[RegistrationNumber],[Manufacturer],[Model],[EngineSize],[RegistationDate],[InteriorColour])
	VALUES (4,'BT12 UJJ','Renault','Clio', 1190,'2012-05-03 00:00:00.000','Grey')

INSERT INTO [dbo].[Vehicles] ([VehicleId],[RegistrationNumber],[Manufacturer],[Model],[EngineSize],[RegistationDate],[InteriorColour])
	VALUES (5,'BJ16 OIU','Citroen','C3',1298,'2012-12-20 00:00:00.000','Black')

INSERT INTO [dbo].[Vehicles] ([VehicleId],[RegistrationNumber],[Manufacturer],[Model],[EngineSize],[RegistationDate],[InteriorColour])
	VALUES (6,'BT15 PLM','Renault','Megane',1380,'2015-04-04 00:00:00.000','Cream')

INSERT INTO [dbo].[Vehicles] ([VehicleId],[RegistrationNumber],[Manufacturer],[Model],[EngineSize],[RegistationDate],[InteriorColour])
	VALUES (7,'OW06 TTR','Ford','Focus',1200,'2006-03-02 00:00:00.000','Red')

INSERT INTO [dbo].[Vehicles] ([VehicleId],[RegistrationNumber],[Manufacturer],[Model],[EngineSize],[RegistationDate],[InteriorColour])
	VALUES (8,'PS12 PLK','Audi','A6',2000,'2006-09-17 00:00:00.000','Black')

INSERT INTO [dbo].[Vehicles] ([VehicleId],[RegistrationNumber],[Manufacturer],[Model],[EngineSize],[RegistationDate],[InteriorColour])
	VALUES (9,'SE13 CFG','Audi','A1',1610,'2006-03-09 00:00:00.000','Silver')

INSERT INTO [dbo].[Vehicles] ([VehicleId],[RegistrationNumber],[Manufacturer],[Model],[EngineSize],[RegistationDate],[InteriorColour])
	VALUES (10,'KL16 KMN','Renault','Megane',1380,'2006-07-03 00:00:00.000','White')

INSERT INTO [dbo].[Vehicles] ([VehicleId],[RegistrationNumber],[Manufacturer],[Model],[EngineSize],[RegistationDate],[InteriorColour])
	VALUES (11,'FD10 MMW','Renault','Megane',1380,'2006-10-28 00:00:00.000','Grey')


GO




USE [CustomerInformation]
GO

/****** Object:  Table [dbo].[Customers]    Script Date: 20/02/2020 17:35:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] NOT NULL,
	[ForeName] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[DateOfBirth] [datetime] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


USE [CustomerInformation]
GO

/****** Object:  Table [dbo].[Vehicles]    Script Date: 20/02/2020 17:35:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Vehicles](
	[VehicleId] [int] NOT NULL,
	[RegistrationNumber] [nvarchar](50) NOT NULL,
	[Manufacturer] [nvarchar](50) NULL,
	[Model] [nvarchar](max) NULL,
	[EngineSize] [int] NULL,
	[RegistationDate] [datetime] NULL,
	[InteriorColour] [nvarchar](50) NULL,
 CONSTRAINT [PK_Vehicles] PRIMARY KEY CLUSTERED 
(
	[RegistrationNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



_____________________________________________________

USE [master]
GO

/****** Object:  Database [CustomerInformation]    Script Date: 20/02/2020 17:35:48 ******/
CREATE DATABASE [CustomerInformation]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CustomerInformation', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\CustomerInformation.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CustomerInformation_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\CustomerInformation_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [CustomerInformation] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CustomerInformation].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [CustomerInformation] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [CustomerInformation] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [CustomerInformation] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [CustomerInformation] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [CustomerInformation] SET ARITHABORT OFF 
GO

ALTER DATABASE [CustomerInformation] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [CustomerInformation] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [CustomerInformation] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [CustomerInformation] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [CustomerInformation] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [CustomerInformation] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [CustomerInformation] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [CustomerInformation] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [CustomerInformation] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [CustomerInformation] SET  DISABLE_BROKER 
GO

ALTER DATABASE [CustomerInformation] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [CustomerInformation] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [CustomerInformation] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [CustomerInformation] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [CustomerInformation] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [CustomerInformation] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [CustomerInformation] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [CustomerInformation] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [CustomerInformation] SET  MULTI_USER 
GO

ALTER DATABASE [CustomerInformation] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [CustomerInformation] SET DB_CHAINING OFF 
GO

ALTER DATABASE [CustomerInformation] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [CustomerInformation] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [CustomerInformation] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [CustomerInformation] SET QUERY_STORE = OFF
GO

ALTER DATABASE [CustomerInformation] SET  READ_WRITE 
GO







