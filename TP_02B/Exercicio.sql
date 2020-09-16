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

-- | pf <= 0,25 |  0,25 < pf < 0,75 | pf>=0.75
-- |      0     |        0.5        |   1.0

-- pf = parte fracionária

select *, FLOOR(vl_media) as inteiro, (
  case 
    when vl_media - FLOOR(vl_media) <= 0.25
      then '0'
    when vl_media - FLOOR(vl_media) > 0.25 and vl_media - FLOOR(vl_media) < 0.75
      then '0.5'
    else '1.0'
  end
) from notas


-- 7) Obtenha a quantidade de alunos, a maior nota, a menor nota e a média geral de todos os alunos

-- 8) Execute uma clausula para mostrar os dados da tabela ordenados pelo nome do aluno

-- 9) Execute uma clausula para mostrar os dados da tabela em ordem decrescente de média e crescente
-- de nome

-- 10) Obtenha a lista (nome e média) dos 10 alunos com melhor desempenho (10 melhores médias)

-- 11) Obtenha a lista (nome e média) dos 10 alunos com pior desempenho (10 piores médias)

-- 12) Obtenha uma lista com o valor da média e número de alunos que obtiveram aquela média

-- 13) A partir da tabela notas crie duas outras tabelas:
-- a. aprovados (com todos os alunos cuja média seja igual ou superior a 6.0)
-- b. exame (com todos os alunos cuja média seja inferior a 6.0)