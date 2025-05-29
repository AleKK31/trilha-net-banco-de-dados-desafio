-- Exercicio 01: Buscar o nome e ano dos filmes
SELECT 
	Nome,
	Ano
FROM Filmes

-- Exercicio 02: Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC

-- Exercicio 03: Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- Exercicio 04: Buscar os filmes lan�ados em 1997
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = '1997'

-- Exercicio 05: Buscar os filmes lan�ados AP�S o ano 2000
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > '2000'

-- Exercicio 06: Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao ASC

-- Exercicio 07: Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao(Quantidade?) em ordem decrescente
SELECT 
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Exercicio 08: Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT *
FROM Atores
WHERE Genero = 'M'

-- Exercicio 09: Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Exercicio 10: Buscar o nome do filme e o g�nero
SELECT 
	F.Nome,
	G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG
	ON F.Id = FG.IdFilme
INNER JOIN Generos AS G
	ON G.Id = FG.IdGenero

-- Exercicio 11: Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT 
	F.Nome,
	G.Genero
FROM FILMES AS F
INNER JOIN FilmesGenero AS FG
	ON F.Id = FG.IdFilme
INNER JOIN Generos AS G
	ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mist�rio'

-- Exercicio 12: Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT 
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM Filmes AS F
INNER JOIN ElencoFilme AS EF
	ON F.Id = EF.IdFilme
INNER JOIN Atores AS A
	ON A.Id = EF.IdAtor