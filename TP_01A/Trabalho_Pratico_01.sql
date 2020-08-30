CREATE DATABASE DbAcademico;
GO

USE DbAcademico;
GO

CREATE TABLE Alunos(
    Matricula INTEGER NOT NULL IDENTITY(1,1),
    Nome VARCHAR(50) NOT NULL,
    CPF VARCHAR(12) NOT NULL,
    RG VARCHAR(12) NOT NULL,
    uf_rg CHAR(2) NOT NULL,
    Idade INTEGER NOT NULL,
    Curso VARCHAR(12) NOT NULL,

    PRIMARY KEY(Matricula)
);
GO

INSERT INTO Alunos (Nome, CPF, RG, uf_rg, Idade, Curso) VALUES
('José Carlos', '987654321-12', '1234567', 'SP', 20, 'Direito'),
('Ana Maria', '878787878-72', '4545467', 'PR', 19, 'Biologia'),
('Pedro Silva', '565464565-56', '7667667', 'PR', 18, 'Direito'),
('Paulo Pereira', '765545556-44', '5656567', 'SP', 20, 'Computação'),
('Maria Francisca', '343434343-34', '2323237', 'SP', 21, 'Computação'),
('Simone Lira', '122121221-12', '1232367', 'MG', 22, 'Fisioterapia'),
('Claudio Lego', '454554554-54', '7677677', 'RJ', 22, 'Computação'),
('Edson Cido', '765656676-45', '1777777', 'SP', 23, 'Direito'),
('Bruno Abreu', '767676767-67', '4544444', 'SP', 20, 'Biologia');
GO

--4
--A
SELECT * FROM Alunos;
GO

--B
SELECT Nome, CPF, RG FROM Alunos;
GO

--C
SELECT * FROM Alunos
WHERE Matricula = 5;
GO

--D
SELECT Curso FROM Alunos
WHERE Nome = 'Pedro Silva';
GO

--E
SELECT Idade FROM Alunos
WHERE CPF = '454554554-54';
GO

--F
SELECT * FROM Alunos
WHERE Curso = 'Direito';
GO

--G
SELECT Nome, CPF FROM Alunos
WHERE Curso = 'Computação';
GO

--H
SELECT Nome, CPF, RG, (YEAR(GETDATE()) - Idade) as Nascimento FROM Alunos
WHERE Idade = 20;
GO

--I
SELECT Curso FROM Alunos
WHERE uf_rg = 'SP';
GO

--J
SELECT * FROM Alunos
WHERE Idade = 20;
GO

--K
SELECT Nome, Curso, CPF, RG FROM Alunos
WHERE Curso = 'Direito' AND uf_rg = 'SP';
GO

--L
SELECT Nome, Curso, CPF, RG FROM Alunos
WHERE Curso = 'Biologia' AND uf_rg = 'RJ';
GO

--M
SELECT * FROM Alunos
WHERE Curso = 'Biologia' OR Curso = 'Biologia';
GO

--N
SELECT * FROM Alunos
WHERE (Curso = 'Biologia' OR Curso = 'Biologia') AND Idade = 20;
GO