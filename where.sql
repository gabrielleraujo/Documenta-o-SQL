/* WHERE */
-- A cláusula WHERE é usada para extrair apenas os registros que preenchem uma condição especificada.

/* Sintaxe
SELECT column1, column2, ...
FROM table_name
WHERE condition;
*/

-- A seguinte declaração SQL seleciona todos os registros do município "NOVA IGUAÇU", na tabela "AnexoI2020":
SELECT * FROM AnexoI2020
WHERE MUNICÍPIOS = 'NOVA IGUAÇU';

-- Os campos numéricos não devem ser incluídos entre aspas, ex:
SELECT * FROM AnexoI2020
WHERE COD = 35;