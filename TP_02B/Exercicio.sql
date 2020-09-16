-- 5) Atualize com apenas um UPDATE a coluna ds_situacao com o seguinte critério:
-- media<3   | 3<= media < 6 |  media> 6.0
-- Reprovado |     Exame     |  Aprovado

UPDATE 
  notas
SET 
  ds_situacao = 
    CASE
      WHEN notas.vl_media < 3 
        THEN 'Reprovado'   
      WHEN notas.vl_media BETWEEN 3 AND 6
        THEN 'Exame'
      ELSE 'Aprovado'
    END

-- 6) Execute uma cláusula para arredondar as notas dos alunos seguindo o critério:
-- *OBS: utilize a função floor () que devolve somente a parte inteira do numero

-- | pf <= 0,25 |  0,25 < pf < 0,75 | pf >= 0.75
-- |      0     |        0.5        |   1.0

-- pf = parte fracionária

UPDATE 
  notas
SET
  vl_media = (
    FLOOR(vl_media) + (
      CASE 
        WHEN vl_media - FLOOR(vl_media) <= 0.25
          THEN 0
        WHEN (
          vl_media - FLOOR(vl_media) > 0.25 
          AND vl_media - FLOOR(vl_media) < 0.75
        )
          THEN 0.5
        ELSE 1
      END
    )
  );

-- 7) Obtenha a quantidade de alunos, a maior nota, a menor nota e a média geral de todos os alunos

SELECT 
  COUNT(*) as 'Total de alunos',
  MAX(vl_media) as 'Maior nota',
  MIN(vl_media) as 'Menor nota',
  CAST (AVG(vl_media) as decimal(20,2)) as 'Média'
FROM
  notas

-- 8) Execute uma clausula para mostrar os dados da tabela ordenados pelo nome do aluno

SELECT 
  *
FROM
  notas
ORDER BY
  nm_aluno

-- 9) Execute uma clausula para mostrar os dados da tabela em ordem decrescente de média e crescente
-- de nome

SELECT 
  *
FROM
  notas
ORDER BY
  vl_media DESC,
  nm_aluno ASC

-- 10) Obtenha a lista (nome e média) dos 10 alunos com melhor desempenho (10 melhores médias)

SELECT TOP 10
  nm_aluno,
  vl_media
FROM 
  notas
ORDER BY 
  vl_media DESC

-- 11) Obtenha a lista (nome e média) dos 10 alunos com pior desempenho (10 piores médias)

SELECT TOP 10
  nm_aluno,
  vl_media
FROM 
  notas
ORDER BY 
  vl_media ASC

-- 12) Obtenha uma lista com o valor da média e número de alunos que obtiveram aquela média

SELECT
  vl_media as 'Média',
  COUNT(vl_media) as 'Quantidade de alunos'
FROM
  notas
GROUP BY
  vl_media


-- 13) A partir da tabela notas crie duas outras tabelas:
-- a. aprovados (com todos os alunos cuja média seja igual ou superior a 6.0)

CREATE TABLE aprovados (
  cd_matricula CHAR(6) NOT NULL PRIMARY KEY,
  nome VARCHAR(50) NOT NULL
);

INSERT INTO 
  aprovados (cd_matricula, nome)
    SELECT 
      cd_matricula,
      nm_aluno
    FROM
      notas
    WHERE 
      vl_media >= 6 

-- b. exame (com todos os alunos cuja média seja inferior a 6.0)

CREATE TABLE exame (
  cd_matricula CHAR(6) NOT NULL PRIMARY KEY,
  nome VARCHAR(50) NOT NULL
);

INSERT INTO 
  exame (cd_matricula, nome)
    SELECT 
      cd_matricula,
      nm_aluno
    FROM
      notas
    WHERE 
      vl_media < 6 