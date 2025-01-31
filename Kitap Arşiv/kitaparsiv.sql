USE [kutuphane]
GO
/****** Object:  User [root]    Script Date: 12.06.2020 21:24:53 ******/
CREATE USER [root] FOR LOGIN [root] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[giris]    Script Date: 12.06.2020 21:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[giris](
	[kullaniciid] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciadi] [varchar](50) NULL,
	[sifre] [varchar](50) NULL,
 CONSTRAINT [PK_giris] PRIMARY KEY CLUSTERED 
(
	[kullaniciid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[kitabb]    Script Date: 12.06.2020 21:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[kitabb](
	[kitid] [int] NOT NULL,
	[kitapadi] [varchar](50) NOT NULL,
	[yazaradi] [varchar](50) NULL,
	[basimyili] [int] NULL,
	[yayinevi] [varchar](50) NULL,
	[turu] [varchar](50) NULL,
	[yazimdil] [varchar](50) NULL,
	[sayfa] [varchar](50) NULL,
 CONSTRAINT [PK_kitabb] PRIMARY KEY CLUSTERED 
(
	[kitapadi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[giris] ON 

INSERT [dbo].[giris] ([kullaniciid], [kullaniciadi], [sifre]) VALUES (2, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[giris] OFF
INSERT [dbo].[kitabb] ([kitid], [kitapadi], [yazaradi], [basimyili], [yayinevi], [turu], [yazimdil], [sayfa]) VALUES (4, N'Hasretinden Prangalar Eskittim', N'Ahmed Arif', 2019, N'Metis', N'Şiir', N'Türkçe', N'184')
INSERT [dbo].[kitabb] ([kitid], [kitapadi], [yazaradi], [basimyili], [yayinevi], [turu], [yazimdil], [sayfa]) VALUES (2, N'Satranç', N'Stefan Zweig', 2018, N'Türkiye İş Bankası', N'Hikaye', N'Türkçe/Çeviri', N'83')
INSERT [dbo].[kitabb] ([kitid], [kitapadi], [yazaradi], [basimyili], [yayinevi], [turu], [yazimdil], [sayfa]) VALUES (1, N'Uçurtma Avcısı', N'Khaled Hosseini', 2017, N'EVEREST', N'Roman', N'Türkçe/Çeviri', N'375')
INSERT [dbo].[kitabb] ([kitid], [kitapadi], [yazaradi], [basimyili], [yayinevi], [turu], [yazimdil], [sayfa]) VALUES (3, N'Yaşamak', N'Yu Hua', 2018, N'Jaguar', N'Roman', N'Türkçe/Çeviri', N'205')
