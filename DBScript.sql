USE [GiyimSatis]
GO
/****** Object:  Table [dbo].[TableIletisim]    Script Date: 10.01.2025 16:55:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableIletisim](
	[IletisimID] [int] IDENTITY(1,1) NOT NULL,
	[IletisimMesaj] [nvarchar](max) NOT NULL,
	[IletisimMail] [nvarchar](100) NOT NULL,
	[IletisimIsmi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TableIletisim] PRIMARY KEY CLUSTERED 
(
	[IletisimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TableKiyafet]    Script Date: 10.01.2025 16:55:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableKiyafet](
	[KiyafetID] [int] IDENTITY(1,1) NOT NULL,
	[KiyafetTurID] [int] NOT NULL,
	[Cinsiyet] [nvarchar](10) NOT NULL,
	[KiyafetAciklama] [nvarchar](max) NOT NULL,
	[KiyafetFoto] [nvarchar](max) NOT NULL,
	[KiyafetFiyat] [float] NOT NULL,
	[KiyafetStok] [bit] NOT NULL,
 CONSTRAINT [PK_TableKiyafet] PRIMARY KEY CLUSTERED 
(
	[KiyafetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TableKullanici]    Script Date: 10.01.2025 16:55:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableKullanici](
	[KullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciMail] [nvarchar](200) NOT NULL,
	[KullaniciSifre] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_TableKullanici] PRIMARY KEY CLUSTERED 
(
	[KullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TableTur]    Script Date: 10.01.2025 16:55:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableTur](
	[TurID] [int] IDENTITY(1,1) NOT NULL,
	[KiyafetIsim] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TableTur] PRIMARY KEY CLUSTERED 
(
	[TurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TableIletisim] ON 

INSERT [dbo].[TableIletisim] ([IletisimID], [IletisimMesaj], [IletisimMail], [IletisimIsmi]) VALUES (1, N'Ürünleriniz çok kaliteli.', N'sevval02@gmail.com', N'Şevval Polat')
INSERT [dbo].[TableIletisim] ([IletisimID], [IletisimMesaj], [IletisimMail], [IletisimIsmi]) VALUES (3, N'Teslimat çok hızlıydı.', N'merve@gmail.com', N'Merve Alaoğlu')
INSERT [dbo].[TableIletisim] ([IletisimID], [IletisimMesaj], [IletisimMail], [IletisimIsmi]) VALUES (4, N'Satıcı çok ilgiliydi.', N'rasim42@gmail.com', N'Rasim Akdeniz')
INSERT [dbo].[TableIletisim] ([IletisimID], [IletisimMesaj], [IletisimMail], [IletisimIsmi]) VALUES (5, N'Kız arkadaşıma aldım, çok beğendi.', N'mustafa36@gmail.com', N'Mustafa Kaya')
INSERT [dbo].[TableIletisim] ([IletisimID], [IletisimMesaj], [IletisimMail], [IletisimIsmi]) VALUES (6, N'Ürünlerinizi severek kullanıyorum.', N'esmanur87@gmail.com', N'Esmanur Yavuz')
INSERT [dbo].[TableIletisim] ([IletisimID], [IletisimMesaj], [IletisimMail], [IletisimIsmi]) VALUES (7, N'selammm!!!', N'sevval02@gmail.com', N'şevval polat')
INSERT [dbo].[TableIletisim] ([IletisimID], [IletisimMesaj], [IletisimMail], [IletisimIsmi]) VALUES (8, N'Ürün elime geç ulaştı.', N'yavuzesmanur13@gmail.com', N'esmanur yavuz')
INSERT [dbo].[TableIletisim] ([IletisimID], [IletisimMesaj], [IletisimMail], [IletisimIsmi]) VALUES (9, N'Paketleme güzeldi.', N'rasim42@gmail.com', N'Rasim Akdeniz')
SET IDENTITY_INSERT [dbo].[TableIletisim] OFF
GO
SET IDENTITY_INSERT [dbo].[TableKiyafet] ON 

INSERT [dbo].[TableKiyafet] ([KiyafetID], [KiyafetTurID], [Cinsiyet], [KiyafetAciklama], [KiyafetFoto], [KiyafetFiyat], [KiyafetStok]) VALUES (1, 1, N'Kadın', N'%50 Akrilik %50 Yün Gri Triko Kazak', N'https://static.zara.net/assets/public/b9a8/670e/b188456dab15/3fbb45e5ba24/05536200809-e1/05536200809-e1.jpg?ts=1728556635566&w=750', 949, 1)
INSERT [dbo].[TableKiyafet] ([KiyafetID], [KiyafetTurID], [Cinsiyet], [KiyafetAciklama], [KiyafetFoto], [KiyafetFiyat], [KiyafetStok]) VALUES (5, 2, N'Erkek', N'Baggy Fit Pantolon', N'https://static.zara.net/assets/public/0e8d/cb9c/aa2244338898/bca100751fa6/05575304800-e1/05575304800-e1.jpg?ts=1724928001481&w=563', 1599, 1)
INSERT [dbo].[TableKiyafet] ([KiyafetID], [KiyafetTurID], [Cinsiyet], [KiyafetAciklama], [KiyafetFoto], [KiyafetFiyat], [KiyafetStok]) VALUES (6, 5, N'Kadın', N'İşlemeli Detaylı El Çantası', N'https://static.zara.net/assets/public/957e/5ac1/5681472dbe0d/064e2a63b055/16350410719-e1/16350410719-e1.jpg?ts=1723028652319&w=563', 1000, 1)
INSERT [dbo].[TableKiyafet] ([KiyafetID], [KiyafetTurID], [Cinsiyet], [KiyafetAciklama], [KiyafetFoto], [KiyafetFiyat], [KiyafetStok]) VALUES (7, 4, N'Kadın', N'Şeritli, Bisiklet Yaka ve Kısa Kollu Tişört', N'https://static.zara.net/assets/public/8326/d1ca/276a40f88d4c/6220c00bc8fd/05643814712-e1/05643814712-e1.jpg?ts=1730966535519&w=563', 520, 1)
INSERT [dbo].[TableKiyafet] ([KiyafetID], [KiyafetTurID], [Cinsiyet], [KiyafetAciklama], [KiyafetFoto], [KiyafetFiyat], [KiyafetStok]) VALUES (10, 3, N'Erkek', N'Spor Ayakkabı', N'https://static.zara.net/assets/public/1f04/fb87/6aeb4011aed3/fb0d3af229c3/12254420800-a4/12254420800-a4.jpg?ts=1722962913880&w=563', 1000, 1)
INSERT [dbo].[TableKiyafet] ([KiyafetID], [KiyafetTurID], [Cinsiyet], [KiyafetAciklama], [KiyafetFoto], [KiyafetFiyat], [KiyafetStok]) VALUES (13, 6, N'Unisex', N'Regular Fit Gömlek', N'https://static.zara.net/assets/public/3cbb/8a54/5ee14af59a5a/13eaf672dc28/05685113250-e1/05685113250-e1.jpg?ts=1725954734896&w=563', 1090, 1)
INSERT [dbo].[TableKiyafet] ([KiyafetID], [KiyafetTurID], [Cinsiyet], [KiyafetAciklama], [KiyafetFoto], [KiyafetFiyat], [KiyafetStok]) VALUES (14, 7, N'Erkek', N'Su Geçirmez Tüylü Mont', N'https://static.zara.net/assets/public/d77a/4fd4/326b4f6a947a/eaea6fa9579e/03918329791-e1/03918329791-e1.jpg?ts=1726735927499&w=563', 3400, 1)
INSERT [dbo].[TableKiyafet] ([KiyafetID], [KiyafetTurID], [Cinsiyet], [KiyafetAciklama], [KiyafetFoto], [KiyafetFiyat], [KiyafetStok]) VALUES (15, 3, N'Kadın', N'Glamour ayakkabı', N'https://static.zara.net/assets/public/65b3/f6f6/576f4f2bb7c6/63ba8504f275/11219410195-e2/11219410195-e2.jpg?ts=1724254536277&w=563', 1990, 1)
INSERT [dbo].[TableKiyafet] ([KiyafetID], [KiyafetTurID], [Cinsiyet], [KiyafetAciklama], [KiyafetFoto], [KiyafetFiyat], [KiyafetStok]) VALUES (16, 5, N'Erkek', N'Şimşek McQueen Sırt Çantası', N'https://cdn.akakce.com/hakan-canta/hakan-canta-35335-simsek-mcqueen-erkek-cocuk-okul-cantasi-z.jpg', 300, 1)
INSERT [dbo].[TableKiyafet] ([KiyafetID], [KiyafetTurID], [Cinsiyet], [KiyafetAciklama], [KiyafetFoto], [KiyafetFiyat], [KiyafetStok]) VALUES (17, 2, N'Kadın', N'Beş Cepli Yüksek Bel Jean', N'https://static.zara.net/assets/public/9cd7/97c0/fafa4e1381f5/bb9947deb5ba/01416222800-e1/01416222800-e1.jpg?ts=1735559108775&w=563', 1190, 1)
SET IDENTITY_INSERT [dbo].[TableKiyafet] OFF
GO
SET IDENTITY_INSERT [dbo].[TableKullanici] ON 

INSERT [dbo].[TableKullanici] ([KullaniciID], [KullaniciMail], [KullaniciSifre]) VALUES (1, N'yavuzesmanur13@gmail.com', N'e3bc29627bdaa8b074e4efe237e2590604e1ded6f44e39e77d513a649aace2e9')
INSERT [dbo].[TableKullanici] ([KullaniciID], [KullaniciMail], [KullaniciSifre]) VALUES (2, N'adminpage@gmail.com', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92')
INSERT [dbo].[TableKullanici] ([KullaniciID], [KullaniciMail], [KullaniciSifre]) VALUES (3, N'sevval02@gmail.com', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92')
INSERT [dbo].[TableKullanici] ([KullaniciID], [KullaniciMail], [KullaniciSifre]) VALUES (4, N'sevvalesma81@gmail.com', N'edb0e738c37af51e3889b807e88bd57d39f8d0e79eb3bb53dd37c6e72e73c019')
INSERT [dbo].[TableKullanici] ([KullaniciID], [KullaniciMail], [KullaniciSifre]) VALUES (5, N'mustafarasim123@gmail.com', N'd40aec1399dce7b0604bdd3baa0b2431369fac6f8853a43016e4b2a478993a00')
SET IDENTITY_INSERT [dbo].[TableKullanici] OFF
GO
SET IDENTITY_INSERT [dbo].[TableTur] ON 

INSERT [dbo].[TableTur] ([TurID], [KiyafetIsim]) VALUES (1, N'Kazak')
INSERT [dbo].[TableTur] ([TurID], [KiyafetIsim]) VALUES (2, N'Pantolon')
INSERT [dbo].[TableTur] ([TurID], [KiyafetIsim]) VALUES (3, N'Ayakkabı')
INSERT [dbo].[TableTur] ([TurID], [KiyafetIsim]) VALUES (4, N'Tişört')
INSERT [dbo].[TableTur] ([TurID], [KiyafetIsim]) VALUES (5, N'Çanta')
INSERT [dbo].[TableTur] ([TurID], [KiyafetIsim]) VALUES (6, N'Gömlek')
INSERT [dbo].[TableTur] ([TurID], [KiyafetIsim]) VALUES (7, N'Mont')
SET IDENTITY_INSERT [dbo].[TableTur] OFF
GO
ALTER TABLE [dbo].[TableKiyafet]  WITH CHECK ADD  CONSTRAINT [FK_TableKiyafet_TableTur] FOREIGN KEY([KiyafetTurID])
REFERENCES [dbo].[TableTur] ([TurID])
GO
ALTER TABLE [dbo].[TableKiyafet] CHECK CONSTRAINT [FK_TableKiyafet_TableTur]
GO
