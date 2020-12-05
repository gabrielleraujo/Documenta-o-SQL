/* Operador BETWEEN */

-- O operador BETWEEN seleciona valores dentro de uma determinada faixa. Os valores podem ser números, texto ou datas.
-- O BETWEEN é inclusivo: ou seja, os valores de início e final estão incluídos.

/* Sintase:
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
*/

-- A seguinte instrução SQL seleciona todos os registros de AnexoI2020 com o ValorPago_TLE entre 1 e 20: 
SELECT * FROM AnexoI2020
WHERE ValorPago_TLE BETWEEN 1 AND 20;

-- A seguinte instrução SQL seleciona todos os registros de AnexoI2020 com o ValorPago_TLE entre 1 e 20. 
-- E além disso, não apresentam registros de AnexoI2020 com uma Categoria de 1,2 ou 3.
SELECT * FROM AnexoI2020
WHERE ValorPago_TLE BETWEEN 1 AND 20
AND Categoria NOT IN (1,2,3);

-- A seguinte instrução SQL seleciona todos os registros de AnexoI2020 em que o nome do município está entre 'Maricá' e 'Nova Iguaçu':
SELECT * FROM AnexoI2020
WHERE MUNICÍPIOS BETWEEN "Maricá" AND "Nova Iguaçu"
ORDER BY MUNICÍPIOS;

-- A seguinte instrução SQL seleciona todos os registros de AnexoI2020 em que o nome do município NÂO está entre 'Maricá' e 'Nova Iguaçu':
SELECT * FROM AnexoI2020
WHERE MUNICÍPIOS NOT BETWEEN "Maricá" AND "Nova Iguaçu"
ORDER BY MUNICÍPIOS;

-- A seguinte instrução SQL seleciona todos os registros em que o valor da coluna Data_incricao está ENTRE '01-Julho-1996' e '31-Julho-1996':
SELECT * FROM AnexoI2020
WHERE Data_incricao BETWEEN #01/07/2018# AND #31/07/2020#;
-- ou
SELECT * FROM AnexoI2020
WHERE Data_incricao BETWEEN '1996-07-01' AND '1996-07-31';