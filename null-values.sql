/* Valores SQL NULL */
-- Use sempre o IS NULL para procurar valores NULL.

/* 
-- Sintaxe NULL
SELECT column_names
FROM table_name
WHERE column_name IS NULL;
-- Sintaxe NOT NULL
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;
*/

-- O SQL a seguir lista todos os registros, coluna MUNICÌPIOS e COD com um valor NULO no campo "MUBICÌPIOS":
SELECT MUNICÍPIOS, COD
FROM AnexoI2020
WHERE MUNICÍPIOS IS NULL;