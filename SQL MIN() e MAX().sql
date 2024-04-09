--Consulta para encontrar o menor tempo de duração de filme ou série:
SELECT MIN(DURACAO_MINUTOS) AS Menor_Duracao
FROM ENTRETERIMENTO;

--Consulta para encontrar o maior tempo de duração de filme ou série:
SELECT MAX(DURACAO_MINUTOS) AS Maior_Duracao
FROM ENTRETERIMENTO;

--Consulta para encontrar o filme ou série com maior duração, seu tipo e o tempo em minutos:
SELECT NOME, TIPO, DURACAO_MINUTOS
FROM ENTRETERIMENTO
WHERE DURACAO_MINUTOS = (SELECT MAX(DURACAO_MINUTOS) FROM ENTRETERIMENTO);

--Consulta para encontrar o filme ou série com menor duração, seu tipo e o tempo em minutos:
SELECT NOME, TIPO, DURACAO_MINUTOS
FROM ENTRETERIMENTO
WHERE DURACAO_MINUTOS = (SELECT MIN(DURACAO_MINUTOS) FROM ENTRETERIMENTO);

