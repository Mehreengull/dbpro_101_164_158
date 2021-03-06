USE [DB51]
GO
/****** Object:  Table [dbo].[AppUser]    Script Date: 4/23/2019 12:40:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUser](
	[UserId] [varchar](16) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Description] [varchar](256) NULL,
	[Password] [varchar](32) NOT NULL,
	[roleId] [varchar](16) NOT NULL,
	[status] [char](1) NOT NULL,
 CONSTRAINT [PK_AppUser] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 4/23/2019 12:40:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Code] [bigint] NOT NULL,
	[Name] [varbinary](256) NOT NULL,
	[PostalCode] [varchar](50) NULL,
	[PhoneNo] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[Logo] [image] NULL,
	[Email] [varchar](50) NULL,
	[Url] [varchar](50) NULL,
 CONSTRAINT [PK_Company_1] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 4/23/2019 12:40:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[depId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[depId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 4/23/2019 12:40:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[empId] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[DateofBirth] [date] NULL,
	[State] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Province] [varchar](50) NULL,
	[Salary] [decimal](18, 2) NULL,
	[Gender] [char](2) NULL,
	[Status] [char](1) NULL,
	[Rank] [int] NULL,
	[Type] [bigint] NULL,
	[Email] [varchar](50) NULL,
	[DepId] [bigint] NULL,
	[DateofJoining] [date] NULL,
	[DateContractEnd] [date] NULL,
	[Cnic] [varchar](50) NULL,
	[userID] [varchar](16) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[empId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Installments]    Script Date: 4/23/2019 12:40:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Installments](
	[loanId] [bigint] IDENTITY(1,1) NOT NULL,
	[installmentNo] [bigint] NOT NULL,
	[dueDate] [date] NOT NULL,
	[remarks] [varchar](256) NOT NULL,
	[installmentAmount] [decimal](18, 0) NOT NULL,
	[status] [char](1) NOT NULL,
 CONSTRAINT [PK_Installments_1] PRIMARY KEY CLUSTERED 
(
	[loanId] ASC,
	[installmentNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loan]    Script Date: 4/23/2019 12:40:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loan](
	[loanId] [bigint] IDENTITY(1,1) NOT NULL,
	[requestDate] [date] NULL,
	[requestAmount] [decimal](18, 2) NULL,
	[approvalDate] [date] NULL,
	[loanStartDate] [date] NULL,
	[loanAmount] [decimal](18, 2) NOT NULL,
	[empId] [bigint] NOT NULL,
	[noOfInsatllments] [int] NOT NULL,
	[loanStatus] [char](1) NOT NULL,
	[remarks] [varchar](256) NULL,
 CONSTRAINT [PK_Loan] PRIMARY KEY CLUSTERED 
(
	[loanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lookup]    Script Date: 4/23/2019 12:40:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lookup](
	[typeId] [bigint] NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Lookup] PRIMARY KEY CLUSTERED 
(
	[typeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 4/23/2019 12:40:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[paymetId] [bigint] IDENTITY(1,1) NOT NULL,
	[loanId] [bigint] NOT NULL,
	[installmentNo] [bigint] NOT NULL,
	[amountRecieved] [decimal](18, 0) NOT NULL,
	[remarks] [varchar](256) NOT NULL,
	[status] [char](1) NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[paymetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ranks]    Script Date: 4/23/2019 12:40:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ranks](
	[rankId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Ranks] PRIMARY KEY CLUSTERED 
(
	[rankId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 4/23/2019 12:40:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[roleId] [varchar](16) NOT NULL,
	[roleName] [varchar](50) NOT NULL,
	[roleDescription] [varchar](256) NULL,
	[status] [char](1) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AppUser] ([UserId], [UserName], [Description], [Password], [roleId], [status]) VALUES (N'ALI', N'ALI', N'APPLICATION USER', N'ali', N'USER', N'1')
INSERT [dbo].[AppUser] ([UserId], [UserName], [Description], [Password], [roleId], [status]) VALUES (N'AZHAR', N'MUHAMMAD AZHAR', N'APPLICATION ADMINISTRATOR', N'admin', N'ADMIN', N'1')
INSERT [dbo].[Roles] ([roleId], [roleName], [roleDescription], [status]) VALUES (N'ADMIN', N'ADMIN', N'APPLICATION ADMINISTRATOR', N'1')
INSERT [dbo].[Roles] ([roleId], [roleName], [roleDescription], [status]) VALUES (N'USER', N'USER', N'ORGANIZATION EMPLOYEES', N'1')
ALTER TABLE [dbo].[AppUser]  WITH CHECK ADD  CONSTRAINT [FK_AppUser_Roles] FOREIGN KEY([roleId])
REFERENCES [dbo].[Roles] ([roleId])
GO
ALTER TABLE [dbo].[AppUser] CHECK CONSTRAINT [FK_AppUser_Roles]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_AppUser] FOREIGN KEY([userID])
REFERENCES [dbo].[AppUser] ([UserId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_AppUser]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([DepId])
REFERENCES [dbo].[Department] ([depId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Lookup] FOREIGN KEY([Type])
REFERENCES [dbo].[Lookup] ([typeId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Lookup]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Ranks] FOREIGN KEY([Rank])
REFERENCES [dbo].[Ranks] ([rankId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Ranks]
GO
ALTER TABLE [dbo].[Installments]  WITH CHECK ADD  CONSTRAINT [FK_Installments_Loan] FOREIGN KEY([loanId])
REFERENCES [dbo].[Loan] ([loanId])
GO
ALTER TABLE [dbo].[Installments] CHECK CONSTRAINT [FK_Installments_Loan]
GO
ALTER TABLE [dbo].[Loan]  WITH CHECK ADD  CONSTRAINT [FK_Loan_Employee] FOREIGN KEY([empId])
REFERENCES [dbo].[Employee] ([empId])
GO
ALTER TABLE [dbo].[Loan] CHECK CONSTRAINT [FK_Loan_Employee]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Installments] FOREIGN KEY([loanId], [installmentNo])
REFERENCES [dbo].[Installments] ([loanId], [installmentNo])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Installments]
GO
