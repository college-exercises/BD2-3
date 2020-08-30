CREATE DATABASE dbTP_Insert_Delete_Update
GO

USE dbTP_Insert_Delete_Update
GO

CREATE TABLE CepBaixada(
	Cd_Cep int NOT NULL,
	tipo varchar(19) NULL,
	Titulo varchar(20) NULL,
	Nome varchar(72) NULL,
	Bairro varchar(72) NULL,
	Cep varchar(9) NULL,
	Cidade varchar(72) NULL,
	UF char(2) NULL
) 
GO

CREATE TABLE usuarios(
	cd_usuario int primary key,
	cd_matricula char(6)  NOT NULL,
	nm_usuario varchar(50)  NOT NULL,
	dt_cadastro smalldatetime NULL,
	ic_login varchar(15)  NULL
)
GO

CREATE TABLE notas(
	cd_matricula char(6),
	nm_aluno varchar(50)  NOT NULL,
	p1 decimal(5,2) NULL,
	p2 decimal(5,2) NULL,
	media decimal(5,2) NULL,
	ds_status varchar(15)  NULL
)
