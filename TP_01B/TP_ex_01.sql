USE dbTP_Insert_Delete_Update;
GO

-- a) Todos registros da Cidade de Santos

SELECT 
  *
FROM 
  CepBaixada
WHERE 
  Cidade = 'Santos'

-- b) Todos registros de Santos cujo bairro é Gonzaga

SELECT 
  *
FROM 
  CepBaixada
WHERE 
  Cidade = 'Santos' AND
  Bairro = 'Gonzaga'

-- c) registros de Santos cujos bairros são: Gonzaga, Centro, Ponta da Praia e Macuco

SELECT 
  *
FROM 
  CepBaixada
WHERE 
  Cidade = 'Santos' AND
  Bairro IN (
    'Gonzaga',
    'Centro',
    'Ponta da Praia',
    'Macuco'
  )

-- d) registros cujos ceps sejam maiores que 11538-000 e menores que 11540-000

SELECT 
  *
FROM 
  CepBaixada
WHERE 
  Cep > '11538-000' and 
  Cep < '11540-000'
ORDER BY
  Cep ASC

-- e) registros cujos ceps sejam maiores ou iguais a 11538-000 e menores ou iguais a 11540-000 (responder de duas

SELECT 
  *
FROM 
  CepBaixada
WHERE 
  Cep BETWEEN '11538-000' and '11540-000'
ORDER BY
  Cep ASC

/*
  f) Exibir o campo EnderecoCompleto( que será a concatenação dos campos tipo, titulo e nome). 
  Pesquise o comando isnull() e também alias de coluna para nomear a coluna resultante da concatenação dos campos.
*/

SELECT DISTINCT
  ISNULL(
    CepBaixada.tipo + '. ' + CepBaixada.Titulo + ' ' + CepBaixada.Nome,
    'Endereço incompleto'
  ) as EnderecoCompleto
FROM 
  CepBaixada
ORDER BY
  EnderecoCompleto ASC

-- g) bairro e cidade de todos os registros

SELECT DISTINCT 
  Bairro, Cidade
FROM 
  CepBaixada

-- h) todos os registros cujo campo nome se inicia com "B", "C" ou "D" (responder de duas 3 maneiras)

SELECT 
  * 
FROM 
  CepBaixada
WHERE 
  Nome LIKE 'B%' OR
  Nome LIKE 'C%' OR
  Nome LIKE 'D%' 

-- i) todos os registros cujo campo nome se inicia com "B", "E", "F"

SELECT 
  * 
FROM 
  CepBaixada
WHERE 
  Nome LIKE 'B%' OR
  Nome LIKE 'E%' OR
  Nome LIKE 'F%' 

-- j) todos os registros cuja segunda letra seja "e" e a quarta letra seja "n"

SELECT 
  * 
FROM 
  CepBaixada
WHERE 
  Nome LIKE '_b_n%'

-- k) todos os registros em cujo nome tenha a palavra "Campo" não importando a posição

SELECT 
  * 
FROM 
  CepBaixada
WHERE 
  Nome LIKE '%Campo%'

-- l) todos os registros cujo nome se inicia com a palavra "Campo"

SELECT 
  * 
FROM 
  CepBaixada
WHERE 
  Nome LIKE 'Campo%'
