USE [devrimme_kutuphane]
GO
/****** Object:  User [devrimme_CoreProjeDbUser]    Script Date: 26.11.2022 00:01:30 ******/
CREATE USER [devrimme_CoreProjeDbUser] FOR LOGIN [devrimme_CoreProjeDbUser] WITH DEFAULT_SCHEMA=[devrimme_CoreProjeDbUser]
GO
/****** Object:  User [devrimme_db]    Script Date: 26.11.2022 00:01:30 ******/
CREATE USER [devrimme_db] FOR LOGIN [devrimme_db] WITH DEFAULT_SCHEMA=[devrimme_db]
GO
/****** Object:  User [devrimme_kutuphaneuser]    Script Date: 26.11.2022 00:01:30 ******/
CREATE USER [devrimme_kutuphaneuser] FOR LOGIN [devrimme_kutuphaneuser] WITH DEFAULT_SCHEMA=[devrimme_kutuphaneuser]
GO
/****** Object:  User [devrimme_remoteuser]    Script Date: 26.11.2022 00:01:30 ******/
CREATE USER [devrimme_remoteuser] FOR LOGIN [devrimme_remoteuser] WITH DEFAULT_SCHEMA=[devrimme_remoteuser]
GO
ALTER ROLE [db_owner] ADD MEMBER [devrimme_CoreProjeDbUser]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [devrimme_CoreProjeDbUser]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [devrimme_CoreProjeDbUser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [devrimme_CoreProjeDbUser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [devrimme_CoreProjeDbUser]
GO
ALTER ROLE [db_owner] ADD MEMBER [devrimme_db]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [devrimme_db]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [devrimme_db]
GO
ALTER ROLE [db_datareader] ADD MEMBER [devrimme_db]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [devrimme_db]
GO
ALTER ROLE [db_owner] ADD MEMBER [devrimme_kutuphaneuser]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [devrimme_kutuphaneuser]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [devrimme_kutuphaneuser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [devrimme_kutuphaneuser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [devrimme_kutuphaneuser]
GO
ALTER ROLE [db_owner] ADD MEMBER [devrimme_remoteuser]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [devrimme_remoteuser]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [devrimme_remoteuser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [devrimme_remoteuser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [devrimme_remoteuser]
GO
/****** Object:  Schema [devrimme_CoreProjeDbUser]    Script Date: 26.11.2022 00:01:31 ******/
CREATE SCHEMA [devrimme_CoreProjeDbUser]
GO
/****** Object:  Schema [devrimme_db]    Script Date: 26.11.2022 00:01:31 ******/
CREATE SCHEMA [devrimme_db]
GO
/****** Object:  Schema [devrimme_kutuphaneuser]    Script Date: 26.11.2022 00:01:31 ******/
CREATE SCHEMA [devrimme_kutuphaneuser]
GO
/****** Object:  Schema [devrimme_remoteuser]    Script Date: 26.11.2022 00:01:31 ******/
CREATE SCHEMA [devrimme_remoteuser]
GO
/****** Object:  Table [devrimme_kutuphaneuser].[Authors]    Script Date: 26.11.2022 00:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_kutuphaneuser].[Authors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NULL,
	[Surname] [varchar](30) NULL,
	[Detail] [varchar](1000) NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [devrimme_kutuphaneuser].[Books]    Script Date: 26.11.2022 00:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_kutuphaneuser].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Category_Id] [tinyint] NULL,
	[Author_Id] [int] NULL,
	[PublicationYear] [char](4) NULL,
	[Publisher] [varchar](50) NULL,
	[Page] [varchar](4) NULL,
	[State] [bit] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [devrimme_kutuphaneuser].[CashDesk]    Script Date: 26.11.2022 00:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_kutuphaneuser].[CashDesk](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Month] [varchar](20) NULL,
	[Amount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_CashDesk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [devrimme_kutuphaneuser].[Categories]    Script Date: 26.11.2022 00:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_kutuphaneuser].[Categories](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [devrimme_kutuphaneuser].[Employees]    Script Date: 26.11.2022 00:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_kutuphaneuser].[Employees](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Employee] [nvarchar](50) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [devrimme_kutuphaneuser].[Members]    Script Date: 26.11.2022 00:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_kutuphaneuser].[Members](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Surname] [nvarchar](20) NULL,
	[Mail] [nvarchar](50) NULL,
	[UserName] [nvarchar](20) NULL,
	[Password] [nvarchar](20) NULL,
	[Photo] [nvarchar](250) NULL,
	[Phone] [nvarchar](20) NULL,
	[School] [nvarchar](100) NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [devrimme_kutuphaneuser].[Penalties]    Script Date: 26.11.2022 00:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_kutuphaneuser].[Penalties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Member_Id] [int] NULL,
	[Transaction_Id] [int] NULL,
	[StartPenalty] [smalldatetime] NULL,
	[FinishPenalty] [smalldatetime] NULL,
	[Amount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Penalties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [devrimme_kutuphaneuser].[Transactions]    Script Date: 26.11.2022 00:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [devrimme_kutuphaneuser].[Transactions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Book_Id] [int] NULL,
	[Member_Id] [int] NULL,
	[Employee_Id] [tinyint] NULL,
	[DateOfIssio] [smalldatetime] NULL,
	[ReturnDate] [smalldatetime] NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [devrimme_kutuphaneuser].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors] FOREIGN KEY([Author_Id])
REFERENCES [devrimme_kutuphaneuser].[Authors] ([Id])
GO
ALTER TABLE [devrimme_kutuphaneuser].[Books] CHECK CONSTRAINT [FK_Books_Authors]
GO
ALTER TABLE [devrimme_kutuphaneuser].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Categories] FOREIGN KEY([Category_Id])
REFERENCES [devrimme_kutuphaneuser].[Categories] ([Id])
GO
ALTER TABLE [devrimme_kutuphaneuser].[Books] CHECK CONSTRAINT [FK_Books_Categories]
GO
ALTER TABLE [devrimme_kutuphaneuser].[Penalties]  WITH CHECK ADD  CONSTRAINT [FK_Penalties_Members] FOREIGN KEY([Member_Id])
REFERENCES [devrimme_kutuphaneuser].[Members] ([Id])
GO
ALTER TABLE [devrimme_kutuphaneuser].[Penalties] CHECK CONSTRAINT [FK_Penalties_Members]
GO
ALTER TABLE [devrimme_kutuphaneuser].[Penalties]  WITH CHECK ADD  CONSTRAINT [FK_Penalties_Transactions] FOREIGN KEY([Transaction_Id])
REFERENCES [devrimme_kutuphaneuser].[Transactions] ([Id])
GO
ALTER TABLE [devrimme_kutuphaneuser].[Penalties] CHECK CONSTRAINT [FK_Penalties_Transactions]
GO
ALTER TABLE [devrimme_kutuphaneuser].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Books] FOREIGN KEY([Book_Id])
REFERENCES [devrimme_kutuphaneuser].[Books] ([Id])
GO
ALTER TABLE [devrimme_kutuphaneuser].[Transactions] CHECK CONSTRAINT [FK_Transactions_Books]
GO
ALTER TABLE [devrimme_kutuphaneuser].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Employees] FOREIGN KEY([Employee_Id])
REFERENCES [devrimme_kutuphaneuser].[Employees] ([Id])
GO
ALTER TABLE [devrimme_kutuphaneuser].[Transactions] CHECK CONSTRAINT [FK_Transactions_Employees]
GO
ALTER TABLE [devrimme_kutuphaneuser].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Members] FOREIGN KEY([Member_Id])
REFERENCES [devrimme_kutuphaneuser].[Members] ([Id])
GO
ALTER TABLE [devrimme_kutuphaneuser].[Transactions] CHECK CONSTRAINT [FK_Transactions_Members]
GO
