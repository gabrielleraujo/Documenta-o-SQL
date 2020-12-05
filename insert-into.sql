/* INSERT INTO Syntax */
-- Serve para inserir novos registros na nossa tabela.

/* Sintaxe 
-- 1ª forma de usar: Expecificando as colunas e valores que queremos inserir
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
-- 2ª forma de usar: Se quiser adicionar valores em todas as colunas da tabela, não precisa especificar todas as colunas, 
-- mas tenha certeza de que está adicionando os valores na mesma ordem que as colunas aparecem na tabela.
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
*/

-- Inserindo valores nas colunas MUNICÍPIO e COD:
INSERT INTO AnexoI2020 (MUNICÍPIOS, COD)
VALUES ('Ranxo Fundo', '777');