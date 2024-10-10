Buscar o nome e ano dos filmes

SELECT Nome, Ano FROM Filmes;

Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT Nome, Ano FROM Filmes ORDER BY ANO;

Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta Para o Futuro';

Buscar os filmes lançados em 1997

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = '1997';

Buscar os filmes lançados APÓS o ano 2000

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > '2000';

Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao;

Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT Ano, COUNT(Ano) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

Buscar o nome do filme e o gênero

SELECT f.Nome, g.Genero FROM Filmes f
INNER JOIN FilmesGenero fg
ON f.Id = fg.IdFilme
INNER JOIN Generos g
ON g.id = fg.IdGenero;

Buscar o nome do filme e o gênero do tipo Mistério

SELECT f.Nome, g.Genero FROM Filmes f
INNER JOIN FilmesGenero fg
ON f.Id = fg.IdFilme
INNER JOIN Generos g
ON g.id = fg.IdGenero
WHERE g.Genero = 'Mistério';

Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, el.Papel FROM Filmes f
INNER JOIN ElencoFilme el
ON f.Id = el.IdFilme
INNER JOIN Atores a
ON a.Id = el.IdAtor;