/* Cláusula SQL TOP, LIMIT ou ROWNUM */

-- Obs: Nem todos os sistemas de banco de dados suportam a cláusula SELECT TOP. 
-- O MySQL suporta a cláusula LIMIT para selecionar um número limitado de registros, enquanto o Oracle usa ROWNUM.

/* SQL Server / MS Access Syntax: */
SELECT TOP numberr|percent column_name(s)
FROM table_name
WHERE condiction;

/* MySQL Syntax: */
SELECT column_name(s) 
FROM table_name
WHERE condiction
LIMIT numberr;

/* Oracle Syntax: */
SELECT column_name(s) 
FROM table_name
WHERE ROWNUM <= numberr

/* A seguinte instrução SQL seleciona os três primeiros registros da tabela "AnexoI2020": */

-- (Para SQL Server/MS Access):
SELECT TOP 3 * FROM AnexoI2020;

-- (Para MySQL):
SELECT * FROM AnexoI2020
LIMIT 3;

-- (Para Oracle):
SELECT * FROM AnexoI2020
WHERE ROWNUM <= 3;


/* Selecionando % porcentagem: */

-- (Para SQL Server/MS Access):
SELECT TOP 50 PERCENT *      -- Selecionando os primeiros 50% dos registros da tabela AnexoI2020.
FROM AnexoI2020;

-- (Para SQL Server/MS Access):
SELECT TOP 9.2 PERCENT *    -- Selecionando os 9.2% dos registros da tabela AnexoI2020.
FROM AnexoI2020;


/* Adicionando cláusula WHERE com TOP, LIMIT ou ROWNUM: */

-- (Para SQL Server/MS Access):
SELECT TOP 3 * 
FROM AnexoI2020
WHERE MUNICÍPIOS='Niteroi';     -- seleciona os 3 primeiros registros dessa tabela em que a cidade é Niteroi.

-- (Para MySQL):
SELECT * 
FROM AnexoI2020
WHERE MUNICÍPIOS='Niteroi'      -- seleciona os 3 primeiros registros dessa tabela em que a cidade é Niteroi.
LIMIT 3;

-- (Para Oracle):
SELECT *
FROM AnexoI2020
WHERE MUNICÍPIOS='Niteroi' AND ROWNUM <= 3;     -- seleciona os 3 primeiros registros dessa tabela em que a cidade é Niteroi.