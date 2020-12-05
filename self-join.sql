/* JOIN */
-- A cláusula JOIN é usada para combinar linhas de duas ou mais tabelas, com base em uma coluna relacionada entre elas.

/* Diferentes tipos de JOINs SQL */
-- (INNER) JOIN: retorna todos os registros que possuem correpondência de valores em AMBAS as tabelas.

-- LEFT (OUTER) JOIN: Retorna todos os registros da tabela da esquerda (tabela1), E os que possuem correspondência com a tabela da direita (tabela2).
   -- O resultado é NULO do lado direito, se não houver correspondência.

-- RIGHT (OUTER) JOIN: Retorna todos os registros da tabela da direita (tabela2), E os que possuem correspondência com a tabela da esquerda (tabela1).
   -- O resultado é NULO do lado esquerdo, se não houver correspondência.

-- FULL (OUTER) JOIN: Retorna todos os registros em que há uma correspondência entre a tabela da direita OU da esquerda.


/* SQL SELF JOIN */

-- Um auto JOIN é uma adesão regular, mas a tabela é juntada a si mesma.

/* Sintaxe:
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;
*/

-- A seguinte declaração SQL corresponde as empresas que são do mesmo município:
SELECT A.NomeRazao AS Empresa1, B.NomeRazao AS Empresa2
FROM Cadimob A, Cadimob B 
WHERE A.CNPJ <> B.CNPJ
AND A.Municipio = B.Municipio
ORDER BY A.Municipio;