USE tp_04;
GO

--Insert ENDEREÇOS

INSERT INTO 
  enderecos (logradouro, numero, complemento, cep, bairro, cidade, estado)
VALUES
    ('Av. Romenio Santos', 320, NULL, '11347600', 'Vila Ponte Nova', 'São Vicente', 'SP')
  , ('Av. Abib Diban', 461, NULL, '11330270', 'Vila Ponte Nova', 'São Vicente', 'SP')
  , ('Rua Adão Gonçalves', 145, NULL, '11365040', 'Vila Jockei Clube', 'São Vicente', 'SP')
  , ('Rua Adilza de Oliveira Rosa Sobral', 112, 'prox. bar do chicão', '11346080', 'Vila Nova', 'Cubatão', 'SP')
  , ('Rua Agenor Lapenna', 920, 'prox. a escola', '11335005', 'Vila Cascatinha', 'Cubatão', 'SP')
  , ('Rua Adolfo Caval', 413, 'prox. bar do rivaldo', '11370140', 'Vila Voturua', 'Cubatão', 'SP')
  , ('Rua Adalgisa Iolongo Ventura', 512, NULL, '11350390', 'Vila Voturua', 'Santos', 'SP')
  , ('Av. Agostinho', 615, NULL, '11350390', 'Parque Bitaru', 'Santos', 'SP')
  , ('Prça. Afonso Brás', 716, NULL, '11380410', 'Esplanada dos Barreiros', 'Santos', 'SP')
  , ('Rua Adilza de Oliveira Rosa Sobral', 156, NULL, '11310205', 'Esplanada dos Barreiros', 'Praia Grande', 'SP')
GO

--insert FORNECEDORES //

INSERT INTO 
  fornecedores (nome, documento, ativo, endereco_id)
VALUES
  ('Tonhão Mecânica e Auto Peças LTDA.', '07.431.623/0001-13', 1, 1)
, ('Josefino Hipermercado Ltda..', '04.413.114/0001-55', 1, 2)
, ('Junho Brabo Peças', '01.109.716/0001-98', 1, 3)
, ('Cachorro Crente Dona Siça ', '05.674.427/0001-74', 1, 4)
, ('Sorveteria Ice te Pego :0', '06.397.149/0001-56', 1, 5)
, ('O senhor dos Pasteis Ltda.', '03.257.845/0001-76', 1, 6)
, ('Rei do Melão Hortifrutaria Ltda.', '05.567.345/0001-56', 1, 7)
, ('Iphome Coxinhas Brabas', '07.876.575/0001-93', 1, 8)
, ('Kudossi Modas', '09.475.848/0001-14', 1, 9)
, ('Churrassic Park Lanches', '01.401.613/0001-52', 1, 10)
GO

--Insert PRODUTOS

INSERT INTO 
  produtos (nome, descricao, imagem, valor, data_cadastro, ativo,  fornecedor_id)
VALUES
  ('Chocolate Vencido', 'Um chocolate vencido perfeito para problemas estomacais', 'C:\Users\banco\Documents\!IMAGENS\foto1.jpg', 1.99, '20171006 12:32:12', 1, 4)
, ('Macarrão qui diliça', 'Macarrão Brabo', 'C:\Users\banco\Documents\!IMAGENS\foto2.jpg', 4.10, '20181205 12:32:12', 1, 2)
, ('Bola Quadrada', 'uma bola,  mas só que quadrada', 'C:\Users\banco\Documents\!IMAGENS\foto4.jpg', 12.99, '20200411 12:32:12', 1, 6)
, ('Marcha do Corsinha ', 'Macha do corsinha ué ¯\_(ツ)_/¯', 'C:\Users\banco\Documents\!IMAGENS\foto5.jpg', 410.10, '20200515 12:32:12', 1, 1)
, ('Brusinha Suprémi', 'a brusinha preferida das pirigosas', 'C:\Users\banco\Documents\!IMAGENS\foto6.jpg', 45.99, '20200519 12:32:12', 1, 9)
, ('Lanchao Dona Lucia', 'o Lanche mais brabo ', 'C:\Users\banco\Documents\!IMAGENS\foto8.jpg', 6.99, '20200625 12:32:12', 1, 5)
, ('Motor de Fusca', 'o Motor do Lendário', 'C:\Users\banco\Documents\!IMAGENS\foto9.jpg', 420.72, '20070627 12:32:12', 1, 3)
, ('Mamão 2kg', '2kg de Mamão ué ¯\_(ツ)_/¯', 'C:\Users\banco\Documents\!IMAGENS\foto10.jpg', 2.60, '20080729 12:32:12', 1, 7)
, ('Bisc. PassaTuaCarteira', 'O biscoito vitima da sociedade', 'C:\Users\banco\Documents\!IMAGENS\foto11.jpg', 2.55, '20110830 12:32:12', 1, 10)
, ('Halls Sabor Bolo no pote', 'Melhor e mais inovador sabor de halls', 'C:\Users\banco\Documents\!IMAGENS\foto14.jpg', 2.50, '20120225 12:32:12', 1, 8)
GO