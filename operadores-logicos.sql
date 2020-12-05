/* Operadores Lógicos */

/* Sintaxe:
- AND ou OR Sintaxe.
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;
- NOT Sintaxe.
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;
*/

-- Alguns Exemplos:
-- Obs: Quando o nome da coluna contem espaços, colocar o nome dela entre '[]'.

/*
Seleciona de AnexoI2020, os registros em que o municício é Nova Iguaçu, 
ou que o Cod é igual a 0,289:
*/
SELECT * FROM AnexoI2020
WHERE MUNICÍPIOS='Nova Iguaçu' 
OR [IPM 2020]='0,289';

-- Seleciona só os múnicípios Nova Iguaçu ou Belford Roxo:
SELECT * FROM AnexoI2020
WHERE MUNICÍPIO='Nova Iguaçu' 
OR MUNICÍPIO='Belfor Roxo';

-- Filtra todos os municípios, exceto Nova Iguaçu e Belford Roxo:
SELECT * FROM AnexoI2020
WHERE NOT MUNICÍPIOS='Nova Iguaçu' 
AND NOT MUNICÍPIOS='BelforD Roxo';