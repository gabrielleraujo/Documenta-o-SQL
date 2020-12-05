-- fonte: https://www.w3schools.com/sql/sql_orderby.asp

-- As palavras-chave SQL NÃO são sensíveis a casos: selecionar é o mesmo que SELECT.

/*
Alguns dos comandos SQL mais importantes:
    SELECT - extrai dados de um banco de dados
    ATUALIZAÇÃO - atualiza dados em um banco de dados
    DELETE - exclui dados de um banco de dados
    INSERIR - insere novos dados em um banco de dados
    CRIAR BANCO DE DADOS - cria um novo banco de dados
    ALTER DATABASE - modifica um banco de dados
    CRIAR TABELA - cria uma nova tabela
    TABELA ALTER - modifica uma tabela
    TABELA DROP - exclui uma tabela
    CRIAR ÍNDICE - cria um índice (chave de pesquisa)
    ÍNDICE DE QUEDA - exclui um índice

*/
================================================================================================================================================
/* SELECT */ 
-- A instrução SELECT é usada para selecionar dados de um banco de dados.
-- Os dados devolvidos são armazenados em uma tabela de resultados, chamada de result-set.

-- A seguinte instrução SQL seleciona as colunas "COD" e "MUNICÍPIOS" na tabela "AnexoI2020":
SELECT COD, MUNICÍPIOS
FROM AnexoI2020;

-- Se você quiser selecionar todos os campos disponíveis na talela, use a seguinte sintaxe:
SELECT * FROM AnexoI2020;

-- A seguinte instrução SQL seleciona todas as colunas da tabela "MUNICÍPIOS".
SELECT * FROM MUNICÍPIOS

================================================================================================================================================
/* DISTINCT */
-- A instrução SELECT DISTINCT é usada para retornar apenas valores distintos (diferentes).
SELECT DISTINCT COD, MUNICÍPIOS
FROM AnexoI2020;

-- A seguinte instrução SQL seleciona TODOS (incluindo as duplicatas) valores da coluna "MUNICÍPIOS" na tabela "AnexoI2020":
SELECT MUNICÍPIOS FROM AnexoI2020;

-- A seguinte instrução faz a contagem de valores distintos na coluna MUNICÍPIOS:
SELECT COUNT(DISTINCT MUNICÍPIOS) FROM AnexoI2020;

================================================================================================================================================
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

================================================================================================================================================
/* Operadores na Cláusula WHERE que podem ser utilizados. */

/*
Operator	Descrição
=	        Igual	
>	        Maior que	
<	        Menor que	
>=	        Maior ou igual	
<=	        Menor ou igual	
<>	        Diferente. Obs: Em algumas versões do SQL esse Operador pode ser escrito como !=	
BETWEEN	    Entre um certo intervalo.
LIKE	    Procura um padrão.	
IN	        Para especificar vários valores possíveis para uma coluna.
*/

-- Alguns exemplos:

-- A seguinte declaração SQL seleciona todos os registros em que o nome do município começa com "M", na tabela "AnexoI2020":
-- LIKE
SELECT * FROM AnexoI2020
WHERE MUNICÍPIOS LIKE 'M%';
-- BETWEEN
SELECT * FROM AnexoI2020
WHERE COD BETWEEN 50 AND 60;
-- IN
SELECT * FROM AnexoI2020
WHERE MUNICÍPIO IN ('Nova Iguaçu','Maricá');
-- <>
SELECT * FROM AnexoI2020
WHERE COD <> 18;

================================================================================================================================================
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
ou que o Cod é igual a 0,289
*/
SELECT * FROM AnexoI2020
WHERE MUNICÍPIOS='Nova Iguaçu' 
OR [IPM 2020]='0,289';

-- Seleciona só os múnicípios Nova Iguaçu ou Belford Roxo.
SELECT * FROM AnexoI2020
WHERE MUNICÍPIO='Nova Iguaçu' 
OR MUNICÍPIO='Belfor Roxo';

-- Filtra todos os municípios, exceto Nova Iguaçu e Belford Roxo.
SELECT * FROM AnexoI2020
WHERE NOT MUNICÍPIOS='Nova Iguaçu' 
AND NOT MUNICÍPIOS='BelforD Roxo';

================================================================================================================================================
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

-- A seguinte instrução SQL seleciona todos os registros da tabela "AnexoI2020", e ordena a coluna MUNICÍPIOS em ordem crescente e a coluna COD em ordem decrescente.
SELECT * FROM AnexoI2020
ORDER BY MUNICÍPIOS ASC, COD DESC;

================================================================================================================================================
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

-- Inserindo valores nas colunas MUNICÍPIO e COD.
INSERT INTO AnexoI2020 (MUNICÍPIOS, COD)
VALUES ('Ranxo Fundo', '777');

