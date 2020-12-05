/* JOIN */
-- A cláusula JOIN é usada para combinar linhas de duas ou mais tabelas, com base em uma coluna relacionada entre elas.

/* Diferentes tipos de JOINs SQL */
-- (INNER) JOIN: retorna todos os registros que possuem correpondência de valores em AMBAS as tabelas.

-- LEFT (OUTER) JOIN: Retorna todos os registros da tabela da esquerda (tabela1), E os que possuem correspondência com a tabela da direita (tabela2).
   -- O resultado é NULO do lado direito, se não houver correspondência.

-- RIGHT (OUTER) JOIN: Retorna todos os registros da tabela da direita (tabela2), E os que possuem correspondência com a tabela da esquerda (tabela1).
   -- O resultado é NULO do lado esquerdo, se não houver correspondência.

-- FULL (OUTER) JOIN: Retorna todos os registros em que há uma correspondência entre a tabela da direita OU da esquerda.


/* RIGHT JOIN */
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = tabela.column_name;
-- Obs: Em alguns bancos de dados, o RIGHT JOIN é chamado DE RIGHT OUTER JOIN.

-- A seguinte declaração SQL retornará todos os funcionários e quaisquer pedidos que eles possam ter feito:
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;

-- A seguinte instrução SQL selecionará todas as empresas e seus valores pagos de impostos:
SELECT Cadimob.NomeRazao, Faturamento.ValorPago
FROM Faturamento
LEFT JOIN Cadimob ON Cadimob.CNPJ = Faturamento.CNPJ
ORDER BY Cadimob.NomeRazao;