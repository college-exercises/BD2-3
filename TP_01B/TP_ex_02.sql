USE dbTP_Insert_Delete_Update;
GO

-- a) Listar todos os alunos cujo nome comece com “Jose”

SELECT 
  *
FROM
  usuarios
WHERE
  nm_usuario LIKE 'Jose%'

-- b) Listar todos os alunos que tenham “Silva” no nome.

SELECT 
  *
FROM
  usuarios
WHERE
  nm_usuario LIKE '%Silva%'

-- c) Atualizar o campo média com a média aritmética das notas da p1 e p2.

UPDATE
  notas
SET
  media = (p1 + p2) / 2

-- d) Atualizar o campo ds_status com “aprovado” para todos os alunos com média superior a 5

UPDATE
  notas
SET
  ds_status = 'aprovado'
WHERE 
  media > 5

-- e) Atualizar o campo ds_status com “recuperação” para todos os alunos com média 3 e 5 (inclusive 3 e 5)

UPDATE
  notas
SET
  ds_status = 'recuperação'
WHERE 
  media BETWEEN 3 AND 5

-- f) Atualizar o campo ds_status com “reprovado” para todos os alunos com média inferior a 3

UPDATE
  notas
SET
  ds_status = 'reprovado'
WHERE 
  media < 3

-- g) Excluir todos os alunos cuja matricula seja “999999”

DELETE FROM
  usuarios
WHERE
  cd_matricula = '999999'
SELECT * from usuarios
