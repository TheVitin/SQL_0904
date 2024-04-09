--Média idade dos alunos que têm a letra "b" no nome
SELECT AVG(idade) AS media_idade
FROM alunos
WHERE nome LIKE '%b%';


--Soma das idades das alunas e alunos que têm a letra "s" no nome
SELECT SUM(idade) AS soma_idades
FROM alunos
WHERE nome LIKE '%s%';


--Média idade das alunas com nomes iniciados em "i"
SELECT AVG(idade) AS media_idade
FROM alunos
WHERE sexo = 'F' AND nome LIKE 'i%';


--Média idade dos alunos com nomes iniciados em "g"
SELECT AVG(idade) AS media_idade
FROM alunos
WHERE sexo = 'M' AND nome LIKE 'g%';


--Soma das idades das alunas que têm "a" no nome e soma das idades dos alunos que têm "f" no nome
SELECT 
  SUM(CASE WHEN sexo = 'F' THEN idade ELSE 0 END) AS soma_idades_alunas,
  SUM(CASE WHEN sexo = 'M' THEN idade ELSE 0 END) AS soma_idades_alunos
FROM alunos
WHERE nome LIKE '%a%' OR nome LIKE '%f%';
