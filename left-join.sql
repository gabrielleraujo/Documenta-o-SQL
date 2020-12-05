/* JOIN */
-- A cláusula JOIN é usada para combinar linhas de duas ou mais tabelas, com base em uma coluna relacionada entre elas.

/* Diferentes tipos de JOINs SQL */
-- (INNER) JOIN: retorna todos os registros que possuem correpondência de valores em AMBAS as tabelas.

-- LEFT (OUTER) JOIN: Retorna todos os registros da tabela da esquerda (tabela1), E os que possuem correspondência com a tabela da direita (tabela2).
   -- O resultado é NULO do lado direito, se não houver correspondência.

-- RIGHT (OUTER) JOIN: Retorna todos os registros da tabela da direita (tabela2), E os que possuem correspondência com a tabela da esquerda (tabela1).
   -- O resultado é NULO do lado esquerdo, se não houver correspondência.

-- FULL (OUTER) JOIN: Retorna todos os registros em que há uma correspondência entre a tabela da direita OU da esquerda.


/* LEFT JOIN */
SELECT column_name(s)
FROM table1
INNER JOIN table2 
ON table1.column_name = table2.column_name;
-- Obs: Em alguns bancos de dados, o LEFT JOIN é chamado DE LEFT OUTER JOIN.

-- A seguinte instrução SQL selecionará todos os clientes e quaisquer pedidos que eles possam ter:
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

-- A seguinte instrução SQL selecionará todas as empresas e seus valores pagos de impostos:
SELECT Cadimob.NomeRazao, Faturamento.ValorPago
FROM Cadimob
LEFT JOIN Faturamento ON Cadimob.CNPJ = Faturamento.CNPJ
ORDER BY Cadimob.NomeRazao;