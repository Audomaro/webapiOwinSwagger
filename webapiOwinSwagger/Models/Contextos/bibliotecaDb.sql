USE [biblioteca]
GO
/****** Object:  Table [dbo].[prestamos]    Script Date: 19/06/2016 07:26:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prestamos](
	[idPrestamo] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[fecha] [datetime] NOT NULL CONSTRAINT [DF_prestamos_fecha]  DEFAULT (getdate()),
 CONSTRAINT [PK_prestamos] PRIMARY KEY CLUSTERED 
(
	[idPrestamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 19/06/2016 07:26:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[usuarios](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombreCompleto] [varchar](50) NULL,
	[fechaNacimiento] [datetime] NULL,
	[calle] [varchar](50) NULL,
	[numero] [varchar](50) NULL,
	[colonia] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[prestamos] ON 

GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (1, 1, CAST(N'2016-06-11 17:00:25.930' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (2, 1, CAST(N'2016-06-08 17:00:26.780' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (3, 1, CAST(N'2016-06-11 17:00:27.393' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (4, 1, CAST(N'2016-06-12 17:00:28.057' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (5, 1, CAST(N'2016-06-19 17:00:42.210' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (6, 11, CAST(N'2016-05-16 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (7, 11, CAST(N'2016-02-18 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (8, 14, CAST(N'2016-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (9, 19, CAST(N'2016-01-16 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (10, 2, CAST(N'2016-05-13 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (11, 6, CAST(N'2016-05-18 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (12, 19, CAST(N'2016-05-19 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (13, 13, CAST(N'2016-04-16 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (14, 1, CAST(N'2016-01-06 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (15, 10, CAST(N'2016-01-22 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (16, 12, CAST(N'2016-05-25 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (17, 21, CAST(N'2016-05-04 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (18, 9, CAST(N'2016-02-20 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (19, 20, CAST(N'2016-03-04 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (20, 17, CAST(N'2016-04-29 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (21, 7, CAST(N'2016-01-27 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (22, 11, CAST(N'2016-04-22 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (23, 2, CAST(N'2016-02-18 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (24, 4, CAST(N'2016-02-14 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (25, 12, CAST(N'2016-03-11 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (26, 15, CAST(N'2016-04-05 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (27, 19, CAST(N'2016-03-12 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (28, 3, CAST(N'2016-03-23 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (29, 8, CAST(N'2016-03-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (30, 5, CAST(N'2016-05-06 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (31, 15, CAST(N'2016-03-15 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (32, 12, CAST(N'2016-03-06 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (33, 14, CAST(N'2016-04-04 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (34, 17, CAST(N'2016-04-21 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (35, 11, CAST(N'2016-01-06 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (36, 17, CAST(N'2016-04-25 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (37, 9, CAST(N'2016-02-10 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (38, 3, CAST(N'2016-05-25 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (39, 11, CAST(N'2016-03-31 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (40, 1, CAST(N'2016-01-23 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (41, 19, CAST(N'2016-03-29 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (42, 5, CAST(N'2016-03-26 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (43, 18, CAST(N'2016-03-29 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (44, 6, CAST(N'2016-05-12 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (45, 9, CAST(N'2016-02-27 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (46, 2, CAST(N'2016-04-29 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (47, 16, CAST(N'2016-02-25 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (48, 17, CAST(N'2016-05-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (49, 8, CAST(N'2016-01-17 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (50, 20, CAST(N'2016-01-25 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (51, 3, CAST(N'2016-05-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (52, 10, CAST(N'2016-02-03 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (53, 8, CAST(N'2016-02-29 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (54, 13, CAST(N'2016-04-26 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (55, 8, CAST(N'2016-03-03 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (56, 17, CAST(N'2016-03-13 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (57, 21, CAST(N'2016-03-26 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (58, 13, CAST(N'2016-03-06 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (59, 3, CAST(N'2016-02-05 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (60, 14, CAST(N'2016-03-04 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (61, 16, CAST(N'2016-02-03 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (62, 19, CAST(N'2016-02-20 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (63, 5, CAST(N'2016-02-26 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (64, 7, CAST(N'2016-04-22 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (65, 19, CAST(N'2016-01-10 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (66, 2, CAST(N'2016-01-07 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (67, 2, CAST(N'2016-05-18 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (68, 14, CAST(N'2016-05-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (69, 21, CAST(N'2016-03-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (70, 14, CAST(N'2016-01-08 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (71, 16, CAST(N'2016-03-21 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (72, 9, CAST(N'2016-04-30 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (73, 4, CAST(N'2016-04-26 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (74, 15, CAST(N'2016-01-05 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (75, 7, CAST(N'2016-05-22 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (76, 4, CAST(N'2016-04-10 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (77, 1, CAST(N'2016-01-14 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (78, 5, CAST(N'2016-03-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (79, 14, CAST(N'2016-05-21 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (80, 19, CAST(N'2016-01-12 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (81, 8, CAST(N'2016-04-27 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (82, 20, CAST(N'2016-03-11 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (83, 12, CAST(N'2016-01-05 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (84, 17, CAST(N'2016-03-09 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (85, 1, CAST(N'2016-01-24 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (86, 15, CAST(N'2016-02-17 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (87, 18, CAST(N'2016-03-11 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (88, 11, CAST(N'2016-04-11 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (89, 5, CAST(N'2016-03-28 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (90, 16, CAST(N'2016-05-16 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (91, 9, CAST(N'2016-05-09 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (92, 13, CAST(N'2016-05-30 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (93, 10, CAST(N'2016-05-12 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (94, 4, CAST(N'2016-01-03 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (95, 7, CAST(N'2016-05-11 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (96, 10, CAST(N'2016-02-18 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (97, 6, CAST(N'2016-04-25 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (98, 3, CAST(N'2016-05-14 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (99, 9, CAST(N'2016-03-07 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (100, 15, CAST(N'2016-05-14 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (101, 14, CAST(N'2016-02-18 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (102, 12, CAST(N'2016-05-27 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (103, 16, CAST(N'2016-05-11 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (104, 6, CAST(N'2016-02-19 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[prestamos] ([idPrestamo], [idUsuario], [fecha]) VALUES (105, 13, CAST(N'2016-04-20 00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[prestamos] OFF
GO
SET IDENTITY_INSERT [dbo].[usuarios] ON 

GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (1, N'Audomaro Glez', CAST(N'1990-02-24 00:00:00.000' AS DateTime), N'x', N'y', N'z', N'123')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (2, N'Brandon Moore', CAST(N'2004-05-17 00:00:00.000' AS DateTime), N'Twin Pines', N'7958', N'New York', N'1-(315)788-5514')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (3, N'Theresa Evans', CAST(N'2002-02-07 00:00:00.000' AS DateTime), N'Shopko', N'9', N'West Virginia', N'1-(304)198-7666')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (4, N'Jesse Simmons', CAST(N'1993-12-18 00:00:00.000' AS DateTime), N'Dixon', N'65', N'District of Columbia', N'1-(202)508-6491')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (5, N'Kathryn Bell', CAST(N'2006-11-21 00:00:00.000' AS DateTime), N'Dryden', N'788', N'Virginia', N'1-(571)803-9335')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (6, N'Betty Powell', CAST(N'2002-07-02 00:00:00.000' AS DateTime), N'Canary', N'7', N'District of Columbia', N'1-(202)113-4866')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (7, N'Kelly Gomez', CAST(N'1996-12-19 00:00:00.000' AS DateTime), N'Shasta', N'28', N'Michigan', N'1-(734)548-1595')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (8, N'Andrew Wallace', CAST(N'2005-02-27 00:00:00.000' AS DateTime), N'Schmedeman', N'907', N'Kansas', N'1-(316)810-2890')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (9, N'Kimberly Kim', CAST(N'1996-02-10 00:00:00.000' AS DateTime), N'Jay', N'01', N'Kansas', N'1-(913)149-6156')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (10, N'Catherine Kim', CAST(N'2005-12-06 00:00:00.000' AS DateTime), N'South', N'593', N'California', N'1-(562)375-4372')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (11, N'Ruth Welch', CAST(N'2004-06-30 00:00:00.000' AS DateTime), N'North', N'826', N'Indiana', N'1-(765)259-4170')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (12, N'Annie Foster', CAST(N'1993-03-15 00:00:00.000' AS DateTime), N'Morning', N'60', N'Tennessee', N'1-(901)643-5309')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (13, N'Kenneth Fuller', CAST(N'2001-11-05 00:00:00.000' AS DateTime), N'Brickson Park', N'020', N'Nebraska', N'1-(402)781-1338')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (14, N'George Hunt', CAST(N'2002-07-13 00:00:00.000' AS DateTime), N'Lien', N'949', N'Colorado', N'1-(720)315-9285')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (15, N'Doris Berry', CAST(N'2004-10-12 00:00:00.000' AS DateTime), N'Morningstar', N'14495', N'Illinois', N'1-(309)217-5686')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (16, N'Wanda Reyes', CAST(N'2004-04-05 00:00:00.000' AS DateTime), N'Clyde Gallagher', N'739', N'Oregon', N'1-(503)678-8464')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (17, N'Matthew Anderson', CAST(N'2002-11-10 00:00:00.000' AS DateTime), N'Harper', N'5235', N'Kansas', N'1-(913)560-8618')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (18, N'Angela Parker', CAST(N'1990-09-24 00:00:00.000' AS DateTime), N'Elka', N'250', N'Alabama', N'1-(334)242-9054')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (19, N'Gerald Flores', CAST(N'1995-03-10 00:00:00.000' AS DateTime), N'Forest Dale', N'13221', N'Pennsylvania', N'1-(215)582-0008')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (20, N'Steven Howard', CAST(N'1993-09-09 00:00:00.000' AS DateTime), N'Eastwood', N'3568', N'Oklahoma', N'1-(405)916-9416')
GO
INSERT [dbo].[usuarios] ([idUsuario], [nombreCompleto], [fechaNacimiento], [calle], [numero], [colonia], [telefono]) VALUES (21, N'Adam Martin', CAST(N'2003-07-09 00:00:00.000' AS DateTime), N'Warner', N'04', N'Maryland', N'1-(410)134-1910')
GO
SET IDENTITY_INSERT [dbo].[usuarios] OFF
GO
