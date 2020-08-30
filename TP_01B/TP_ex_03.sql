USE dbTP_Insert_Delete_Update;
GO

SET DATEFORMAT dmy;
GO

/*
  CENÁRIO: 
  
  Um hacker conseguiu danificar a tabela de usuários usada por um site criado pelos
  alunos do terceiro semestre. Seu objetivo é restaurar a integridade desta tabela.

  Durante um breve período de tempo foram inseridos vários registros que poluíram 
  a tabela de usuários e também foram invalidados logins para alguns usuários.
  
  Usando os seus recém adquiridos conhecimentos de SQL você deverá:
*/

/*
  a) 
    Sabendo que o ataque ocorreu entre as datas 25/01/2008 e 27/01/2008,
    você deverá listar somente as linhas da tabela inseridas durante o ataque. 
    Note que no período também foram feitos cadastros regulares. 
    Para ajudar saiba que no ataque foram inseridos registros com frases no lugar do nome.
*/

SELECT 
  *
FROM
  usuarios
WHERE
  dt_cadastro BETWEEN '25/01/2008' AND '27/01/2008'

-- b) Após listar os registros problemáticos, crie uma clausula SQL que EXCLUA apenas estes registros.

DELETE FROM
  usuarios
WHERE
  dt_cadastro BETWEEN '25/01/2008' AND '27/01/2008' AND
  cd_matricula = '696969'

/* c) 
    Atualize o campo “ic_login” para todos os casos onde o mesmo ficou com conteúdo “PEDE PARA SAIR”. 
    O login deve ser formado pela primeira letra do nome, seguido pela matricula e pela última letra do nome
*/

UPDATE 
  usuarios
SET
  ic_login = LEFT(nm_usuario, 1) + cd_matricula + RIGHT(nm_usuario, 1)
WHERE
  ic_login = 'PEDE PARA SAIR'