================================================================================================================================================
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

================================================================================================================================================
/* SQL UPDATE Statement (Atualizar Registro)*/
-- A instrução UPDATE é usada para modificar os registros existentes em uma tabela.
-- Obs: Se você omitir a cláusula WHERE, todos os registros na tabela serão atualizados!

-- Sintaxe:
/*
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
*/

-- A seguinte declaração SQL atualiza o primeiro registro da tabela AnexoI2020 (COD = 1) com um novo NomeRazao e uma nova cidade.
UPDATE AnexoI2020
SET NomeRazao = 'Lojinha do Bairro', MUNICÍPIOS = 'Niteroi'
WHERE COD = 1;

/* UPDATE Multiple Records (Atualizar múltiplos Registros)*/
-- Se você omitir a cláusula WHERE, TODOS os registros serão atualizados!.

-- A seguinte declaração SQL atualiza o COD_MUNI com o Código '57' todos os registros em que o UNICÍpio é 'NOVA IGUAÇU'.
UPDATE AnexoI2020
SET COD_MUNI='57'
WHERE MUNICÍPIOS='NOVA IGUAÇU';

================================================================================================================================================
/* SQL DELETE Statement */
-- A instrução DELETE é usada para excluir registros existentes em uma tabela.
-- A cláusula WHERE especifica quais registros devem ser excluídos. 
-- Se você omitir a cláusula WHERE, todos os registros na tabela serão excluídos!

/* Sintaxe:
DELETE FROM table_name 
WHERE condition;
*/

-- A seguinte declaração SQL exclui o registro cujo NomeRazao corresponde a 'Lojinha do Bairro' na tabela AnexoI2020.
DELETE FROM AnexoI2020 
WHERE NomeRazao='Lojinha do Bairro';

-- Deletando todos os registros de uma tabela
-- Isso mantem a estrutura da tabela, atributos e índices estarão intactos.
DELETE FROM table_name;

================================================================================================================================================
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

/* A seguinte instrução SQL seleciona os três primeiros registros da tabela "AnexoI2020". */

-- (Para SQL Server/MS Access):
SELECT TOP 3 * FROM AnexoI2020;

-- (Para MySQL):
SELECT * FROM AnexoI2020
LIMIT 3;

-- (Para Oracle):
SELECT * FROM AnexoI2020
WHERE ROWNUM <= 3;


/* Selecionando % porcentagem */

-- (Para SQL Server/MS Access):
SELECT TOP 50 PERCENT *      -- Selecionando os primeiros 50% dos registros da tabela AnexoI2020.
FROM AnexoI2020;

-- (Para SQL Server/MS Access):
SELECT TOP 9.2 PERCENT *    -- Selecionando os 9.2% dos registros da tabela AnexoI2020.
FROM AnexoI2020;


/* Adicionando cláusula WHERE com TOP, LIMIT ou ROWNUM. */

-- (Para SQL Server/MS Access):
SELECT TOP 3 * 
FROM AnexoI2020
WHERE MUNICÍPIOS='Niteroi';     -- seleciona os 3 primeiros registros dessa tabela em que a cidade é Niteroi.

-- (Para MySQL)
SELECT * 
FROM AnexoI2020
WHERE MUNICÍPIOS='Niteroi'      -- seleciona os 3 primeiros registros dessa tabela em que a cidade é Niteroi.
LIMIT 3;

-- (Para Oracle):
SELECT *
FROM AnexoI2020
WHERE MUNICÍPIOS='Niteroi' AND ROWNUM <= 3;     -- -- seleciona os 3 primeiros registros dessa tabela em que a cidade é Niteroi.

================================================================================================================================================
/* Funções SQL MIN() e MAX() */

-- A função MIN() retorna o menor valor da coluna selecionada.
-- A função MAX() retorna o maior valor da coluna selecionada.

/* Sintaxe:
SELECT MIN(column_name)
FROM table_name
WHERE condiction
*/

-- A seguinte declaração SQL encontra MENOR valor pago de Taxa TLE, na tabela AnexoI2020:
SELECT MIN(ValorPago_TLE) AS MenorPagamento
FROM AnexoI2020;

-- A seguinte declaração SQL encontra MAIOR valor pago de Taxa TLE, na tabela AnexoI2020:
SELECT MAX(ValorPago_TLE) AS MaiorPagamento
FROM AnexoI2020;

-- Exemplo buscando também junto consigo outras colunas na consulta.
SELECT MAX(Price) AS MenorPreco, ProductName, Price, Unit
FROM Products; 

================================================================================================================================================
/* Funções SQL COUNT(), AVG() e SUM() */




































