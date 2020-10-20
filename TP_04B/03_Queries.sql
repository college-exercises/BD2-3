USE tp_04;
GO

-- Consultando todos produtos
SELECT 
  * 
FROM  
  produtos

-- Consultando todos fornecedores
SELECT 
  * 
FROM 
  fornecedores

-- Consultando todos endereços
SELECT 
  * 
FROM 
  enderecos

-- selecionando todos os endereços da cidade de Santos
SELECT 
  * 
FROM 
  enderecos 
WHERE 
  enderecos.cidade = 'santos'

-- selecionando o nome do fornecedor, sua localidade (Cidade - Estado) 
-- e estado de atividade dos registros cujo estado do fornecedor é SP ou MG
SELECT 
  fornecedores.nome AS Fornecedor,
  enderecos.cidade + ' - ' + enderecos.estado as Localidade,
  (
    CASE 
      fornecedores.ativo 
    WHEN 
      1 THEN 'Sim'
      ELSE 'Não'
    END   
  ) AS Ativo
FROM 
  fornecedores 
INNER JOIN enderecos
  ON fornecedores.id = enderecos.id
WHERE 
  enderecos.cidade = 'santos'
  AND enderecos.estado IN ('SP', 'MG')


-- Selecionando as junções da produtos e endereços, para saber onde localizar cada um deles.
SELECT 
  enderecos.cidade, produtos.nome
FROM 
  enderecos 
CROSS JOIN produtos 

-- Selecionando as tabelas e organizando as mesmas por coincidencia, ou seja, colocando fornecedores e seus respectivos produtos lado a lado
SELECT 
  fornecedores.nome, produtos.nome
FROM 
  fornecedores
INNER JOIN produtos 
  ON fornecedores.id = produtos.fornecedor_id

-- Selecionando a quantidade de fornecedores por estado
SELECT 
  enderecos.estado as Estado,
  COUNT(*) as 'Quantidade de fornecedores'
FROM
  fornecedores
INNER JOIN enderecos
  ON fornecedores.endereco_id = enderecos.id
GROUP BY
  enderecos.estado


-- Selecionando a somatória de preços dos produtos cadastrados
SELECT 
  'R$ ' + CONVERT(VARCHAR, SUM(produtos.valor)) as 'Somatória de preços'
FROM
  produtos
