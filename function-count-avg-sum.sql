/* Funções SQL COUNT(), AVG() e SUM() */

-- A função COUNT() retorna o NÚMERO DE LINHAS que coresonde a um critério especificado.ABS
-- A função AVG() retorna o VALOR MÉDIO de uma coluna numérica.
-- A função SUM() retorna a SOMA TOTAL de uma coluna numérica.

/* COUNT() Sintaxe:
SELECT COUNT(column_name)
FROM table_name
WHERE condiction;
*/

/* AVG() Sintaxe:
SELECT AVG(column_name)
FROM table_name
WHERE condiction;
*/

/* SUM() Sintaxe:
SELECT SUM(column_name)
FROM table_name
WHERE condiction;
*/

-- Exemplos:

SELECT COUNT(MUNICÍPIOS)
FROM AnexoI2020;

SELECT AVG(ValorPago_TLE)
FROM AnexoI2020;

SELECT SUM(ValorPago_TLE)
FROM AnexoI2020;