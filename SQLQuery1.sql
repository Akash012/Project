USE [master]
GO
/****** Object:  Database [UserDB]    Script Date: 01/17/2018 22:15:36 ******/
CREATE DATABASE [UserDB] ON  PRIMARY 
( NAME = N'UserDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\UserDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'UserDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\UserDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [UserDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UserDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UserDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [UserDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [UserDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [UserDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [UserDB] SET ARITHABORT OFF
GO
ALTER DATABASE [UserDB] SET AUTO_CLOSE ON
GO
ALTER DATABASE [UserDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [UserDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [UserDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [UserDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [UserDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [UserDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [UserDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [UserDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [UserDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [UserDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [UserDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [UserDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [UserDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [UserDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [UserDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [UserDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [UserDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [UserDB] SET  READ_WRITE
GO
ALTER DATABASE [UserDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [UserDB] SET  MULTI_USER
GO
ALTER DATABASE [UserDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [UserDB] SET DB_CHAINING OFF
GO
USE [UserDB]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 01/17/2018 22:15:36 ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 01/17/2018 22:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 01/17/2018 22:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 01/17/2018 22:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 01/17/2018 22:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 01/17/2018 22:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
/****** Object:  Table [dbo].[OrderTable]    Script Date: 01/17/2018 22:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderTable](
	[OrderId] [int] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[ID] [int] NOT NULL,
	[NoOfQuantity] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 01/17/2018 22:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1, N'Action&Adventure')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (2, N'Romance')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (3, N'Sci-Fi')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (4, N'Biographies')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (5, N'Historical Fiction')
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[CartTable]    Script Date: 01/17/2018 22:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CartTable](
	[RefNoId] [int] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[ID] [int] NOT NULL,
	[NoOfQuantity] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookTable]    Script Date: 01/17/2018 22:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ImageUrl] [varchar](150) NOT NULL,
	[CategoryId] [int] NULL,
	[BookStatus] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[AvailableQuantity] [int] NOT NULL,
	[IssueQuantity] [int] NOT NULL,
	[BookCost] [int] NOT NULL,
	[StatusId] [int] NULL,
	[AuthorName] [varchar](50) NULL,
	[BookDescription] [varchar](max) NULL,
 CONSTRAINT [PK_BookTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BookTable] ON
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (1, N'Sita - Warrior of Mithila ', N'/Img/IMG-1.jpg', 1, N'Available', 20, 20, 0, 200, 3, N'Amish Tripathi', N'Immerse yourself in book 2 of the Ram Chandra series, based on the Ramayana, the story of Lady Sita, written by the multi-million bestselling Indian Author Amish; the author who has transformed Indian Fiction with his unique combination of mystery, mythology, religious symbolism and philosophy. In this book, you will follow Lady Sita''s journey from an Adopted Child to the Prime Minister to finding her true calling.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (2, N'Harry Potter and the Chamber of Secrets', N'/Img/IMG-2.jpg', 1, N'Available', 20, 20, 0, 200, 1, N'J.K.Rowling', N'"There is a plot, Harry Potter. A plot to make most terrible things happen at Hogwarts School of Witchcraft and Wizardry this year." 
Harry Potter''s summer has included the worst birthday ever, doomy warnings from a house-elf called Dobby, and rescue from the Dursleys by his friend Ron Weasley in a magical flying car! Back at Hogwarts School of Witchcraft and Wizardry for his second year, Harry hears strange whispers echo through empty corridors - and then the attacks start. ')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (3, N'Secret of the Himalayan Treasure', N'/Img/IMG-3.jpg', 1, N'Available', 20, 20, 0, 200, 1, N'Divyansh Mundra', N'THE OLDEST SECRET SOCIETY OF INDIA. THE GREATEST TREASURE IN THE HISTORY OF MANKIND. THE MOST EPIC MYSTERY OF THE ANCIENT WORLD.
When the richest man of India confesses to being part of a secret society in a live press conference; chaos ensues. His daughter Aanya Vashishtha takes the help of Aarav Kohrrathi, a brilliant but egoistic treasure hunter and his friend Rehann to solve the mystery of The Ring of the Seven')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (4, N'Artemis', N'/Img/IMG-4.jpg', 1, N'Available', 20, 20, 0, 200, 1, N'Andy Weir', N'Well, sort of. Life on Artemis, the first and only city on the moon, is tough if you''re not a rich tourist or an eccentric billionaire. So smuggling in the occasional harmless bit of contraband barely counts, right? Not when you''ve got debts to pay and your job as a porter barely covers the rent.
Everything changes when Jazz sees the chance to commit the perfect crime, with a reward too lucrative to turn down.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (5, N'The 100: Book One', N'/Img/IMG-5.jpg', 1, N'Available', 20, 20, 0, 200, 1, N'Kass Morgan', N'Ever since a devastating nuclear war, humanity has lived on spaceships far above Earth''s radioactive surface. Now, one hundred juvenile delinquents - considered expendable by society - are being sent on a dangerous mission: to re-colonize the planet. It could be their second chance at life...or it could be a suicide mission.
CLARKE was arrested for treason, though she''s haunted by the memory of what she really did. ')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (6, N'ARKTIKA.1 (Short Story)', N'/Img/IMG-6.jpg', 1, N'Available', 20, 20, 0, 200, 1, N'Christie Golden', N'Viktoria can barely remember life before 2081. It’s painful to think of the time before the Great Freeze, when humanity finally paid its due for plundering the earth, plunging the world into frigid cold, scarcity, and decay.
Yet humanity has found a way to carry on. The remnants of civilization persist in settlements like ARKTIKA.1, where Vika tends to survivors with her Mamochka and Papochka, protecting their fledgling colony from the threat that lurks in the snows. ')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (7, N'The Time Machine (Enriched Classics)', N'/Img/IMG-7.jpg', 1, N'Available', 20, 20, 0, 200, 1, N'H.G.Wells', N'The Time Traveller, a dreamer obsessed with traveling through time, builds himself a time machine and, much to his surprise, travels over 800,000 years into the future. He lands in the year 802701: the world has been transformed by a society living in apparent harmony and bliss, but as the Traveler stays in the future he discovers a hidden barbaric and depraved subterranean class. ')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (8, N'Killer Thrillers: 3 Action-Adventure Thrillers', N'/Img/IMG-8.jpg', 1, N'Available', 20, 20, 0, 200, 1, N'Nick Thacker', N'Amish Tripathi, an IIM Calcutta graduate, gave up a successful banker career of fourteen years to pursue his passion for writing. Born and brought up under Hindu traditions, the writer draws inspiration from the legend of Lord Shiva, something that he has famously woven into a best selling fantasy fiction trilogy. As an author of best sellers, Forbes India has even included him among the top hundred celebrities of India.
')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (9, N'8 Hours (Numbers)', N'/Img/IMG-9.jpg', 1, N'Available', 20, 20, 0, 200, 1, N'Upendra Namburi', N'Aratrika Reddy, the charismatic CEO of ARYA Holdings Ltd., has just 8 Hours to save her company from certain bankruptcy.
The multi-billion dollar hotels to steel conglomerate, founded by her mercurial father, liquor baron Madhusudhan Reddy, has many suitors, all of them plotting a hostile takeover. Aratrika’s estranged husband, Siddhartha is one of them. His inside knowledge is the real ace up his sleeve.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (10, N'The Adventures of Huckleberry Finn ', N'/Img/IMG-10.jpg', 1, N'Available', 20, 20, 0, 200, 1, N'Mark Twain', N'THE ADVENTURES OF HUCKLEBERRY FINN is a novel by Mark Twain, first published in the United Kingdom in December 1884 and in the United States in February 1885. Commonly named among the Great American Novels, the work is among the first in major American literature to be written throughout in vernacular English, characterized by local color regionalism.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (11, N'Empire of the Moghul: Ruler of the World', N'/Img/IMG-11.jpeg', 1, N'Available', 20, 20, 0, 200, 1, N'Alex Rutherford', N'Keep your enemies close, and your sons closer...
The story of the third great Moghul Emperor, Akbar, leader of a triumphant dynasty which contained the seeds of its own destruction.
Akbar, ruler of a sixth of the world''s people, colossally rich and utterly ruthless, was a contemporary of Elizabeth I, but infinitely more powerful. His reign began in bloodshed when he strangled his treacherous ''milk-brother'', but it ended in glory. 
')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (12, N'Wings of Fire: An Autobiography of Abdul Kalam', N'/Img/IMG-12.jpg', 4, N'Available', 20, 20, 0, 200, 1, N'Tiwari', N'Every common man who by his sheer grit and hard work achieves success should share his story with the rest for they may find inspiration and strength to go on, in his story. The ''Wings of Fire'' is one such autobiography by visionary scientist Dr. APJ Abdul Kalam, who from very humble beginnings rose to be the President of India. The book is full of insights, personal moments and life experiences of Dr. Kalam.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (13, N'I, Steve - Steve Jobs In His Own Words', N'/Img/IMG-13.jpg', 4, N'Available', 20, 20, 0, 200, 1, N'George Beahm', N'Fortune magazine proclaimed Jobs ''the CEO of the decade''. Harvard Business Review called him ''the world''s best-performing CEO''. And the Wall Street Journal praised him as a ''Person of the Decade''. Steve Jobs, the co-founder and longtime CEO of Apple, Inc., died on 5 October 2011, bringing to an end one of the greatest, most transformative business careers in history. ')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (14, N'Rocket Man: Elon Musk in His Own Words', N'/Img/IMG-14.jpg', 4, N'Available', 20, 20, 0, 200, 1, N'Jessica Easto', N'Elon Musk, the South African--born entrepreneur who made his first fortune with Internet companies such as PayPal, has risen to global prominence as the visionary CEO of both Tesla Motors and SpaceX, two companies with self-proclaimed missions to improve life as we know it and better secure the future of humanity. For the first time, the most insightful, thought-provoking and revealing quotes from this entrepreneurial engineer have been compiled into a single book.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (15, N'Unstoppable', N'/Img/IMG-15.jpg', 4, N'Available', 20, 20, 0, 200, 1, N'Nick Vujicic', N'Being unstoppable is about believing and achieving. It’s about having faith in yourself, your talents, your purpose, and most of all, in God’s great love and His divine plan for your life.
Millions around the world recognize the smiling face and inspirational messages of Nick Vujicic.  Born without arms or legs, Nick has not allowed his physical challenges to keep him from enjoying great adventures, a fulfilling and meaningful career, and loving relationships.  ')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (16, N'Alibaba: The House that Jack Ma Built', N'/Img/IMG-16.jpg', 4, N'Available', 20, 20, 0, 200, 1, N'Duncan Clark', N'In just a decade and half Jack Ma, a man who rose from humble beginnings and started his career as an English teacher, founded and built Alibaba into the second largest Internet company in the world. The company’s $25 billion IPO in 2014 was the world’s largest, valuing the company more than Facebook or Coca Cola.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (17, N'Aurangzeb: The Man and the Myth', N'/Img/IMG-17.jpg', 4, N'Available', 20, 20, 0, 200, 1, N'Audrey Truschke', N'Aurangzeb Alamgir (r. 1658–1707), the sixth Mughal emperor, is widely reviled in India today. Hindu hater, murderer and religious zealot are just a handful of the modern caricatures of this maligned ruler. While many continue to accept the storyline peddled by colonial-era thinkers—that Aurangzeb, a Muslim, was a Hindu-loathing bigot—there is an untold side to him as a man who strove to be a just, worthy Indian king.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (18, N'Do No Harm', N'/Img/IMG-18.jpg', 4, N'Available', 20, 20, 0, 200, 1, N'Henry Marsh', N'What is it like to be a brain surgeon? How does it feel to hold someone''s life in your hands, to cut into the stuff that creates thought, feeling and reason? How do you live with the consequences of performing a potentially lifesaving operation when it all goes wrong? 
In neurosurgery, more than in any other branch of medicine, the doctor''s oath to "do no harm" holds a bitter irony.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (19, N'Victoria & Abdul (Movie Tie-in)', N'/Img/IMG-19.jpg', 4, N'Available', 20, 20, 0, 200, 1, N'Shrabani Basu', N'History’s most unlikely friendship—this is the astonishing story of Queen Victoria and her dearest companion, the young Indian Munshi Abdul Karim.
In the twilight years of her reign, after the devastating deaths of hertwo great loves—Prince Albert and John Brown—Queen Victoria meets tall and handsome Abdul Karim, a humble servant from Agra waiting tables at her Golden Jubilee.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (20, N'Becoming a Mountain', N'/Img/IMG-20.jpg', 4, N'Available', 20, 20, 0, 200, 1, N'Aleph Book Company', N'Stephen Alter was born and raised in the hill station of Mussoorie, in the foothills of the Himalayas, where he and his wife, Ameeta, now live. Their idyllic existence was shattered when four armed intruders invaded their home and viciously attacked them, leaving them for dead. The violent assault and the trauma of almost dying left the author questioning assumptions he had lived by since childhood.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (21, N'The Lonely Tiger', N'/Img/IMG-21.jpg', 4, N'Available', 20, 20, 0, 200, 1, N'David Davidar', N'‘The Lonely Tigeris essential reading for those who love the wilderness.’ -Valmik Thapar ‘[…] I saw that he was staring intently at a leaf blowing over the surface and drifting towards him. When it came within reach he started to dab at it with his right front paw,but with a touch so gentle that his pad was the merest caress on the tiny tip of its curled-up sail. From that moment,I always called him the Lonely Tiger.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (22, N'Lata Mangeshkar in Her Own Voice', N'/Img/IMG-22.jpg', 4, N'Available', 20, 20, 0, 200, 1, N'Nasreen Munni Kabir', N'Lata Mangeshkar has recorded more songs than anyone else in the world. Her voice has had a profound impact on the Indian imagination and she has reigned supreme in Indian film music for over six decades. The book is a tribute to the musical legend.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (23, N'Lean In - For Graduate', N'/Img/IMG-23.jpg', 4, N'Available', 20, 20, 0, 200, 1, N'Sheryl Sandberg', N'"Because the world needs you to change it"
Expanded and updated exclusively for graduates just entering the workforce, this extraordinary new edition of Lean In includes a letter to graduates from Sheryl Sandberg and six additional chapters from experts offering advice on finding and getting the most out of a first job; CV writing; best interviewing practices; negotiating your salary; listening to your inner voice; owning who you are; and leaning in for millennial men. 
')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (24, N'Harappa - Curse of the Blood River', N'/Img/IMG-24.jpg', 5, N'Available', 20, 20, 0, 200, 1, N'Vineet Bajpai', N'2017, Delhi – Vidyut’s dying ancestor summons him to Banaras. The old Brahmin chieftain of the Dev-Raakshasa Matth, or the God-Demon Clan, bears a chilling secret. Their bloodline carries an ancient curse that will plague mankind - towards its own violent extinction. 
1700 BCE, Harappa – Harappa is a magnificent city on the banks of the mighty Saraswati river.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (25, N'Last Train to Istanbul: A Novel', N'/Img/IMG-25.jpg', 5, N'Available', 20, 20, 0, 200, 1, N'Ayse Kulin', N'As the daughter of one of Turkey’s last Ottoman pashas, Selva could win the heart of any man in Ankara. Yet the spirited young beauty only has eyes for Rafael Alfandari, the handsome Jewish son of an esteemed court physician. In defiance of their families, they marry, fleeing to Paris to build a new life.
But when the Nazis invade France, the exiled lovers will learn that nothing—not war, not politics, not even religion')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (26, N'17 Sheikh Hamza Street, Cairo', N'/Img/IMG-26.jpg', 5, N'Available', 20, 20, 0, 200, 1, N'Avraham Bar-Av(Bentata)', N'A fascinating drama based on the biographic memoirs of the author, offering invaluable insight into Jewish history, North African Jewry and the history of the Middle East.
The Jewish Bentata family settles in Cairo, Egypt, at the beginning of the 20th century. After a few decades of leading a respectful bourgeois lifestyle suited for middle-class westerners in the Orient, the illusion of belonging begins to crack.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (27, N'Padmavati: The Queen Tells Her Own Story', N'/Img/IMG-27.jpg', 5, N'Available', 20, 20, 0, 200, 1, N'Sutapa Basu', N'Journalist Mrinalini Rao is on an investigative trail to discover whether Padmavati, the Queen of Chittor, actually existed or was she only a legend created by poets. 
Who was Padmavati, the Queen of Chittor? What does history tell of her? Where did she come from? What kind of life did she lead? 
How did she have the courage to jump willingly into fire? 
Mrinalini goes to Chittorgarh to discover the truth. 
')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (28, N'Tell Tale', N'/Img/IMG-28.jpg', 5, N'Available', 20, 20, 0, 200, 1, N'Jeffrey Archer', N'Author of the bestselling Clifton Chronicles, Jeffrey Archer, gives us fourteen gripping and rewarding short stories for readers to return to time and again.
Find out what happens to the hapless young detective from Naples who travels to an Italian hillside town to solve a murder and the pretentious schoolboy whose discovery of the origins of his father’s wealth changes his life forever.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (29, N'The Peshwa: The Lion and The Stallion', N'/Img/IMG-29.jpg', 5, N'Available', 20, 20, 0, 200, 1, N'Ram Sivasankaran', N'It is the 18th century and despite the dominant Mughal rule, the Maratha Confederacy has established itself as a force to be reckoned with in the Indian Subcontinent. The fragile peace between the two powers is threatened when Balaji Vishvanath Bhat, Peshwa of the Confederacy, foils the plans of Nizam Ul Mulk of the Mughal Empire, and asserts the power of the Marathas.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (30, N'The King Within', N'/Img/IMG-30.jpg', 5, N'Available', 20, 20, 0, 200, 1, N'Nandini Sengupta', N'373 AD. In the thick forests of Malwa, an enigmatic stranger gallops into an ambush attack by bandits to rescue a young courtesan, Darshini. His name is Deva and he is the younger son of Emperor Samudragupta. That chance encounter, first with Deva and later with his two friends, the loyal general Saba Virasena and the great poet Kalidas, forges a bond that lasts a lifetime.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (31, N'Two Princes and a Queen', N'/Img/IMG-31.jpg', 5, N'Available', 20, 20, 0, 200, 1, N'Shmuel David', N'Imagine having to flee for your life from the Nazis on a rundown river-boat!
Hanne is the teenaged son of a well-off Jewish family living a comfortable, sheltered life in Yugoslavia. In the face of persecution against Jews, Hanne and his parents joins a harrowing voyage down the Danube River, eventually meant to reach pre-State Israel. The passengers aboard the three creaking river-boats are constantly torn between hope and despair in their attempt to reach safety.
')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (32, N'Emperor Chandragupta', N'/Img/IMG-32.jpg', 5, N'Available', 20, 20, 0, 200, 1, N'Adity Kay', N'Building an empire is not easy, especially when there are enemies everywhere and no one you can trust. India, 326 BCE. The world''s greatest conqueror, Alexander, the Greek emperor, is at its doorstep, having arrived at the Indus seeking to establish his dominion over the entire known world. In the east lies Magadha, ruled by the Nandas, a dynasty driven by greed, lust and hunger for power.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (33, N'Clouds above the Hill', N'/Img/IMG-33.jpg', 5, N'Available', 20, 20, 0, 200, 1, N'Shiba Ryotaro', N'Clouds above the Hill, a long-time best-selling novel in Japan, is now translated into English for the first time. An epic portrait of Japan in crisis, it combines graphic military history and highly readable fiction to depict an aspiring nation modernizing at breakneck speed. Acclaimed author Shiba Ryotaro devoted an entire decade of his life to this extraordinary blockbuster, which features Japan''s emergence onto the world stage by the early years of the 20th century.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (34, N'The Seal of Surya: The Legend of Ikshvaku', N'/Img/IMG-34.jpg', 5, N'Available', 20, 20, 0, 200, 1, N'Amritanshu pandey', N'The Seal of Surya: The Legend of Ikshvaku is the story of our first king and the founder of Suryavansha. A perfect amalgamation of betrayal, dynasties, destruction and loyalty, this is the first book from “The Scrolls of Aryavarta” series. This fiction book tells about the author’s view on Vedic and pre-Vedic period. The story is about the starting of Suryavansha and the first king of Aryavarta, Ikshvaku Manav.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (35, N'Shadow Princess', N'/Img/IMG-35.jpg', 5, N'Available', 20, 20, 0, 200, 1, N': Indu Sundaresan', N'The Mughal Empire is crumbling. With the death of his beloved queen Mumtaz, Emperor Shah Jahan slowly loses interest in everything, while his sons conspire and scheme to gain control of the empire. Princess Jahanara is only seventeen when the weight of the imperial zenana is thrust upon her.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (36, N'City of Skies (THE VIKING ASSASSIN SERIES Book 1)', N'/Img/IMG-36.jpg', 2, N'Available', 20, 20, 0, 200, 1, N'Farah Cook', N'ONE GIRL. A DEADLY QUEST. AN EPIC JOURNEY.
Nora Hunt has just joined the deadly quest to discover the ancient legend of the nine worlds of the Vikings. Her post-apocalyptic dystopian world, Triangle of Peace, is the only home she’s ever known. But at sixteen years old, the skilled young warrior joins an elite band of raiders called Jarls.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (37, N'The Women of Eden: An Epic Historical Romance ', N'/Img/IMG-37.jpg', 2, N'Available', 20, 20, 0, 200, 1, N'Marilyn Harris', N' John Murrey Eden is the dominating force in the lives of the five Eden women. Lady Mary Eden, John''s cousin, is the recipient of his greatest beneficence and the object of his deepest rage. Young and headstrong, Mary is stifled and eventually almost killed by John''s zealous protection. ')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (38, N'Rocky Mountain Romance ', N'/Img/IMG-38.jpg', 2, N'Available', 20, 20, 0, 200, 1, N'Vivian Arend', N'~~**A STAND ALONE novel in the Six Pack Ranch world. You can read ROMANCE without having read the previous books, although you''ll probably fall in love with everyone you meet, and you''ll want to know their stories too...sorry about that. (Not really :D)**~~
Grab the audio version for a low-low price after getting the ebook!
-----
Second chances are the sweetest—and the hottest.
It took a spectacularly embarrassing break-up to knock Steve Moonshine Coleman off his lazy butt.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (39, N'You are the Best Wife: A True Love Story', N'/Img/IMG-39.jpg', 2, N'Available', 20, 20, 0, 200, 1, N'Ajay K Pandey', N'''You Are The Best Wife: A True Love Story’ is a story about how people find true love and comfort in dissimilarities; about how two people with absolutely different ideologies meet and fall in love.
The story revolves around Bhavna and Ajay. Bhavna loves living life for others while Ajay loves living for himself; Bhavna is more spontaneous, never planning the next move and living life with the flow.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (40, N'More Than Once: A Holiday Romance ', N'/Img/IMG-40.jpg', 2, N'Available', 20, 20, 0, 200, 1, N'Elizabeth Briggs', N'Andrew West is done being the nice guy. After a marriage proposal gone wrong, he''s started over in a new city and he''s never risking his heart again. 
Becca Collins is done being the bad girl. After quitting the band she played bass for, she''s going to prove to her family that she''s really changed.
When Becca''s dumped by her boyfriend and fired from her job on Christmas Eve, all seems lost, until she runs into a former one night stand--Andrew.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (41, N'Falling for Alaska ', N'/Img/IMG-41.jpg', 2, N'Available', 20, 20, 0, 200, 1, N'Shannon L. Brown', N'Jemma inherits a house and moves to small-town Palmer, Alaska. As she begins her business of flipping furniture, her gorgeous but unpleasant neighbor gets in her way. Sure, she’s making some noise. A little sawing. A bit of drilling. Her dream’s at stake. And she’s not sure about living in Alaska.
Nathaniel loves Alaska and moved here for peace and quiet.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (42, N'Her Last Wish', N'/Img/IMG-42.jpg', 2, N'Available', 20, 20, 0, 200, 1, N'Ajay K. Pandey', N'His father''s over expectations only ruined his self-confidence further with each failure. A ray of hope walked into his life as his wife, a charismatic personality spreading joy wherever she went. Everything is going per plan, but darkness comes knocking soon. He finds out that she does not have much time to live and takes it upon himself to fight all odds – even his family, if need be – to help her fight her medical condition.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (43, N'Let''s Be Just Friends: A New Adult College Romance', N'/Img/IMG-43.jpg', 2, N'Available', 20, 20, 0, 200, 1, N'Camilla Isley', N'Rose Atwood has been in love with her best friend for years, and she''s tired of keeping her feelings under wraps for fear of getting hurt. Being Tyler''s best friend is becoming more difficult with every passing year and every new woman in his life--especially Georgiana Smithson, a snotty, beautiful girl who''s in Law School with them.
When Rose, dumped by her long-term boyfriend, moves temporarily into Tyler''s apartment, tension spikes. Georgiana wants Rose out of the house.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (44, N'Could Be Forever: (Finn and Juliet) ', N'/Img/IMG-44.jpg', 2, N'Available', 20, 20, 0, 200, 1, N'Claire Kingsley', N'Surprises aren’t usually my thing, but a spontaneous girls’ weekend at the beach to celebrate my birthday isn’t so bad. Until my girlfriends both get food poisoning.
But Finn, the hot bartender with dreamy blue eyes, a rough stubbly jaw, and the sexiest hands I’ve ever seen (I have a thing for hands) wants to help me salvage my unfortunate weekend.
')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (45, N'Love''s Return: A Christian Romance ', N'/Img/IMG-45.jpg', 2, N'Available', 20, 20, 0, 200, 1, N'T.K. Chapin', N'She''s a reporter, he''s a bodyguard. When these two run into each other for the first time in five years, sparks fly. A lot can happen in five years. Can love overcome past hurts?
LOVE''S RETURN is book one of the Christian romance series, PROTECTED BY LOVE by T.K. Chapin. Follow the lives of the men and women working for WIN bodyguard agency as they face the challenges of faith, love and life. ')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (46, N'Winter''s Secret', N'/Img/IMG-46.jpg', 2, N'Available', 20, 20, 0, 200, 1, N'Lyn Cote', N'Some secrets chill to the bone....
Smashed heirlooms, ripped upholstery and rifled drawers-who is breaking into homes during a record-breaking snowy winter, vandalizing and stealing. 
Whoever it is--is targeting the most vulnerable--the seniors of a small northwoods town. As the new sheriff, Rodd Durand, home again to small town Steadfast, Wisconsin, takes on the Snowmobile Burglar. ')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (47, N'Slumbering: An Epic Fantasy Adventure Series', N'/Img/IMG-47.jpg', 3, N'Available', 20, 20, 0, 200, 1, N'C.S. Johnson', N'At the time, I didn''t really believe that anything outside my control would change my life. Or at least, not in a significant, substantial way. My life was all about myself, and I figured I had complete control over that. Anything that happened outside of my control was more or less because I let it happen, and didn''t feel like stopping it.
It''s funny how one disaster of epic proportion can really make you change your mind.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (48, N'Magic Unbound ', N'/Img/IMG-48.jpg', 3, N'Available', 20, 20, 0, 200, 1, N'Jill Nojack', N'Not-quite-sixteen year old Lizbet Moore expects a boring last month of summer vacation -- and she gets what she’s expecting until a fifteen hundred year old Fae named Eamon shows up in her backyard disguised as a down-on-his-luck garden gnome. When Eamon slips an ancient amulet around her neck, the memories of Lizbet’s many past lives, including her first life as Morgan Le Fae, come slamming back to her to change her summer plans in a way she could never have expected.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (49, N'Darlings of Urban Fantasy', N'/Img/IMG-49.jpg', 3, N'Available', 20, 20, 0, 200, 1, N'Chrissy Peebles', N'A star-studded anthology of thrilling, action-packed and totally swoon-worthy first books by your favorite women authors.
8 thrilling stories in one volume. 
8 sexy heroes. 
8 strong heroines. 
')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (50, N'The Stolen Kingdom: A Fantasy Book for Kids', N'/Img/IMG-50.jpg', 3, N'Available', 20, 20, 0, 200, 1, N' Ross Rosenfeld', N'A fantastic fantasy book for kids and adults who simply love a great adventure! Free with Kindle Unlimited!
You''ll ride with Taylor James and Robert of Roth as they attempt to defeat the evil Dark Duke. Along the way, you''ll have to survive the dangers of Cheshire Woods, battle brutes and monsters, and overcome incredible odds.
')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (51, N'Rae of Hope: Clean Paranormal Fantasy New Adult ', N'/Img/IMG-51.jpg', 3, N'Available', 20, 20, 0, 200, 1, N'WJ May', N'How hard do you have to shake the family tree to find the truth about the past?
Fifteen year-old Rae Kerrigan never really knew her family''s history. Her mother and father died when she was young and it is only when she accepts a scholarship to the prestigious Guilder Boarding School in England that a mysterious family secret is revealed.
')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (52, N'The Martian', N'/Img/IMG-52.jpg', 3, N'Available', 20, 20, 0, 200, 1, N'Andy Weir', N'I’m stranded on Mars. I have no way to communicate with Earth. I’m in a Habitat designed to last 31 days.
If the Oxygenator breaks down, I’ll suffocate. If the Water Reclaimer breaks down, I’ll die of thirst. If the Hab breaches, I’ll just kind of explode. If none of those things happen, I’ll eventually run out of food and starve to death.
So yeah. I’m screwed.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (53, N'Cosmos', N'/Img/IMG-53.jpg', 3, N'Available', 20, 20, 0, 200, 1, N'Carl Sagan', N'The book, ‘Cosmos’ is regarded as one of the best science-themed books ever written and is often credited as the catalyst for popularizing the science-themed literature. It is authored by Carl Sagan who wanted to unravel the complex world of cosmos in a simple and lucid language, so that any layman can understand it. The book came along the Cosmos TV series and both were planned to complement each other.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (54, N'Transgression: A Time-Travel Suspense Novel ', N'/Img/IMG-54.jpg', 3, N'Available', 20, 20, 0, 200, 1, N'R.S. Ingermanson', N'What If …?
What if you were studying for your Ph.D. in archaeology and decided to take a break from your crummy life by working on an archaeological dig in Israel?
What if you met a great guy in Jerusalem who happened to be a world-famous theoretical physicist working on a crazy idea to build a wormhole that might make time-travel possible … someday?')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (55, N'1984 (Modern Classics Series)', N'/Img/IMG-55.jpg', 3, N'Available', 20, 20, 0, 200, 1, N'George Orwell', N'This carefully crafted ebook: "1984 (Modern Classics Series)” is formatted for your eReader with a functional and detailed table of contents.
1984 is a political and dystopian science-fiction novel set in Airstrip One, a province of the superstate Oceania. It is a mind-numbing world which in a state of perpetual war, omnipresent government surveillance and public manipulation.')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (56, N'Chariots of the Gods', N'/Img/IMG-56.jpg', 3, N'Available', 20, 20, 0, 200, 1, N'Erich Von Daniken', N'The groundbreaking classic that introduced the theory that ancient Earth established contact with aliens. 
Immediately recognized as a work of monumental importance, Chariots of the Gods endures as proof that Earth has been visited repeatedly by advanced aliens from other worlds. Here, Erich von Däniken examines ancient ruins, lost cities, spaceports, and a myriad of hard scientific facts that point to extraterrestrial intervention in human history. ')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (57, N'The Phantom of the Earth', N'/Img/IMG-57.jpg', 3, N'Available', 20, 20, 0, 200, 1, N'Raeden Zen', N'Herbert''s Dune meets Banks'' The Player of Games in The Phantom of the Earth, a spellbinding science fiction epic set deep underground after the fall of civilization on Earth''s surface. Here are the five thought-provoking post-apocalyptic stories that lovers of science fiction can''t stop talking about, gathered together in one volume for the first time. ')
INSERT [dbo].[BookTable] ([ID], [Name], [ImageUrl], [CategoryId], [BookStatus], [Quantity], [AvailableQuantity], [IssueQuantity], [BookCost], [StatusId], [AuthorName], [BookDescription]) VALUES (58, N'Crossing In Time: An Edgy Sci-Fi Love ', N'/Img/IMG-58.jpg', 3, N'Available', 20, 20, 0, 200, 1, N'D. L. Orton', N'If someone took everything you live for, how far would you go to get it back?
When offered a one-way trip to the past, Iz sacrifices everything for a chance to change her dystopian future—and see her murdered lover one last time. 
After a perilous journey through a black hole, she wakes up on a tropical beach, buck naked and mortally wounded—but twenty years younger!')
SET IDENTITY_INSERT [dbo].[BookTable] OFF
/****** Object:  Table [dbo].[BookStatus]    Script Date: 01/17/2018 22:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookStatus](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BookStatus] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BookStatus] ON
INSERT [dbo].[BookStatus] ([StatusId], [StatusName]) VALUES (1, N'Added')
INSERT [dbo].[BookStatus] ([StatusId], [StatusName]) VALUES (2, N'Deleted')
INSERT [dbo].[BookStatus] ([StatusId], [StatusName]) VALUES (3, N'Edited')
SET IDENTITY_INSERT [dbo].[BookStatus] OFF
/****** Object:  Table [dbo].[BooksLog]    Script Date: 01/17/2018 22:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BooksLog](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NOT NULL,
	[ActionType] [varchar](50) NOT NULL,
	[ActionDate] [date] NOT NULL,
	[OldName] [varchar](50) NULL,
	[NewName] [varchar](50) NULL,
	[OldCategoryId] [int] NULL,
	[NewCategoryId] [int] NULL,
	[OldQuantity] [int] NULL,
	[NewQuantity] [int] NULL,
	[OldAvailableQuantity] [int] NULL,
	[NewAvailableQuantity] [int] NULL,
	[OldIssueQuantity] [int] NULL,
	[NewIssueQuantity] [int] NULL,
	[OldBookCost] [int] NULL,
	[NewBookCost] [int] NULL,
	[OldAuthorName] [varchar](50) NULL,
	[NewAuthorName] [varchar](50) NULL,
	[OldBookDescription] [varchar](max) NULL,
	[NewBookDescription] [varchar](max) NULL,
 CONSTRAINT [PK_BooksLog] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BooksLog] ON
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (1, 1, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Sita - Warrior of Mithila ', NULL, 1, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Amish Tripathi', NULL, N'Immerse yourself in book 2 of the Ram Chandra series, based on the Ramayana, the story of Lady Sita, written by the multi-million bestselling Indian Author Amish; the author who has transformed Indian Fiction with his unique combination of mystery, mythology, religious symbolism and philosophy. In this book, you will follow Lady Sita''s journey from an Adopted Child to the Prime Minister to finding her true calling.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (2, 2, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Harry Potter and the Chamber of Secrets', NULL, 1, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N': J.K.Rowling', NULL, N'"There is a plot, Harry Potter. A plot to make most terrible things happen at Hogwarts School of Witchcraft and Wizardry this year." 
Harry Potter''s summer has included the worst birthday ever, doomy warnings from a house-elf called Dobby, and rescue from the Dursleys by his friend Ron Weasley in a magical flying car! Back at Hogwarts School of Witchcraft and Wizardry for his second year, Harry hears strange whispers echo through empty corridors - and then the attacks start. ')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (3, 3, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Secret of the Himalayan Treasure', NULL, 1, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Divyansh Mundra', NULL, N'THE OLDEST SECRET SOCIETY OF INDIA. THE GREATEST TREASURE IN THE HISTORY OF MANKIND. THE MOST EPIC MYSTERY OF THE ANCIENT WORLD.
When the richest man of India confesses to being part of a secret society in a live press conference; chaos ensues. His daughter Aanya Vashishtha takes the help of Aarav Kohrrathi, a brilliant but egoistic treasure hunter and his friend Rehann to solve the mystery of The Ring of the Seven')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (4, 4, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Artemis', NULL, 1, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Andy Weir', NULL, N'Well, sort of. Life on Artemis, the first and only city on the moon, is tough if you''re not a rich tourist or an eccentric billionaire. So smuggling in the occasional harmless bit of contraband barely counts, right? Not when you''ve got debts to pay and your job as a porter barely covers the rent.
Everything changes when Jazz sees the chance to commit the perfect crime, with a reward too lucrative to turn down.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (5, 5, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'The 100: Book One', NULL, 1, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Kass Morgan', NULL, N'Ever since a devastating nuclear war, humanity has lived on spaceships far above Earth''s radioactive surface. Now, one hundred juvenile delinquents - considered expendable by society - are being sent on a dangerous mission: to re-colonize the planet. It could be their second chance at life...or it could be a suicide mission.
CLARKE was arrested for treason, though she''s haunted by the memory of what she really did. ')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (6, 6, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'ARKTIKA.1 (Short Story)', NULL, 1, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Christie Golden', NULL, N'Viktoria can barely remember life before 2081. It’s painful to think of the time before the Great Freeze, when humanity finally paid its due for plundering the earth, plunging the world into frigid cold, scarcity, and decay.
Yet humanity has found a way to carry on. The remnants of civilization persist in settlements like ARKTIKA.1, where Vika tends to survivors with her Mamochka and Papochka, protecting their fledgling colony from the threat that lurks in the snows. ')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (7, 7, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'The Time Machine (Enriched Classics)', NULL, 1, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'H.G.Wells', NULL, N'The Time Traveller, a dreamer obsessed with traveling through time, builds himself a time machine and, much to his surprise, travels over 800,000 years into the future. He lands in the year 802701: the world has been transformed by a society living in apparent harmony and bliss, but as the Traveler stays in the future he discovers a hidden barbaric and depraved subterranean class. ')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (8, 8, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Killer Thrillers: 3 Action-Adventure Thrillers', NULL, 1, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Nick Thacker', NULL, N'Amish Tripathi, an IIM Calcutta graduate, gave up a successful banker career of fourteen years to pursue his passion for writing. Born and brought up under Hindu traditions, the writer draws inspiration from the legend of Lord Shiva, something that he has famously woven into a best selling fantasy fiction trilogy. As an author of best sellers, Forbes India has even included him among the top hundred celebrities of India.
')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (9, 9, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'8 Hours (Numbers)', NULL, 1, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Upendra Namburi', NULL, N'Aratrika Reddy, the charismatic CEO of ARYA Holdings Ltd., has just 8 Hours to save her company from certain bankruptcy.
The multi-billion dollar hotels to steel conglomerate, founded by her mercurial father, liquor baron Madhusudhan Reddy, has many suitors, all of them plotting a hostile takeover. Aratrika’s estranged husband, Siddhartha is one of them. His inside knowledge is the real ace up his sleeve.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (10, 10, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'The Adventures of Huckleberry Finn ', NULL, 1, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Mark Twain', NULL, N'THE ADVENTURES OF HUCKLEBERRY FINN is a novel by Mark Twain, first published in the United Kingdom in December 1884 and in the United States in February 1885. Commonly named among the Great American Novels, the work is among the first in major American literature to be written throughout in vernacular English, characterized by local color regionalism.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (11, 11, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Empire of the Moghul: Ruler of the World', NULL, 1, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Alex Rutherford', NULL, N'Keep your enemies close, and your sons closer...
The story of the third great Moghul Emperor, Akbar, leader of a triumphant dynasty which contained the seeds of its own destruction.
Akbar, ruler of a sixth of the world''s people, colossally rich and utterly ruthless, was a contemporary of Elizabeth I, but infinitely more powerful. His reign began in bloodshed when he strangled his treacherous ''milk-brother'', but it ended in glory. 
')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (12, 12, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Wings of Fire: An Autobiography of Abdul Kalam', NULL, 4, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Tiwari', NULL, N'Every common man who by his sheer grit and hard work achieves success should share his story with the rest for they may find inspiration and strength to go on, in his story. The ''Wings of Fire'' is one such autobiography by visionary scientist Dr. APJ Abdul Kalam, who from very humble beginnings rose to be the President of India. The book is full of insights, personal moments and life experiences of Dr. Kalam.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (13, 13, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'I, Steve - Steve Jobs In His Own Words', NULL, 4, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'George Beahm', NULL, N'Fortune magazine proclaimed Jobs ''the CEO of the decade''. Harvard Business Review called him ''the world''s best-performing CEO''. And the Wall Street Journal praised him as a ''Person of the Decade''. Steve Jobs, the co-founder and longtime CEO of Apple, Inc., died on 5 October 2011, bringing to an end one of the greatest, most transformative business careers in history. ')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (14, 14, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Rocket Man: Elon Musk in His Own Words', NULL, 4, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Jessica Easto', NULL, N'Elon Musk, the South African--born entrepreneur who made his first fortune with Internet companies such as PayPal, has risen to global prominence as the visionary CEO of both Tesla Motors and SpaceX, two companies with self-proclaimed missions to improve life as we know it and better secure the future of humanity. For the first time, the most insightful, thought-provoking and revealing quotes from this entrepreneurial engineer have been compiled into a single book.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (15, 15, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Unstoppable', NULL, 4, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Nick Vujicic', NULL, N'Being unstoppable is about believing and achieving. It’s about having faith in yourself, your talents, your purpose, and most of all, in God’s great love and His divine plan for your life.
Millions around the world recognize the smiling face and inspirational messages of Nick Vujicic.  Born without arms or legs, Nick has not allowed his physical challenges to keep him from enjoying great adventures, a fulfilling and meaningful career, and loving relationships.  ')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (16, 16, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Alibaba: The House that Jack Ma Built', NULL, 4, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Duncan Clark', NULL, N'In just a decade and half Jack Ma, a man who rose from humble beginnings and started his career as an English teacher, founded and built Alibaba into the second largest Internet company in the world. The company’s $25 billion IPO in 2014 was the world’s largest, valuing the company more than Facebook or Coca Cola.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (17, 17, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Aurangzeb: The Man and the Myth', NULL, 4, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Audrey Truschke', NULL, N'Aurangzeb Alamgir (r. 1658–1707), the sixth Mughal emperor, is widely reviled in India today. Hindu hater, murderer and religious zealot are just a handful of the modern caricatures of this maligned ruler. While many continue to accept the storyline peddled by colonial-era thinkers—that Aurangzeb, a Muslim, was a Hindu-loathing bigot—there is an untold side to him as a man who strove to be a just, worthy Indian king.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (18, 18, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Do No Harm', NULL, 4, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Henry Marsh', NULL, N'What is it like to be a brain surgeon? How does it feel to hold someone''s life in your hands, to cut into the stuff that creates thought, feeling and reason? How do you live with the consequences of performing a potentially lifesaving operation when it all goes wrong? 
In neurosurgery, more than in any other branch of medicine, the doctor''s oath to "do no harm" holds a bitter irony.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (19, 19, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Victoria & Abdul (Movie Tie-in)', NULL, 4, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Shrabani Basu', NULL, N'History’s most unlikely friendship—this is the astonishing story of Queen Victoria and her dearest companion, the young Indian Munshi Abdul Karim.
In the twilight years of her reign, after the devastating deaths of hertwo great loves—Prince Albert and John Brown—Queen Victoria meets tall and handsome Abdul Karim, a humble servant from Agra waiting tables at her Golden Jubilee.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (20, 20, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Becoming a Mountain', NULL, 4, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Aleph Book Company', NULL, N'Stephen Alter was born and raised in the hill station of Mussoorie, in the foothills of the Himalayas, where he and his wife, Ameeta, now live. Their idyllic existence was shattered when four armed intruders invaded their home and viciously attacked them, leaving them for dead. The violent assault and the trauma of almost dying left the author questioning assumptions he had lived by since childhood.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (21, 21, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'The Lonely Tiger', NULL, 4, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'David Davidar', NULL, N'‘The Lonely Tigeris essential reading for those who love the wilderness.’ -Valmik Thapar ‘[…] I saw that he was staring intently at a leaf blowing over the surface and drifting towards him. When it came within reach he started to dab at it with his right front paw,but with a touch so gentle that his pad was the merest caress on the tiny tip of its curled-up sail. From that moment,I always called him the Lonely Tiger.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (22, 22, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Lata Mangeshkar in Her Own Voice', NULL, 4, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Nasreen Munni Kabir', NULL, N'Lata Mangeshkar has recorded more songs than anyone else in the world. Her voice has had a profound impact on the Indian imagination and she has reigned supreme in Indian film music for over six decades. The book is a tribute to the musical legend.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (23, 23, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Lean In - For Graduate', NULL, 4, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Sheryl Sandberg', NULL, N'"Because the world needs you to change it"
Expanded and updated exclusively for graduates just entering the workforce, this extraordinary new edition of Lean In includes a letter to graduates from Sheryl Sandberg and six additional chapters from experts offering advice on finding and getting the most out of a first job; CV writing; best interviewing practices; negotiating your salary; listening to your inner voice; owning who you are; and leaning in for millennial men. 
')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (24, 24, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Harappa - Curse of the Blood River', NULL, 5, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Vineet Bajpai', NULL, N'2017, Delhi – Vidyut’s dying ancestor summons him to Banaras. The old Brahmin chieftain of the Dev-Raakshasa Matth, or the God-Demon Clan, bears a chilling secret. Their bloodline carries an ancient curse that will plague mankind - towards its own violent extinction. 
1700 BCE, Harappa – Harappa is a magnificent city on the banks of the mighty Saraswati river.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (25, 25, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Last Train to Istanbul: A Novel', NULL, 5, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Ayse Kulin', NULL, N'As the daughter of one of Turkey’s last Ottoman pashas, Selva could win the heart of any man in Ankara. Yet the spirited young beauty only has eyes for Rafael Alfandari, the handsome Jewish son of an esteemed court physician. In defiance of their families, they marry, fleeing to Paris to build a new life.
But when the Nazis invade France, the exiled lovers will learn that nothing—not war, not politics, not even religion')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (26, 26, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'17 Sheikh Hamza Street, Cairo', NULL, 5, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Avraham Bar-Av(Bentata)', NULL, N'A fascinating drama based on the biographic memoirs of the author, offering invaluable insight into Jewish history, North African Jewry and the history of the Middle East.
The Jewish Bentata family settles in Cairo, Egypt, at the beginning of the 20th century. After a few decades of leading a respectful bourgeois lifestyle suited for middle-class westerners in the Orient, the illusion of belonging begins to crack.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (27, 27, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Padmavati: The Queen Tells Her Own Story', NULL, 5, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Sutapa Basu', NULL, N'Journalist Mrinalini Rao is on an investigative trail to discover whether Padmavati, the Queen of Chittor, actually existed or was she only a legend created by poets. 
Who was Padmavati, the Queen of Chittor? What does history tell of her? Where did she come from? What kind of life did she lead? 
How did she have the courage to jump willingly into fire? 
Mrinalini goes to Chittorgarh to discover the truth. 
')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (28, 28, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Tell Tale', NULL, 5, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Jeffrey Archer', NULL, N'Author of the bestselling Clifton Chronicles, Jeffrey Archer, gives us fourteen gripping and rewarding short stories for readers to return to time and again.
Find out what happens to the hapless young detective from Naples who travels to an Italian hillside town to solve a murder and the pretentious schoolboy whose discovery of the origins of his father’s wealth changes his life forever.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (29, 29, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'The Peshwa: The Lion and The Stallion', NULL, 5, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Ram Sivasankaran', NULL, N'It is the 18th century and despite the dominant Mughal rule, the Maratha Confederacy has established itself as a force to be reckoned with in the Indian Subcontinent. The fragile peace between the two powers is threatened when Balaji Vishvanath Bhat, Peshwa of the Confederacy, foils the plans of Nizam Ul Mulk of the Mughal Empire, and asserts the power of the Marathas.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (30, 30, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'The King Within', NULL, 5, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Nandini Sengupta', NULL, N'373 AD. In the thick forests of Malwa, an enigmatic stranger gallops into an ambush attack by bandits to rescue a young courtesan, Darshini. His name is Deva and he is the younger son of Emperor Samudragupta. That chance encounter, first with Deva and later with his two friends, the loyal general Saba Virasena and the great poet Kalidas, forges a bond that lasts a lifetime.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (31, 31, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Two Princes and a Queen', NULL, 5, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Shmuel David', NULL, N'Imagine having to flee for your life from the Nazis on a rundown river-boat!
Hanne is the teenaged son of a well-off Jewish family living a comfortable, sheltered life in Yugoslavia. In the face of persecution against Jews, Hanne and his parents joins a harrowing voyage down the Danube River, eventually meant to reach pre-State Israel. The passengers aboard the three creaking river-boats are constantly torn between hope and despair in their attempt to reach safety.
')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (32, 32, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Emperor Chandragupta', NULL, 5, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Adity Kay', NULL, N'Building an empire is not easy, especially when there are enemies everywhere and no one you can trust. India, 326 BCE. The world''s greatest conqueror, Alexander, the Greek emperor, is at its doorstep, having arrived at the Indus seeking to establish his dominion over the entire known world. In the east lies Magadha, ruled by the Nandas, a dynasty driven by greed, lust and hunger for power.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (33, 33, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Clouds above the Hill', NULL, 5, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Shiba Ryotaro', NULL, N'Clouds above the Hill, a long-time best-selling novel in Japan, is now translated into English for the first time. An epic portrait of Japan in crisis, it combines graphic military history and highly readable fiction to depict an aspiring nation modernizing at breakneck speed. Acclaimed author Shiba Ryotaro devoted an entire decade of his life to this extraordinary blockbuster, which features Japan''s emergence onto the world stage by the early years of the 20th century.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (34, 34, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'The Seal of Surya: The Legend of Ikshvaku', NULL, 5, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Amritanshu pandey', NULL, N'The Seal of Surya: The Legend of Ikshvaku is the story of our first king and the founder of Suryavansha. A perfect amalgamation of betrayal, dynasties, destruction and loyalty, this is the first book from “The Scrolls of Aryavarta” series. This fiction book tells about the author’s view on Vedic and pre-Vedic period. The story is about the starting of Suryavansha and the first king of Aryavarta, Ikshvaku Manav.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (35, 35, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Shadow Princess', NULL, 5, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N': Indu Sundaresan', NULL, N'The Mughal Empire is crumbling. With the death of his beloved queen Mumtaz, Emperor Shah Jahan slowly loses interest in everything, while his sons conspire and scheme to gain control of the empire. Princess Jahanara is only seventeen when the weight of the imperial zenana is thrust upon her.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (36, 36, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'City of Skies (THE VIKING ASSASSIN SERIES Book 1)', NULL, 2, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Farah Cook', NULL, N'ONE GIRL. A DEADLY QUEST. AN EPIC JOURNEY.
Nora Hunt has just joined the deadly quest to discover the ancient legend of the nine worlds of the Vikings. Her post-apocalyptic dystopian world, Triangle of Peace, is the only home she’s ever known. But at sixteen years old, the skilled young warrior joins an elite band of raiders called Jarls.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (37, 37, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'The Women of Eden: An Epic Historical Romance ', NULL, 2, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Marilyn Harris', NULL, N' John Murrey Eden is the dominating force in the lives of the five Eden women. Lady Mary Eden, John''s cousin, is the recipient of his greatest beneficence and the object of his deepest rage. Young and headstrong, Mary is stifled and eventually almost killed by John''s zealous protection. ')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (38, 38, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Rocky Mountain Romance ', NULL, 2, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Vivian Arend', NULL, N'~~**A STAND ALONE novel in the Six Pack Ranch world. You can read ROMANCE without having read the previous books, although you''ll probably fall in love with everyone you meet, and you''ll want to know their stories too...sorry about that. (Not really :D)**~~
Grab the audio version for a low-low price after getting the ebook!
-----
Second chances are the sweetest—and the hottest.
It took a spectacularly embarrassing break-up to knock Steve Moonshine Coleman off his lazy butt.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (39, 39, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'You are the Best Wife: A True Love Story', NULL, 2, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Ajay K Pandey', NULL, N'''You Are The Best Wife: A True Love Story’ is a story about how people find true love and comfort in dissimilarities; about how two people with absolutely different ideologies meet and fall in love.
The story revolves around Bhavna and Ajay. Bhavna loves living life for others while Ajay loves living for himself; Bhavna is more spontaneous, never planning the next move and living life with the flow.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (40, 40, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'More Than Once: A Holiday Romance ', NULL, 2, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Elizabeth Briggs', NULL, N'Andrew West is done being the nice guy. After a marriage proposal gone wrong, he''s started over in a new city and he''s never risking his heart again. 
Becca Collins is done being the bad girl. After quitting the band she played bass for, she''s going to prove to her family that she''s really changed.
When Becca''s dumped by her boyfriend and fired from her job on Christmas Eve, all seems lost, until she runs into a former one night stand--Andrew.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (41, 41, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Falling for Alaska ', NULL, 2, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Shannon L. Brown', NULL, N'Jemma inherits a house and moves to small-town Palmer, Alaska. As she begins her business of flipping furniture, her gorgeous but unpleasant neighbor gets in her way. Sure, she’s making some noise. A little sawing. A bit of drilling. Her dream’s at stake. And she’s not sure about living in Alaska.
Nathaniel loves Alaska and moved here for peace and quiet.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (42, 42, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Her Last Wish', NULL, 2, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Ajay K. Pandey', NULL, N'His father''s over expectations only ruined his self-confidence further with each failure. A ray of hope walked into his life as his wife, a charismatic personality spreading joy wherever she went. Everything is going per plan, but darkness comes knocking soon. He finds out that she does not have much time to live and takes it upon himself to fight all odds – even his family, if need be – to help her fight her medical condition.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (43, 43, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Let''s Be Just Friends: A New Adult College Romance', NULL, 2, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Camilla Isley', NULL, N'Rose Atwood has been in love with her best friend for years, and she''s tired of keeping her feelings under wraps for fear of getting hurt. Being Tyler''s best friend is becoming more difficult with every passing year and every new woman in his life--especially Georgiana Smithson, a snotty, beautiful girl who''s in Law School with them.
When Rose, dumped by her long-term boyfriend, moves temporarily into Tyler''s apartment, tension spikes. Georgiana wants Rose out of the house.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (44, 44, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Could Be Forever: (Finn and Juliet) ', NULL, 2, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Claire Kingsley', NULL, N'Surprises aren’t usually my thing, but a spontaneous girls’ weekend at the beach to celebrate my birthday isn’t so bad. Until my girlfriends both get food poisoning.
But Finn, the hot bartender with dreamy blue eyes, a rough stubbly jaw, and the sexiest hands I’ve ever seen (I have a thing for hands) wants to help me salvage my unfortunate weekend.
')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (45, 45, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Love''s Return: A Christian Romance ', NULL, 2, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'T.K. Chapin', NULL, N'She''s a reporter, he''s a bodyguard. When these two run into each other for the first time in five years, sparks fly. A lot can happen in five years. Can love overcome past hurts?
LOVE''S RETURN is book one of the Christian romance series, PROTECTED BY LOVE by T.K. Chapin. Follow the lives of the men and women working for WIN bodyguard agency as they face the challenges of faith, love and life. ')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (46, 46, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Winter''s Secret', NULL, 2, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Lyn Cote', NULL, N'Some secrets chill to the bone....
Smashed heirlooms, ripped upholstery and rifled drawers-who is breaking into homes during a record-breaking snowy winter, vandalizing and stealing. 
Whoever it is--is targeting the most vulnerable--the seniors of a small northwoods town. As the new sheriff, Rodd Durand, home again to small town Steadfast, Wisconsin, takes on the Snowmobile Burglar. ')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (47, 47, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Slumbering: An Epic Fantasy Adventure Series', NULL, 3, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'C.S. Johnson', NULL, N'At the time, I didn''t really believe that anything outside my control would change my life. Or at least, not in a significant, substantial way. My life was all about myself, and I figured I had complete control over that. Anything that happened outside of my control was more or less because I let it happen, and didn''t feel like stopping it.
It''s funny how one disaster of epic proportion can really make you change your mind.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (48, 48, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Magic Unbound ', NULL, 3, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Jill Nojack', NULL, N'Not-quite-sixteen year old Lizbet Moore expects a boring last month of summer vacation -- and she gets what she’s expecting until a fifteen hundred year old Fae named Eamon shows up in her backyard disguised as a down-on-his-luck garden gnome. When Eamon slips an ancient amulet around her neck, the memories of Lizbet’s many past lives, including her first life as Morgan Le Fae, come slamming back to her to change her summer plans in a way she could never have expected.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (49, 49, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Darlings of Urban Fantasy', NULL, 3, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Chrissy Peebles', NULL, N'A star-studded anthology of thrilling, action-packed and totally swoon-worthy first books by your favorite women authors.
8 thrilling stories in one volume. 
8 sexy heroes. 
8 strong heroines. 
')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (50, 50, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'The Stolen Kingdom: A Fantasy Book for Kids', NULL, 3, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N' Ross Rosenfeld', NULL, N'A fantastic fantasy book for kids and adults who simply love a great adventure! Free with Kindle Unlimited!
You''ll ride with Taylor James and Robert of Roth as they attempt to defeat the evil Dark Duke. Along the way, you''ll have to survive the dangers of Cheshire Woods, battle brutes and monsters, and overcome incredible odds.
')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (51, 51, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Rae of Hope: Clean Paranormal Fantasy New Adult ', NULL, 3, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'WJ May', NULL, N'How hard do you have to shake the family tree to find the truth about the past?
Fifteen year-old Rae Kerrigan never really knew her family''s history. Her mother and father died when she was young and it is only when she accepts a scholarship to the prestigious Guilder Boarding School in England that a mysterious family secret is revealed.
')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (52, 52, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'The Martian', NULL, 3, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Andy Weir', NULL, N'I’m stranded on Mars. I have no way to communicate with Earth. I’m in a Habitat designed to last 31 days.
If the Oxygenator breaks down, I’ll suffocate. If the Water Reclaimer breaks down, I’ll die of thirst. If the Hab breaches, I’ll just kind of explode. If none of those things happen, I’ll eventually run out of food and starve to death.
So yeah. I’m screwed.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (53, 53, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Cosmos', NULL, 3, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Carl Sagan', NULL, N'The book, ‘Cosmos’ is regarded as one of the best science-themed books ever written and is often credited as the catalyst for popularizing the science-themed literature. It is authored by Carl Sagan who wanted to unravel the complex world of cosmos in a simple and lucid language, so that any layman can understand it. The book came along the Cosmos TV series and both were planned to complement each other.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (54, 54, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Transgression: A Time-Travel Suspense Novel ', NULL, 3, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'R.S. Ingermanson', NULL, N'What If …?
What if you were studying for your Ph.D. in archaeology and decided to take a break from your crummy life by working on an archaeological dig in Israel?
What if you met a great guy in Jerusalem who happened to be a world-famous theoretical physicist working on a crazy idea to build a wormhole that might make time-travel possible … someday?')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (55, 55, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'1984 (Modern Classics Series)', NULL, 3, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'George Orwell', NULL, N'This carefully crafted ebook: "1984 (Modern Classics Series)” is formatted for your eReader with a functional and detailed table of contents.
1984 is a political and dystopian science-fiction novel set in Airstrip One, a province of the superstate Oceania. It is a mind-numbing world which in a state of perpetual war, omnipresent government surveillance and public manipulation.')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (56, 56, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Chariots of the Gods', NULL, 3, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Erich Von Daniken', NULL, N'The groundbreaking classic that introduced the theory that ancient Earth established contact with aliens. 
Immediately recognized as a work of monumental importance, Chariots of the Gods endures as proof that Earth has been visited repeatedly by advanced aliens from other worlds. Here, Erich von Däniken examines ancient ruins, lost cities, spaceports, and a myriad of hard scientific facts that point to extraterrestrial intervention in human history. ')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (57, 57, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'The Phantom of the Earth', NULL, 3, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'Raeden Zen', NULL, N'Herbert''s Dune meets Banks'' The Player of Games in The Phantom of the Earth, a spellbinding science fiction epic set deep underground after the fall of civilization on Earth''s surface. Here are the five thought-provoking post-apocalyptic stories that lovers of science fiction can''t stop talking about, gathered together in one volume for the first time. ')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (58, 58, N'Added', CAST(0xC63D0B00 AS Date), NULL, N'Crossing In Time: An Edgy Sci-Fi Love ', NULL, 3, NULL, 20, NULL, 20, NULL, 0, NULL, 200, NULL, N'D. L. Orton', NULL, N'If someone took everything you live for, how far would you go to get it back?
When offered a one-way trip to the past, Iz sacrifices everything for a chance to change her dystopian future—and see her murdered lover one last time. 
After a perilous journey through a black hole, she wakes up on a tropical beach, buck naked and mortally wounded—but twenty years younger!')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (59, 1, N'Edited', CAST(0xC63D0B00 AS Date), N'Sita - Warrior of Mithila ', N'NAN', 1, NULL, 20, NULL, 20, NULL, 0, NULL, 200, 300, N'Amish Tripathi', N'NAN', N'Immerse yourself in book 2 of the Ram Chandra series, based on the Ramayana, the story of Lady Sita, written by the multi-million bestselling Indian Author Amish; the author who has transformed Indian Fiction with his unique combination of mystery, mythology, religious symbolism and philosophy. In this book, you will follow Lady Sita''s journey from an Adopted Child to the Prime Minister to finding her true calling.', N'NAN')
INSERT [dbo].[BooksLog] ([AuditId], [ID], [ActionType], [ActionDate], [OldName], [NewName], [OldCategoryId], [NewCategoryId], [OldQuantity], [NewQuantity], [OldAvailableQuantity], [NewAvailableQuantity], [OldIssueQuantity], [NewIssueQuantity], [OldBookCost], [NewBookCost], [OldAuthorName], [NewAuthorName], [OldBookDescription], [NewBookDescription]) VALUES (60, 1, N'Edited', CAST(0xC63D0B00 AS Date), N'Sita - Warrior of Mithila ', N'NAN', 1, NULL, 20, NULL, 20, NULL, 0, NULL, 300, 200, N'Amish Tripathi', N'NAN', N'Immerse yourself in book 2 of the Ram Chandra series, based on the Ramayana, the story of Lady Sita, written by the multi-million bestselling Indian Author Amish; the author who has transformed Indian Fiction with his unique combination of mystery, mythology, religious symbolism and philosophy. In this book, you will follow Lady Sita''s journey from an Adopted Child to the Prime Minister to finding her true calling.', N'NAN')
SET IDENTITY_INSERT [dbo].[BooksLog] OFF
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] 
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles] 
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership] 
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u WITH ( UPDLOCK, ROWLOCK ), dbo.aspnet_Membership m WITH ( UPDLOCK, ROWLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users WITH (ROWLOCK)
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 01/17/2018 22:15:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  Default [DF__aspnet_Ap__Appli__0CBAE877]    Script Date: 01/17/2018 22:15:38 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
/****** Object:  Default [DF__aspnet_Us__UserI__1273C1CD]    Script Date: 01/17/2018 22:15:48 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__1367E606]    Script Date: 01/17/2018 22:15:48 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__145C0A3F]    Script Date: 01/17/2018 22:15:48 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
/****** Object:  Default [DF__aspnet_Pa__PathI__5FB337D6]    Script Date: 01/17/2018 22:15:48 ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__48CFD27E]    Script Date: 01/17/2018 22:15:48 ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
/****** Object:  Default [DF__aspnet_Perso__Id__6B24EA82]    Script Date: 01/17/2018 22:15:48 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__aspnet_Me__Passw__276EDEB3]    Script Date: 01/17/2018 22:15:48 ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__117F9D94]    Script Date: 01/17/2018 22:15:48 ******/
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__5EBF139D]    Script Date: 01/17/2018 22:15:48 ******/
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__47DBAE45]    Script Date: 01/17/2018 22:15:48 ******/
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__6C190EBB]    Script Date: 01/17/2018 22:15:48 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__6D0D32F4]    Script Date: 01/17/2018 22:15:48 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__3C69FB99]    Script Date: 01/17/2018 22:15:48 ******/
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__25869641]    Script Date: 01/17/2018 22:15:48 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__267ABA7A]    Script Date: 01/17/2018 22:15:48 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__66603565]    Script Date: 01/17/2018 22:15:48 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__4E88ABD4]    Script Date: 01/17/2018 22:15:48 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__4D94879B]    Script Date: 01/17/2018 22:15:48 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
