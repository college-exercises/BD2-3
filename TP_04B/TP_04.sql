CREATE DATABASE tp_01;
GO

USE tp_01;
GO

CREATE TABLE enderecos (
  id INTEGER NOT NULL IDENTITY(1, 1), 
  logradouro VARCHAR(255) NOT NULL, 
  numero NUMERIC(10, 0) NOT NULL, 
  complemento VARCHAR(50) NULL, 
  cep VARCHAR(8) NOT NULL, 
  bairro VARCHAR(255) NOT NULL, 
  cidade VARCHAR(255) NOT NULL,
  estado VARCHAR(255) NOT NULL,

  CONSTRAINT pk_enderecos PRIMARY KEY (id)
);
GO


CREATE TABLE fornecedores (
  id INTEGER NOT NULL IDENTITY(1, 1), 
  nome VARCHAR(255) NOT NULL, 
  documento VARCHAR(100) NOT NULL, 
  ativo BINARY NOT NULL DEFAULT 1,
  endereco_id INTEGER NOT NULL,

  CONSTRAINT pk_fornecedores PRIMARY KEY (id),
  CONSTRAINT fk_fornecedor_endereco FOREIGN KEY (id) REFERENCES enderecos(id)
);
GO
     
     

--- TODO
-- Produto: 
--     IdProduto
-- 	FornecedorId 
--     Nome 
--     Descricao 
--     Imagem  (o caminho dela)
--     Valor 
--     DataCadastro 
--     Ativo