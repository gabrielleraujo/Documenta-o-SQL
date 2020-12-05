/* SQL ORDER BY Keyword */
-- É usada para classificar o resultado em ordem ascendente ou decrescente.
-- por padrão ela classifica por ordem ascendente.

/* Sintaxe 
SELECT column1, column2, ...
FROM table_name
ORDER By column1, column2, ... ASC|DESC;
*/

-- A seguinte instrução SQL seleciona todos os registros da tabela "AnexoI2020", ordenados em ordem ASCENDENTE pela coluna "MUNICÍPIOS":
SELECT * FROM AnexoI2020
ORDER BY MUNICÍPIOS;

-- A seguinte instrução SQL seleciona todos os registros da tabela "AnexoI2020", ordenados em ordem DECRESCENTE pela coluna "MUNICÍPIOS":
SELECT * FROM AnexoI2020
ORDER BY Country DESC;

-- A seguinte instrução SQL seleciona todos os registros da tabela "AnexoI2020", e classifica pela coluna MUNICÍPIOS e pela coluna COD. 
-- Isso significa que ele ordena por MUNICÌPOS, mas se algumas linhas tE^m o mesmo País, ele as ordena pelo COD.
SELECT * FROM AnexoI2020
ORDER BY MUNICÍPIO, COD;

-- A seguinte instrução SQL seleciona todos os registros da tabela "AnexoI2020", e ordena a coluna MUNICÍPIOS em ordem crescente e a coluna COD em ordem decrescente:
SELECT * FROM AnexoI2020
ORDER BY MUNICÍPIOS ASC, COD DESC;