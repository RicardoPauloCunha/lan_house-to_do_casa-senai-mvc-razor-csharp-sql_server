CREATE DATABASE LanHouse
GO

USE LanHouse
GO

CREATE TABLE TiposDefeitos (
	Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nome VARCHAR(100) NOT NULL
)

CREATE TABLE TiposEquipamentos (
	Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Nome VARCHAR(100) NOT NULL
)

CREATE TABLE RegistrosDefeitos (
	Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	DataDefeito DATETIME2 NOT NULL,
	Observacao VARCHAR(100) NOT NULL,
	TipoEquipamentoId INT NOT NULL FOREIGN KEY REFERENCES TiposEquipamentos(Id),
	TipoDefeitoId INT NOT NULL FOREIGN KEY REFERENCES TiposDefeitos(Id)
)

CREATE TABLE Usuarios (
	Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Email VARCHAR(100) NOT NULL,
	Senha VARCHAR(100) NOT NULL
)