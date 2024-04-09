--Consulta para mostrar a quantidade de séries:
SELECT COUNT(*) AS Quantidade_de_Series
FROM ENTRETERIMENTO
WHERE TIPO = 'SÉRIE';

--Consulta para mostrar a quantidade de filmes:
SELECT COUNT(*) AS Quantidade_de_Filmes
FROM ENTRETERIMENTO
WHERE TIPO = 'FILME';

--Consulta para mostrar o tempo de duração média das séries:
SELECT AVG(DURACAO_MINUTOS) AS Duracao_Media_Series
FROM ENTRETERIMENTO
WHERE TIPO = 'SÉRIE';

--Consulta para somar a duração em minutos dos filmes do Brad Pitt:
SELECT SUM(DURACAO_MINUTOS) AS Duracao_Total_Brad_Pitt_Filmes
FROM ENTRETERIMENTO
WHERE (ATOR_PRINCIPAL = 'Brad Pitt' OR ATRIZ_PRINCIPAL = 'Brad Pitt ') AND TIPO = 'FILME';
