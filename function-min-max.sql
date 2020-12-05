/* Funções SQL MIN() e MAX() */

-- A função MIN() retorna o menor valor da coluna selecionada.
-- A função MAX() retorna o maior valor da coluna selecionada.

/* Sintaxe:
SELECT MIN(column_name)
FROM table_name
WHERE condiction
*/

-- A seguinte declaração SQL encontra MENOR valor pago de Taxa TLE, na tabela AnexoI2020:
SELECT MIN(ValorPago_TLE) AS MenorPagamento
FROM AnexoI2020;

-- A seguinte declaração SQL encontra MAIOR valor pago de Taxa TLE, na tabela AnexoI2020:
SELECT MAX(ValorPago_TLE) AS MaiorPagamento
FROM AnexoI2020;

-- Exemplo buscando também junto consigo outras colunas na consulta:
SELECT MAX(Price) AS MenorPreco, ProductName, Price, Unit
FROM Products; 