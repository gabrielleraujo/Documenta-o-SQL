/* DISTINCT */
-- A instrução SELECT DISTINCT é usada para retornar apenas valores distintos (diferentes).

SELECT DISTINCT COD, MUNICÍPIOS
FROM AnexoI2020;

-- A seguinte instrução SQL seleciona TODOS (incluindo as duplicatas) valores da coluna "MUNICÍPIOS" na tabela "AnexoI2020":
SELECT MUNICÍPIOS FROM AnexoI2020;

-- A seguinte instrução faz a contagem de valores distintos na coluna MUNICÍPIOS:
SELECT COUNT(DISTINCT MUNICÍPIOS) FROM AnexoI2020;