--Quantidade de séries que contêm a letra "n" no nome:
SELECT COUNT(*) AS `Quantidade de Séries`
FROM `ENTRETERIMENTO`
WHERE `TIPO` = 'SÉRIE' AND `NOME` LIKE '%n%';

--Quantidade de filmes com a letra "o":
SELECT COUNT(*) AS `Quantidade de Filmes`
FROM `ENTRETERIMENTO`
WHERE `TIPO` = 'FILME' AND `NOME` LIKE '%o%';

--Tempo de duração média das séries que começam com "w":
SELECT AVG(`DURACAO_MINUTOS`) AS `Duração Média das Séries`
FROM `ENTRETERIMENTO`
WHERE `TIPO` = 'SÉRIE' AND `NOME` LIKE 'W%';


--Soma da duração em minutos dos filmes do Brad Pitt que tenham a letra "e":
SELECT SUM(`DURACAO_MINUTOS`) AS `Soma da Duração`
FROM `ENTRETERIMENTO`
WHERE `TIPO` = 'FILME' AND (`ATOR_PRINCIPAL` = 'Brad Pitt ') AND `NOME` LIKE '%e%';

--Classificação da duração em minutos dos filmes do maior para o menor que começam com a letra "s":
SELECT *
FROM `ENTRETERIMENTO`
WHERE `TIPO` = 'FILME' AND `NOME` LIKE 'S%'
ORDER BY `DURACAO_MINUTOS` DESC;
