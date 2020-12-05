/* SQL DELETE Statement */
-- A instrução DELETE é usada para excluir registros existentes em uma tabela.
-- A cláusula WHERE especifica quais registros devem ser excluídos. 
-- Se você omitir a cláusula WHERE, todos os registros na tabela serão excluídos!

/* Sintaxe:
DELETE FROM table_name 
WHERE condition;
*/

-- A seguinte declaração SQL exclui o registro cujo NomeRazao corresponde a 'Lojinha do Bairro' na tabela AnexoI2020:
DELETE FROM AnexoI2020 
WHERE NomeRazao='Lojinha do Bairro';

-- Deletando todos os registros de uma tabela
-- Isso mantem a estrutura da tabela, atributos e índices estarão intactos.
DELETE FROM table_name;