/* SQL UPDATE Statement */
-- A instrução UPDATE é usada para modificar os registros existentes em uma tabela.
-- Obs: Se você omitir a cláusula WHERE, todos os registros na tabela serão atualizados!

-- Sintaxe:
/*
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
*/

-- A seguinte declaração SQL atualiza o primeiro registro da tabela AnexoI2020 (COD = 1) com um novo NomeRazao e uma nova cidade:
UPDATE AnexoI2020
SET NomeRazao = 'Lojinha do Bairro', MUNICÍPIOS = 'Niteroi'
WHERE COD = 1;

/* UPDATE Multiple Records (Atualizar múltiplos Registros)*/
-- Se você omitir a cláusula WHERE, TODOS os registros serão atualizados.

-- A seguinte declaração SQL atualiza o COD_MUNI com o Código '57' todos os registros em que o MUNICÍPIO é 'NOVA IGUAÇU':
UPDATE AnexoI2020
SET COD_MUNI='57'
WHERE MUNICÍPIOS='NOVA IGUAÇU';