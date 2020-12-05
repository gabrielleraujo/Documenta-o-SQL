/* JOIN */
-- A cláusula JOIN é usada para combinar linhas de duas ou mais tabelas, com base em uma coluna relacionada entre elas.

/* Diferentes tipos de JOINs SQL */
-- (INNER) JOIN: retorna todos os registros que possuem correpondência de valores em AMBAS as tabelas.

-- LEFT (OUTER) JOIN: Retorna todos os registros da tabela da esquerda (tabela1), E os que possuem correspondência com a tabela da direita (tabela2).
   -- O resultado é NULO do lado direito, se não houver correspondência.

-- RIGHT (OUTER) JOIN: Retorna todos os registros da tabela da direita (tabela2), E os que possuem correspondência com a tabela da esquerda (tabela1).
   -- O resultado é NULO do lado esquerdo, se não houver correspondência.

-- FULL (OUTER) JOIN: Retorna todos os registros em que há uma correspondência entre a tabela da direita OU da esquerda.


/* FULL OUTER JOIN */
-- FULL OUTER JOIN pode potencialmente retornar conjuntos de resultados muito grandes!
-- Dica: FULL OUTER JOIN e FULL JOIN são os mesmos.

SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;

-- A seguinte instrução SQL seleciona todos os clientes e todos os pedidos:
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;