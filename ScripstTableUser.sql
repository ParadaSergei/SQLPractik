USE [Users21]
GO
/****** Object:  Table [dbo].[Executor]    Script Date: 05.03.2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Executor](
	[ID_Executor] [int] NOT NULL,
	[LoginExecutor] [nvarchar](50) NULL,
	[FIOExecutor] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Executor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kooeficient_Analized]    Script Date: 05.03.2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kooeficient_Analized](
	[Id_Analized] [int] NOT NULL,
	[analized] [float] NULL,
 CONSTRAINT [PK_Kooeficient_Analized] PRIMARY KEY CLUSTERED 
(
	[Id_Analized] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kooeficient_Dificult]    Script Date: 05.03.2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kooeficient_Dificult](
	[Id_Dificult] [int] NOT NULL,
	[Dificult] [float] NULL,
 CONSTRAINT [PK_Kooeficient_Dificult] PRIMARY KEY CLUSTERED 
(
	[Id_Dificult] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kooeficient_Installation_For_Equipment]    Script Date: 05.03.2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kooeficient_Installation_For_Equipment](
	[Id_InstallationForEquipment] [int] NOT NULL,
	[InstallationForEquipment] [float] NULL,
 CONSTRAINT [PK_Kooeficient_Installation_For_Equipment] PRIMARY KEY CLUSTERED 
(
	[Id_InstallationForEquipment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kooeficient_Maintenance]    Script Date: 05.03.2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kooeficient_Maintenance](
	[Id_Maintenance] [int] NOT NULL,
	[Maintenance] [float] NULL,
 CONSTRAINT [PK_Kooeficient_Maintenance] PRIMARY KEY CLUSTERED 
(
	[Id_Maintenance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kooeficient_Moneys]    Script Date: 05.03.2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kooeficient_Moneys](
	[Id_Moneys] [int] NOT NULL,
	[Moneys] [int] NULL,
 CONSTRAINT [PK_Kooeficient_Moneys] PRIMARY KEY CLUSTERED 
(
	[Id_Moneys] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kooeficient_TimeKooef]    Script Date: 05.03.2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kooeficient_TimeKooef](
	[Id_TimeKooef] [int] NOT NULL,
	[TimeKooef] [float] NULL,
 CONSTRAINT [PK_Kooeficient_TimeKooef] PRIMARY KEY CLUSTERED 
(
	[Id_TimeKooef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 05.03.2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[ID_Manager] [int] NOT NULL,
	[LoginManager] [nvarchar](50) NULL,
	[FIOManager] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Manager] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZP_JuniorMin]    Script Date: 05.03.2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZP_JuniorMin](
	[Id_ZpJunior] [int] NOT NULL,
	[JuniorMin] [int] NULL,
 CONSTRAINT [PK_ZP_JuniorMin] PRIMARY KEY CLUSTERED 
(
	[Id_ZpJunior] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZP_MiddleMin]    Script Date: 05.03.2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZP_MiddleMin](
	[Id_ZpMiddle] [int] NOT NULL,
	[MiddleMin] [int] NULL,
 CONSTRAINT [PK_ZP_MiddleMin] PRIMARY KEY CLUSTERED 
(
	[Id_ZpMiddle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZP_SeniorMin]    Script Date: 05.03.2023 18:58:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZP_SeniorMin](
	[Id_ZpSenior] [int] NOT NULL,
	[SeniorMin] [int] NULL,
 CONSTRAINT [PK_ZP_SeniorMin] PRIMARY KEY CLUSTERED 
(
	[Id_ZpSenior] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
