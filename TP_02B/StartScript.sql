CREATE DATABASE TP_02;
GO

USE TP_02;
GO

/****** Object:  Table [dbo].[notas]    Script Date: 05/08/2008 14:47:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[notas]') AND type in (N'U'))
DROP TABLE [dbo].[notas]
GO
/****** Object:  Table [dbo].[notas]    Script Date: 05/08/2008 14:47:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[notas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[notas](
	[cd_matricula] [char](6) COLLATE Latin1_General_CI_AI NOT NULL,
	[nm_aluno] [varchar](50) COLLATE Latin1_General_CI_AI NULL,
	[vl_media] [float] NULL,
	[ds_situacao] [varchar](20) COLLATE Latin1_General_CI_AI NULL,
 CONSTRAINT [PK_notas] PRIMARY KEY CLUSTERED 
(
	[cd_matricula] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'411603', N'MARCEL SOUZA BARBOSA', 3.4, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'413071', N'THIAGO DE FREITAS FERREIRA', 4.586, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'413205', N'CARLOS EDUARDO CAMILLO', 6.273, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'413991', N'RAFAEL DA SILVA COELHO', 7.459, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'413996', N'FLAVIO DE ANDRADE VENTURINI', 9.145, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414041', N'MICHEL ZARIF NETO', 5.332, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414053', N'HAROLDO DA SILVA FERREIRA', 2.518, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414081', N'EDER SEVERINO JULIAO', 6.704, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414815', N'ALEXSON MURY NETTO', 7.391, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414816', N'VINICIUS MOTTA DOMINGUES', 9.077, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414817', N'NILSON TENORIO CABECO JUNIOR', 5.763, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414819', N'DANIEL GOUVEIA LEANDRO DA CRUZ', 6.95, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414821', N'ALEXANDRE CAPOCCHI N. ZAKIME', 7.636, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414822', N'GUILHERME DE MELO MARQUES', 8.322, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414823', N'ALEXANDRE SANTOS DO NASCIMENTO', 9.009, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414825', N'FRANCISCO OLIMPIO RAMOS FILHO', 7.695, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414829', N'GUILHERME HOLDACK', 7.881, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414830', N'LEVERTON CARDOSO', 7.568, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414832', N'FABIO PEROSA DE CAMARGO', 7.254, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414833', N'LEANDRO DE CASTRO GOMES', 7.44, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414835', N'EDYMAR CARDOSO DE MIRANDA', 7.126, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414837', N'ANDRE TCHEN CARDOSO ALVES', 8.313, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414838', N'ELCIO MORELI SANT''ANA', 3.999, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414839', N'MARCIO CAMARGO DA SILVA', 6.685, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414844', N'WAGNER HEITOR DA FONSECA', 8.372, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414845', N'NIELBER ALVES DE LIMA SENA', 6.558, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414846', N'EDGARD PESTANA', 8.744, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414850', N'ANDRIELLY FERREIRA RODRIGUES', 3.931, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414851', N'NICHOLAS FRANCISCO SALES', 6.617, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414852', N'JOAO GABRIEL TRAJANO DA SILVA', 8.803, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414853', N'PRISCILA AMANCIO DA SILVA', 9.49, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414854', N'GABRIEL SOUZA DOS SANTOS', 7.676, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414857', N'RICARDO VIANA SOARES', 9.862, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414863', N'PHILIPPE BENCZ WINTER', 4.049, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414873', N'STELLA METRAN DA SILVA', 5.735, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414877', N'GUERRANDO PALEI NETO', 7.921, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414878', N'PAULO MAURICIO GOMES DE JESUS', 8.108, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414881', N'FELIPE DE SOUZA MELO', 7.7940000000000005, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414886', N'DANIELE FRANCA DE LIMA', 6.48, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414890', N'MARIA FERNANDA F DOS SANTOS', 7.667, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414896', N'FABIO CEZAR DE OLIVEIRA SILVA', 7.853, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414897', N'AMERICO DE SOUZA NETO', 8.539, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414898', N'MARIANA DE JESUS LIMA', 9.7259999999999991, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414899', N'ADRIANO N RODRIGUES DA SILVA', 8.412, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414901', N'LEONARDO RIBEIRO RODRIGUES', 8.598, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414909', N'DANIEL GOMES DE OLIVEIRA VALLE', 5.285, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414910', N'ROGER FARIA VILARINHO SOUSA', 8.971, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414919', N'THIAGO ALVARES DOS SANTOS', 7.157, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414925', N'LUCAS REY FRANCA JOAO', 9.344, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414927', N'VINICIUS BARBOSA DE CARVALHO', 7.03, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414931', N'JEFFERSON COSTA FERNANDES', 8.216, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414932', N'SILVIO GARRIDO RODRIGUES', 4.9030000000000005, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414937', N'PAULO ROBERTO BUSSON TOSTES', 8.589, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414939', N'THAYS PEREIRA DE SOUZA', 7.275, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414940', N'PEDRO PEREIRA LIMA', 8.462, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414946', N'MARCELO RODRIGUES DE SA', 6.148, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414947', N'LUCIANO FRANCA MATOS', 7.834, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414956', N'ANDERSON DA COSTA CELESTINO', 9.521, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414962', N'FERNANDA VANESSA MIRANDA', 7.707, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414963', N'DENNIS NOBILING DE ALMEIDA', 7.893, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414966', N'AMANDA LOBO MIGUES', 4.08, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414973', N'LUIZ FELIPE JACOMELLI', 8.266, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414976', N'PHILIPI ANTONIO B RODRIGUES', 6.952, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414989', N'VANDERSON DOS SANTOS MIRANDA', 8.139, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414990', N'LUIS ANTONIO A C DA SILVA', 7.325, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414993', N'FABIANO JOSE SANTOS', 8.011, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414994', N'RICARDO LUIZ D DE BARROS', 7.198, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'414996', N'FELIPE MASSAYOSHI P KITANO', 6.884, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'415004', N'FLAVIA CRISTINA B MOZANER', 8.07, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'415006', N'MARCUS VINICIUS G P DE CASTRO', 6.757, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'415007', N'KLEBER APOLINARIO DA CRUZ', 9.443, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'415008', N'MARCELA YU MEI THY', 7.629, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'415010', N'THIAGO NAPOLE MARTINS', 8.316, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'415011', N'MARICELE PINTO', 8.502, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'415012', N'SAULO PEREZ RAMALHEIRO', 6.188, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'415014', N'BRUNO BUENO SANTOS', 8.875, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'415015', N'RODRIGO LORCA PIO', 7.561, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'415022', N'LIVEA WINGERTER DA SILVA', 7.247, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'415024', N'LEANDRO SILVA SCHOMER', 9.934, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'415025', N'MARCELA CORREA CYPRIANO', 8.12, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'415043', N'MARCIO SARABANDO', 9.3060000000000009, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'415058', N'MARCELO SILVA REBOLA', 6.993, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'415081', N'GUSTAVAI BIANCHI DAVID GREGORIO', 8.679, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'415231', N'RENATO SUAREZ MOREIRA', 6.865, NULL)
INSERT [dbo].[notas] ([cd_matricula], [nm_aluno], [vl_media], [ds_situacao]) VALUES (N'47985 ', N'SERGIO ROSA MATHIAS', 6.552, NULL)
