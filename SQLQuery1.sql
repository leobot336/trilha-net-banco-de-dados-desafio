SELECT * FROM Atores
SELECT * FROM Filmes
SELECT * FROM Generos
SELECT * FROM ElencoFilme
SELECT * FROM FilmesGenero

--1

SELECT Nome, Ano FROM Filmes;

--2

SELECT Nome, Ano 
FROM Filmes 
ORDER BY Ano ASC;

--3

SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Nome = 'De Volta para o Futuro';

--4

SELECT Nome, Ano 
FROM Filmes 
WHERE Ano = 1997;

--5

SELECT Nome, Ano 
FROM Filmes 
WHERE Ano > 2000;

--6

SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao ASC;

--7

SELECT Ano, COUNT(*) AS QuantidadeFilmes 
FROM Filmes 
GROUP BY Ano 
ORDER BY COUNT(*) DESC;

--8

SELECT PrimeiroNome, UltimoNome 
FROM Atores 
WHERE Genero = 'M';

--9

SELECT PrimeiroNome, UltimoNome 
FROM Atores 
WHERE Genero = 'F' 
ORDER BY PrimeiroNome ASC;

--10

SELECT Filmes.Nome AS NomeFilme, Generos.Genero 
FROM Filmes 
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
JOIN Generos ON Generos.Id = FilmesGenero.IdGenero;

--11

SELECT Filmes.Nome AS NomeFilme, Generos.Genero 
FROM Filmes 
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
JOIN Generos ON Generos.Id = FilmesGenero.IdGenero 
WHERE Generos.Genero = 'Mistério';

--12

SELECT Filmes.Nome AS NomeFilme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel 
FROM Filmes 

INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id)
INNER JOIN Atores ON ElencoFilme.Id = Atores.Id)
INNER JOIN Generos ON ElencoFilme.IdAtor = Generos.Id
