Use dbTP_Insert_Delete_Update;
Go

-- Exercicio 1

-- a
Select * from CepBaixada
where Cidade = 'Santos';
Go

-- b
Select * from CepBaixada
where Cidade = 'Santos' and Bairro = 'Gonzaga';
Go

-- c
-- c.1
Select * from CepBaixada
where Cidade = 'Santos' and (Bairro = 'Gonzaga' or Bairro = 'Centro' or Bairro = 'Ponta da Praia' or Bairro = 'Macuco');
Go

-- c.2
Select * from CepBaixada
where Bairro in ('Gonzaga', 'Centro', 'Ponta da Praia', 'Macuco') and Cidade = 'Santos';
Go

-- d
Select * from CepBaixada
where Cep > '11538-000' and Cep < '11540-000'
order by Cep;
Go

-- e
-- e.1
Select * from CepBaixada
where Cep >= '11538-000' and Cep <= '11540-000'
order by Cep;
Go

-- e.2
Select * from CepBaixada
where Cep between '11538-000' and '11540-000'
order by Cep;
Go

-- f
Select (tipo + ' ' + Nome + ', ' + Bairro + '. ' + Cidade + ', ' + UF) as EnderecoCompleto from CepBaixada
Go

-- g
Select Bairro, Cidade from CepBaixada;
Go

-- h
-- h.1 
Select * from CepBaixada
where Nome like 'B%' or Nome like 'C%' or Nome like 'D%';
Go

-- h.2
Select * from CepBaixada where Nome like 'B%'
union
Select * from CepBaixada where Nome like 'C%'
union
Select * from CepBaixada where Nome like 'D%';
Go

-- h.3
Select * from CepBaixada where Nome like '[B-C-D]%';
Go

-- i
Select * from CepBaixada
where Nome like '[B-E-F]%';

-- j
-- j.1
Select * from CepBaixada
where Nome like '_e_n%';

-- j.2
Select * from CepBaixada
where Nome like '_e%' and Nome like '___n%';

-- k
Select * from CepBaixada
where Nome like '%campo%';

-- l
Select * from CepBaixada
where Nome like 'Campo%';

-- m
Select * from CepBaixada
where not Cidade in ('Santos', 'Cubat?o', 'Cubatão');

-- n
Select * from CepBaixada
where Cidade in ('Santos', 'S?o Vicente') and Nome like '%centr%';

-- o
Select GETDATE();

-- p
Select MONTH(GETDATE());

-- q
Select YEAR(GETDATE());

-- r
Declare @nasc DATE;
Set @nasc = '2001-06-24';
Select (DATEDIFF(DAY, @nasc, GETDATE())) as 'Idade em dias';	

-- s
Select (DATEDIFF(WEEK, @nasc, GETDATE())) as 'Idade em semanas';	

-- t
Select (DATEDIFF(MINUTE, @nasc, GETDATE())) as 'Idade em minutos';

-- u
Select GETDATE() - 34;

-- v
Select GETDATE() + 120;

-- w
Select DATEADD(MONTH, 4, GETDATE()) as 'Data após 4 meses';

-- x
Select POWER(2,8);

-- y
Declare @raio decimal;
Set @raio = 10;

Select (2 * PI() * @raio) as 'Circunferencia';

-- z
Select POWER((Pi() * @raio), 2) as 'Area';
