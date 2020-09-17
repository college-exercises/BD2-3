CREATE DATABASE TP_03;
GO

USE TP_03;
GO

-- 1) Crie uma tabela chamada notas com a seguinte estrutura:

CREATE TABLE notas (
  matricula char(6) NOT NULL,
  cd_disciplina INTEGER NOT NULL,
  media FLOAT NULL,

  CONSTRAINT pk_notas 
  PRIMARY KEY(matricula)
)

-- 2) Adicione uma restrição de maneira que só possam ser inseridas médias na faixa de 0 a 10

ALTER TABLE 
  notas
ADD CONSTRAINT ck_notas
  CHECK(media BETWEEN 0 AND 10) 


-- 3) Tente inserir uma linha com as seguintes informações (‘416969’,1,11) O que aconteceu? Por quê?

INSERT INTO notas (matricula, cd_disciplina, media)
VALUES ('416969', 1, 11)

/* 
  Isto retorna o erro: 
    The INSERT statement conflicted with the CHECK constraint "CK__notas__media__24927208". 
    The conflict occurred in database "TP_03", table "dbo.notas", column 'media'.

  Explicação: 
    Isto ocorre devido a existência da constraint "check", 
    ela impede que sejam inseridos valores que extrapolem a faixa de
    valores permitidos para o campo, neste caso: 0 - 10 
*/

-- 4) Exclua a restrição criada no item 2

ALTER TABLE 
  notas
DROP CONSTRAINT ck_notas

-- 5) Tente novamente o item 3

INSERT INTO notas (matricula, cd_disciplina, media)
VALUES ('416969', 1, 11)

-- 6) Adicione novamente a restrição do item 2. O que aconteceu? Por quê?

ALTER TABLE 
  notas
ADD CONSTRAINT ck_notas
  CHECK(media BETWEEN 0 AND 10) 

/* 
  Isto retorna o erro: 
    The ALTER TABLE statement conflicted with the CHECK constraint "ck_notas". 
    The conflict occurred in database "TP_03", table "dbo.notas", column 'media'.

  Explicação: 
    Isto ocorre devido a existência da tuplas com valores que não atendem 
    a validação da constraint a ser inserida, esta  trava impede que a 
    constraint seja adicionada enquanto existirem estes registros, 
    para garantir a integridade da tabela.
*/

-- 7) Exclua e recrie a tabela notas estabelecendo a restrição do valor da nota (0 a 10) no momento da criação

DROP TABLE notas;
GO

CREATE TABLE notas (
  matricula char(6) NOT NULL,
  cd_disciplina INTEGER NOT NULL,
  media FLOAT NULL,

  CONSTRAINT pk_notas 
  PRIMARY KEY(matricula),
  
  CONSTRAINT ck_notas 
  CHECK(media BETWEEN 0 AND 10) 
)

-- 8) Tente inserir uma linha com as seguintes informações (‘416969’,1,null) O que aconteceu? Por quê?

-- 9) Crie uma tabela chamada funcionario com a seguinte estrutura:

-- 10) Garanta a integridade da tabela de funcionários estabelecendo as seguintes restrições:

-- a. O sexo só pode ser F ou M

-- b. A data de nascimento tem que ser anterior a data de admissão

-- c. O valor do salário deve ser um numero positivo

-- 11) Verifique se suas restrições estão funcionando tentando inserir linhas com valores inválidos.
-- notas
-- matricula char(6)
-- cd_disciplina int
-- media float
-- Column Name Data Type Allow Nulls
-- funcionario
-- cd_funcionario int
-- nm_funcionario varchar(50)
-- sexo char(1)
-- dt_nascimento smalldatetime
-- dt_admissao smalldatetime
-- vl_salario money
-- Column Name Data Type Allow Nulls
