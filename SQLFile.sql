USE [master]
GO
/****** Object:  Database [EVMDB]    Script Date: 3/21/2019 5:24:42 PM ******/
CREATE DATABASE [EVMDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EVMDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\EVMDB.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EVMDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\EVMDB_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EVMDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EVMDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EVMDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EVMDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EVMDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EVMDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EVMDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EVMDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EVMDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [EVMDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EVMDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EVMDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EVMDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EVMDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EVMDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EVMDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EVMDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EVMDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EVMDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EVMDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EVMDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EVMDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EVMDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EVMDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EVMDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EVMDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EVMDB] SET  MULTI_USER 
GO
ALTER DATABASE [EVMDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EVMDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EVMDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EVMDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [EVMDB]
GO
/****** Object:  Table [dbo].[CandidateTable]    Script Date: 3/21/2019 5:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CandidateTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CName] [varchar](50) NULL,
	[AadharNo] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Education] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[profession] [varchar](50) NULL,
	[IsParticipate] [int] NULL,
	[PartyId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ElectDetails]    Script Date: 3/21/2019 5:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EId] [int] NULL,
	[PId] [int] NULL,
	[CId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElectionTable]    Script Date: 3/21/2019 5:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ElectionTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EName] [varchar](50) NULL,
	[EDetails] [varchar](max) NULL,
	[EDate] [varchar](50) NULL,
	[STime] [varchar](50) NULL,
	[ETime] [varchar](50) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartyTable]    Script Date: 3/21/2019 5:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PartyTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PartyName] [varchar](50) NULL,
	[Logo] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
	[RegDate] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ResultTable]    Script Date: 3/21/2019 5:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ResultTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EId] [int] NULL,
	[RDate] [varchar](50) NULL,
	[RDetails] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserTable]    Script Date: 3/21/2019 5:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[AdharNo] [varchar](50) NULL,
	[EmailId] [varchar](50) NULL,
	[MobileNo] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[UType] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VoteTable]    Script Date: 3/21/2019 5:24:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoteTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EId] [int] NULL,
	[PId] [int] NULL,
	[CId] [int] NULL,
	[UId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CandidateTable] ON 

INSERT [dbo].[CandidateTable] ([Id], [CName], [AadharNo], [Mobile], [Education], [DOB], [Category], [profession], [IsParticipate], [PartyId]) VALUES (1, N'Suresh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[CandidateTable] ([Id], [CName], [AadharNo], [Mobile], [Education], [DOB], [Category], [profession], [IsParticipate], [PartyId]) VALUES (2, N'Ramesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[CandidateTable] OFF
SET IDENTITY_INSERT [dbo].[ElectDetails] ON 

INSERT [dbo].[ElectDetails] ([Id], [EId], [PId], [CId]) VALUES (1, 1, 1, 2)
INSERT [dbo].[ElectDetails] ([Id], [EId], [PId], [CId]) VALUES (2, 1, 2, 1)
SET IDENTITY_INSERT [dbo].[ElectDetails] OFF
SET IDENTITY_INSERT [dbo].[ElectionTable] ON 

INSERT [dbo].[ElectionTable] ([Id], [EName], [EDetails], [EDate], [STime], [ETime], [Status]) VALUES (1, N'Election1', N'jashgfkjh
sdfhsdf
sdf', N'2019-03-21', N'12:00', N'18:01', 0)
SET IDENTITY_INSERT [dbo].[ElectionTable] OFF
SET IDENTITY_INSERT [dbo].[PartyTable] ON 

INSERT [dbo].[PartyTable] ([Id], [PartyName], [Logo], [Description], [RegDate]) VALUES (1, N'Abc', N'6Donation.jpg', N'asdsad', N'Tuesday, February 26, 2019')
INSERT [dbo].[PartyTable] ([Id], [PartyName], [Logo], [Description], [RegDate]) VALUES (2, N'xyx', N'7Fire-Logo.png', N'asdsad
dsgdfg', N'Tuesday, February 26, 2019')
SET IDENTITY_INSERT [dbo].[PartyTable] OFF
SET IDENTITY_INSERT [dbo].[ResultTable] ON 

INSERT [dbo].[ResultTable] ([Id], [EId], [RDate], [RDetails]) VALUES (1, 1, N'3/21/2019', N'Election Name :Election1<br>Election Date :2019-03-21<br>Winner Name: Suresh<br>Party Name: xyx<br>Total Vote: 1<br><hr>Election Result Details<hr><br>Candidate Name: Ramesh<br>Party Name: Abc<br>Total Vote: 0<hr><br>Candidate Name: Suresh<br>Party Name: xyx<br>Total Vote: 1<hr><br>')
SET IDENTITY_INSERT [dbo].[ResultTable] OFF
SET IDENTITY_INSERT [dbo].[UserTable] ON 

INSERT [dbo].[UserTable] ([Id], [FName], [LName], [AdharNo], [EmailId], [MobileNo], [Password], [UType]) VALUES (1, N'ramesh', N'kumar', N'1212121212', N'ramesh@gmail.com', N'9874563215', N'12345', 2)
SET IDENTITY_INSERT [dbo].[UserTable] OFF
SET IDENTITY_INSERT [dbo].[VoteTable] ON 

INSERT [dbo].[VoteTable] ([Id], [EId], [PId], [CId], [UId]) VALUES (1, 1, 2, 1, 1)
SET IDENTITY_INSERT [dbo].[VoteTable] OFF
USE [master]
GO
ALTER DATABASE [EVMDB] SET  READ_WRITE 
GO
