/* O SQL IN Operador */

-- O operador IN permite especificar vários valores em uma cláusula WHERE.
-- IN é uma abreviação para múltiplas condições de OR.

/* Sintaxe:
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);
ou
SELECT column_name(s)
FROM table_name
WHERE column_name IN (SELECT STATEMENT);
*/

SELECT * FROM AnexoI2020
WHERE MUNICÍPIOS IN ('Nova Iguaçu', 'Niteroi', 'Marica'); -- Seleciona todos os registros em AnexoI2020, onde os municípios são 'Nova Iguaçu', 'Niteroi' ou 'Marica'.

-- A seguinte instrução SQL seleciona todos as empresas (NomeRazao) que estão na tabela AnexoI2020 e que também estão na tabela AnexoI2019:
SELECT * FROM AnexoI2020
WHERE NomeRazao IN (SELECT NomeRazao FROM AnexoI2019);

-- A seguinte instrução SQL seleciona todos os clientes que são dos mesmos países que os fornecedores:
SELECT * FROM Clientes
WHERE Pais IN (SELECT Pais FROM Fornecedores);