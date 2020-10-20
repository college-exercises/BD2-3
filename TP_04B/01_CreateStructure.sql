CREATE DATABASE tp_04;
GO

USE tp_04;
GO

CREATE TABLE enderecos (
  id INTEGER NOT NULL IDENTITY(1, 1), 
  logradouro VARCHAR(255) NOT NULL, 
  numero NUMERIC(10, 0) NOT NULL, 
  complemento VARCHAR(50) NULL, 
  cep VARCHAR(8) NOT NULL, 
  bairro VARCHAR(255) NOT NULL, 
  cidade VARCHAR(255) NOT NULL,
  estado VARCHAR(50) NOT NULL,

  CONSTRAINT pk_enderecos PRIMARY KEY (id)
);
GO

CREATE TABLE fornecedores (
  id INTEGER NOT NULL IDENTITY(1, 1), 
  nome VARCHAR(255) NOT NULL, 
  documento VARCHAR(100) NOT NULL, 
  ativo BIT NOT NULL DEFAULT 1,
  endereco_id INTEGER NOT NULL,

  CONSTRAINT pk_fornecedores PRIMARY KEY (id),
  CONSTRAINT fk_fornecedor_endereco FOREIGN KEY (id) REFERENCES enderecos (id)
);
GO
     
CREATE TABLE produtos (
	id INTEGER NOT NULL IDENTITY(1, 1),	
	nome VARCHAR(100) NOT NULL,
  descricao VARCHAR(400),  
  imagem VARCHAR (100),  
  valor DECIMAL NOT NULL, 
  data_cadastro DATETIME  NOT NULL,
  ativo BIT NOT NULL,
	fornecedor_id INTEGER NOT NULL

  CONSTRAINT pk_produtos PRIMARY KEY(id),
  CONSTRAINT fk_produto_fornecedor FOREIGN KEY(fornecedor_id) references fornecedores(id)
);   
