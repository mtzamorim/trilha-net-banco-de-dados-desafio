select * from Atores
select * from ElencoFilme
select * from Filmes
select * from FilmesGenero
select * from Generos


Nome e ano dos filmes
select Nome, Ano from Filmes


Nome e ano dos filmes e duração, em ordem crescente pelo ano
select Nome, Ano, Duracao from Filmes order by Ano asc


Filme de volta para o futuro, trazendo o nome, ano e duração
select Nome, Ano, Duracao from Filmes where Nome='De Volta para o Futuro'


Filmes de 1997
select Nome, Ano, Duracao from Filmes where Ano = 1997


Filmes lançados depois de 2000
select Nome, Ano, Duracao from Filmes where Ano > 2000


Nome do filme, ano e que tenha duração entre 100 e 150 e ordenado do menor pro maior
select Nome, Ano, Duracao from Filmes where duracao > 100 AND duracao < 150 order by duracao asc


Quantos filmes lançados no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, count(*) Quantidade from Filmes group by Ano order by SUM(duracao) desc


Atores masculinos, com o Primeiro Nome, Ultimo Nome, Gênero masculino
select id, PrimeiroNome, UltimoNome, Genero from Atores where genero = 'M'


Atores femininos, retornando o Primeiro Nome, Ultimo Nome, e ordenando pelo PrimeiroNome 
select id, PrimeiroNome, UltimoNome, Genero from Atores where genero ='F' order by PrimeiroNome


Nome do filme e o gênero
SELECT a.Nome as NomeFilme, b.Genero as Gênero from Filmes a INNER JOIN FilmesGenero c ON a.Id = c.IdFilme INNER JOIN Generos b ON c.IdGenero = b.Id;


Nome do filme e o gênero do tipo "Mistério"
select a.Nome, b.Genero from Filmes a INNER JOIN FilmesGenero c ON c.IdFilme = a.Id INNER JOIN Generos b ON c.IdGenero = b.Id where  genero ='Mist�rio'


Nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select a.Nome ,b.PrimeiroNome, b.UltimoNome, c.Papel from Filmes as a INNER JOIN  ElencoFilme c ON c.IdFilme = a.Id INNER JOIN Atores b ON c.IdAtor = b.Id 


