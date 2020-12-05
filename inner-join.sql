/* JOIN */
-- A cláusula JOIN é usada para combinar linhas de duas ou mais tabelas, com base em uma coluna relacionada entre elas.

/* Diferentes tipos de JOINs SQL */
-- (INNER) JOIN: retorna todos os registros que possuem correpondência de valores em AMBAS as tabelas.

-- LEFT (OUTER) JOIN: Retorna todos os registros da tabela da esquerda (tabela1), E os que possuem correspondência com a tabela da direita (tabela2).
   -- O resultado é NULO do lado direito, se não houver correspondência.

-- RIGHT (OUTER) JOIN: Retorna todos os registros da tabela da direita (tabela2), E os que possuem correspondência com a tabela da esquerda (tabela1).
   -- O resultado é NULO do lado esquerdo, se não houver correspondência.

-- FULL (OUTER) JOIN: Retorna todos os registros em que há uma correspondência entre a tabela da direita OU da esquerda.


/* INNER JOIN */
SELECT column_name(s)
FROM table1
INNER JOIN table2 
ON table1.column_name = table2.column_name;

-- A seguinte instrução SQL seleciona registros que tem valores correspondentes em ambas as tabelas.
-- A intenção aqui foi pegar o IPM de 2020 que estava em outra tabela, e trazer para uma onde já tinha o de 2019 para poder analisar.
SELECT a2019.MUNICÍPIOS, a2019.[IPM 2019], a2020.[IPM 2020]
FROM AnexoI2019 AS a2019
INNER JOIN AnexoI2020 AS a2020 ON a2019.COD = a2020.COD;

/* Juntando 3 tabelas */
-- Nesse caso estamos pegando o IPM dos anos de 2018, 2019 e 2020, que estão em tabelas diferentes.
SELECT a2019.MUNICÍPIOS, a2020.[IPM 2020], a2019.[IPM 2019], a2018.[IPM 2018]
FROM ((AnexoI2019 AS a2019
INNER JOIN AnexoI2020 AS a2020 ON a2019.COD = a2020.COD)
INNER JOIN AnexoI2018 AS a2018 ON a2019.COD = a2018.COD);