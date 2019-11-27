USE [ZWDB]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/27/2019 10:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[LastLoginDate] [varchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 11/27/2019 10:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 11/27/2019 10:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[JoiningDate] [datetime] NULL,
	[Gender] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[ProfileImage] [varchar](50) NULL,
	[Bio] [varchar](max) NULL,
	[FaceBookProfileURL] [varchar](200) NULL,
	[DepartmentID] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([AdminID], [UserName], [Password], [LastLoginDate]) VALUES (1, N'admin', N'admin', N'11/27/2019 10:38:20 PM')
INSERT [dbo].[Admin] ([AdminID], [UserName], [Password], [LastLoginDate]) VALUES (2, N'admin', N'admin123', N'11/27/2019 9:48:21 PM')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DepartmentID], [Name]) VALUES (1, N'Dev')
INSERT [dbo].[Department] ([DepartmentID], [Name]) VALUES (2, N'Admin')
INSERT [dbo].[Department] ([DepartmentID], [Name]) VALUES (3, N'HR')
SET IDENTITY_INSERT [dbo].[Department] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeID], [Name], [JoiningDate], [Gender], [Designation], [Email], [ProfileImage], [Bio], [FaceBookProfileURL], [DepartmentID]) VALUES (1, N'Ayan', CAST(N'2019-11-27T00:00:00.000' AS DateTime), N'Male', N'Senior Developer', N'ayan.aa@gmail.com', N'1.jpg', N'born coder', N'https://localhost:44307/Employee/Edit/1', 1)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [JoiningDate], [Gender], [Designation], [Email], [ProfileImage], [Bio], [FaceBookProfileURL], [DepartmentID]) VALUES (2, N'Maya', CAST(N'2019-11-27T21:29:21.830' AS DateTime), N'Female', N'HR', N'maya.mm@gmail.com', N'2.jpg', N'Killer', N'www.fb.com/maya', 2)
SET IDENTITY_INSERT [dbo].[Employee] OFF
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
