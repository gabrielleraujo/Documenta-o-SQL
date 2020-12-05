-- Gabrielle Araújo.
-- Versão: 04/11/20 - Situação: Incompleto.
-- As palavras-chave SQL NÃO são sensíveis a casos: selecionar é o mesmo que SELECT.

/*
Alguns dos comandos SQL mais importantes:
    SELECT - extrai dados de um banco de dados
    UPDATE  - atualiza dados em um banco de dados
    DELETE - exclui dados de um banco de dados
    INSERT INTO - insere novos dados em um banco de dados
    CREATE DATABASE - cria um novo banco de dados
    ALTER DATABASE - modifica um banco de dados
    CREATE TABLE - cria uma nova tabela
    ALTER TABLE - modifica uma tabela
    DROP TABLE - exclui uma tabela
    CREATE INDEX - cria um índice (chave de pesquisa)
    DROP INDEX - exclui um índice
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

-- A seguinte instrução SQL seleciona todas as colunas da tabela "MUNICÍPIOS":
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

-- LIKE
-- A seguinte declaração SQL seleciona todos os registros em que o nome do município começa com "M", na tabela "AnexoI2020":
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

-- A seguinte instrução SQL seleciona todos os registros da tabela "AnexoI2020", e ordena a coluna MUNICÍPIOS em ordem crescente e a coluna COD em ordem decrescente:
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

-- Inserindo valores nas colunas MUNICÍPIO e COD:
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

================================================================================================================================================
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

/* A seguinte instrução SQL seleciona os três primeiros registros da tabela "AnexoI2020": */

-- (Para SQL Server/MS Access):
SELECT TOP 3 * FROM AnexoI2020;

-- (Para MySQL):
SELECT * FROM AnexoI2020
LIMIT 3;

-- (Para Oracle):
SELECT * FROM AnexoI2020
WHERE ROWNUM <= 3;


/* Selecionando % porcentagem: */

-- (Para SQL Server/MS Access):
SELECT TOP 50 PERCENT *      -- Selecionando os primeiros 50% dos registros da tabela AnexoI2020.
FROM AnexoI2020;

-- (Para SQL Server/MS Access):
SELECT TOP 9.2 PERCENT *    -- Selecionando os 9.2% dos registros da tabela AnexoI2020.
FROM AnexoI2020;


/* Adicionando cláusula WHERE com TOP, LIMIT ou ROWNUM: */

-- (Para SQL Server/MS Access):
SELECT TOP 3 * 
FROM AnexoI2020
WHERE MUNICÍPIOS='Niteroi';     -- seleciona os 3 primeiros registros dessa tabela em que a cidade é Niteroi.

-- (Para MySQL):
SELECT * 
FROM AnexoI2020
WHERE MUNICÍPIOS='Niteroi'      -- seleciona os 3 primeiros registros dessa tabela em que a cidade é Niteroi.
LIMIT 3;

-- (Para Oracle):
SELECT *
FROM AnexoI2020
WHERE MUNICÍPIOS='Niteroi' AND ROWNUM <= 3;     -- seleciona os 3 primeiros registros dessa tabela em que a cidade é Niteroi.

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

-- Exemplo buscando também junto consigo outras colunas na consulta:
SELECT MAX(Price) AS MenorPreco, ProductName, Price, Unit
FROM Products; 

================================================================================================================================================
/* Funções SQL COUNT(), AVG() e SUM() */

-- A função COUNT() retorna o NÚMERO DE LINHAS que coresonde a um critério especificado.ABS
-- A função AVG() retorna o VALOR MÉDIO de uma coluna numérica.
-- A função SUM() retorna a SOMA TOTAL de uma coluna numérica.

/* COUNT() Sintaxe:
SELECT COUNT(column_name)
FROM table_name
WHERE condiction;
*/

/* AVG() Sintaxe:
SELECT AVG(column_name)
FROM table_name
WHERE condiction;
*/

/* SUM() Sintaxe:
SELECT SUM(column_name)
FROM table_name
WHERE condiction;
*/

-- Exemplos:

SELECT COUNT(MUNICÍPIOS)
FROM AnexoI2020;

SELECT AVG(ValorPago_TLE)
FROM AnexoI2020;

SELECT SUM(ValorPago_TLE)
FROM AnexoI2020;

================================================================================================================================================
/* Caracteres Wildcard */

-- SQL Server:
/*
Símbulo	 Descrição	                                Exemplo

%	     Representa zero or mais caracteres	        bl% finds bl, black, blue, and blob

_	     Representa apenas um character	            h_t finds hot, hat, and hit

[]	     Representa qualquer caracter               h[oa]t finds hot and hat, but not hit
         que esteja escrito entre as []             

^	     Representa qualquer caracter               h[^oa]t finds hit, but not hot and hat
         que NÂO esteja escrito entre as []	        

-	     Representa o intervalo entre os caracteres	c[a-b]t finds cat and cbt
*/

-- Mais exeplos em "like-operators.sql".

================================================================================================================================================
/* SQL Operador LIKE */

/*
O operador LIKE é usado em uma cláusula WHERE para procurar um padrão especificado em uma coluna.
Existem alguns Wildcard (curingas) frequentemente usados em conjunto com o operador LIKE:
    (%) - O sinal percentual representa zero, um ou vários caracteres.
    (_) - O sublinhado representa um único caracter.
    ([]) - Representa qualquer carecter que esteja dentro das [].
    (^) - Negação.
    (-) - Range.
    Obs: O MS Access usa um asterisco (*) em vez do sinal percentual (%) e um ponto de interrogação (?) em vez do sublinhado (_).
*/


/* Sintaxe:
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;
*/

-- Alguns exemplos mostrando diferentes operadores LIKE com '%' e '_':

/*
Operador LIKE 	                Descrição
WHERE CustomerName LIKE 'a%'	Encontra qualquer valor que começa com "a".
WHERE CustomerName LIKE '%a'	Encontra qualquer valor que termina com "a".
WHERE CustomerName LIKE '%or%'	Encontra qualquer valor que tem "or" em qualquer posição.
WHERE CustomerName LIKE '_r%'	Encontra qualquer valor que tem "r" na segunda posição.
WHERE CustomerName LIKE 'a_%'	Encontra qualquer valor que começa com "a" e tem pelo menos 2 caracteres de tamanho.
WHERE CustomerName LIKE 'a__%'	Encontra qualquer valor que começa com "a" e tem pelo menos 3 caracteres de tamanho.
WHERE ContactName LIKE 'a%o'	Encontra qualquer valor que começa com "a" and termina com "o".
*/

-- Exemplos:

SELECT * FROM AnexoI2020
Where NomeRazao LIKE 'a%';   -- Começa com 'a'.

SELECT * FROM AnexoI2020
Where NomeRazao LIKE '%a';   -- Termina com 'a'.

SELECT * FROM AnexoI2020
Where NomeRazao LIKE '%çu%'; -- Contem o 'çu' em algum lugar da string.

SELECT * FROM AnexoI2020
Where NomeRazao LIKE '%çu';  -- Termina com 'çu'.

SELECT * FROM AnexoI2020
Where NomeRazao LIKE '_i%';  -- Contem o 'i' na segunda posição.

SELECT * FROM AnexoI2020
WHERE NomeRazao LIKE 'a__%'  -- Começa com 'a' e tem pelo menos 3 caracteres de tamanho.

SELECT * FROM AnexoI2020
WHERE MUNICÍPIOS LIKE '[bsp]%'; -- Começa com 'b', 's', ou 'p'.

SELECT * FROM Customers
WHERE MUNICÍPIOS LIKE '[a-c]%'; -- Começa com 'a', 'b', ou 'c'.

-- NOT:
SELECT * FROM AnexoI2020
WHERE MUNICÍPIOS NOT LIKE '[bsp]%'; -- Não começa com 'b', 's', ou 'p'.

SELECT * FROM AnexoI2020
WHERE MUNICÍPIOS LIKE '[!bsp]%'; -- Não começa com 'b', 's', ou 'p'.

SELECT * FROM AnexoI2020
WHERE NomeRazao LIKE 'a%o'   -- Começa com 'a' e termina com 'o'.

SELECT * FROM AnexoI2020
Where NomeRazao NOT LIKE 'a%';   -- Não começa com 'a'.

-- Em SQL Server
SELECT * FROM AnexoI2020
Where NomeRazao LIKE '^a%';  -- Não começa com 'a'.

-- Em MS Access
SELECT * FROM AnexoI2020
Where NomeRazao LIKE '!a%';  -- Não começa com 'a'.

================================================================================================================================================
/* O SQL IN Operador */

-- O operador IN permite especificar vários valores em uma cláusula WHERE.
-- IN é uma abreviação para múltiplas condições de OR.

/* Sintaxe:
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);
ou
SELECT column_name(s)
FROM table_name
WHERE column_name IN (SELECT STATEMENT);
*/

SELECT * FROM AnexoI2020
WHERE MUNICÍPIOS IN ('Nova Iguaçu', 'Niteroi', 'Marica'); -- Seleciona todos os registros em AnexoI2020, onde os municípios são 'Nova Iguaçu', 'Niteroi' ou 'Marica'.

-- A seguinte instrução SQL seleciona todos as empresas (NomeRazao) que estão na tabela AnexoI2020 e que também estão na tabela AnexoI2019:
SELECT * FROM AnexoI2020
WHERE NomeRazao IN (SELECT NomeRazao FROM AnexoI2019);

-- A seguinte instrução SQL seleciona todos os clientes que são dos mesmos países que os fornecedores:
SELECT * FROM Clientes
WHERE Pais IN (SELECT Pais FROM Fornecedores);

================================================================================================================================================
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

================================================================================================================================================
/* Aliases ou Codinomes */
-- Os pseudônimos SQL são usados para dar a uma tabela, ou a uma coluna de uma tabela, um nome temporário.
-- Pseudônimos são frequentemente usados para tornar os nomes das colunas mais legíveis.
-- Um pseudônimo só existe durante a consulta.

/* Sintaxe:
SELECT column_name AS alias_name
FROM table_name;
SELECT column_name(s)
FROM table_name AS alias_name;
*/

-- Requer aspas duplas ou [] se o nome do pseudônimo contiver espaços.
SELECT Data_incricao AS [Data de Inscricao], NomeRazao AS [Nome da Empresa]
FROM AnexoI2020;

-- Cria um Endereço a partir da concatenação de Endereco, Código Postal, município e país.
SELECT NomeRazao, Endereco + ', ' + CodPostal + ' ' + MUNICÍPIOS + ', ' + País AS Endereço
FROM AnexoI2020;

-- Caso esteja no MySQL a insrução acima seria:
SELECT NomeRazao, CONCAT(Endereco, ',',CodPostal, ',', MUNICÍPIOS, ',', País)
FROM AnexoI2020;


-- Usamos as tabelas "AnexoI2019" e "AnexoI2020", e damos a eles os pseudônimos da tabela de "2019" e "2020" respectivamente,
-- (Aqui usamos codinomes para tornar o SQL mais curto):

SELECT a2019.COD, a2019.Datta, a2020.NomeRazao
FROM AnexoI2020 AS a2020, AnexoI2019 AS a2019
WHERE a2020.NomeRazao='Pizza do Bairro' AND a2020.COD = a2019.COD;

/*
Codinomes podem ser úteis quando:
Há mais de uma tabela envolvida em uma consulta
Funções são usadas na consulta
Os nomes das colunas são grandes ou não são muito legíveis
Duas ou mais colunas são combinadas
*/

================================================================================================================================================
/* JOIN */
-- A cláusula JOIN é usada para combinar linhas de duas ou mais tabelas, com base em uma coluna relacionada entre elas.

/* Diferentes tipos de JOINs SQL */
-- (INNER) JOIN: retorna todos os registros que possuem correpondência de valores em AMBAS as tabelas.

-- LEFT (OUTER) JOIN: Retorna todos os registros da tabela da esquerda (tabela1), E os que possuem correspondência com a tabela da direita (tabela2).
   -- O resultado é NULO do lado direito, se não houver correspondência.

-- RIGHT (OUTER) JOIN: Retorna todos os registros da tabela da direita (tabela2), E os que possuem correspondência com a tabela da esquerda (tabela1).
   -- O resultado é NULO do lado esquerdo, se não houver correspondência.

-- FULL (OUTER) JOIN: Retorna todos os registros em que há uma correspondência entre a tabela da direita OU da esquerda.


/* INNER JOIN */
SELECT column_name(s)
FROM table1
INNER JOIN table2 
ON table1.column_name = table2.column_name;

-- A seguinte instrução SQL seleciona registros que tem valores correspondentes em ambas as tabelas.
-- A intenção aqui foi pegar o IPM de 2020 que estava em outra tabela, e trazer para uma onde já tinha o de 2019 para poder analisar.
SELECT a2019.MUNICÍPIOS, a2019.[IPM 2019], a2020.[IPM 2020]
FROM AnexoI2019 AS a2019
INNER JOIN AnexoI2020 AS a2020 ON a2019.COD = a2020.COD;

/* Juntando 3 tabelas */
-- Nesse caso estamos pegando o IPM dos anos de 2018, 2019 e 2020, que estão em tabelas diferentes.
SELECT a2019.MUNICÍPIOS, a2020.[IPM 2020], a2019.[IPM 2019], a2018.[IPM 2018]
FROM ((AnexoI2019 AS a2019
INNER JOIN AnexoI2020 AS a2020 ON a2019.COD = a2020.COD)
INNER JOIN AnexoI2018 AS a2018 ON a2019.COD = a2018.COD);
================================================================================================================================================
/* LEFT JOIN */
SELECT column_name(s)
FROM table1
INNER JOIN table2 
ON table1.column_name = table2.column_name;
-- Obs: Em alguns bancos de dados, o LEFT JOIN é chamado DE LEFT OUTER JOIN.

-- A seguinte instrução SQL selecionará todos os clientes e quaisquer pedidos que eles possam ter:
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

-- A seguinte instrução SQL selecionará todas as empresas e seus valores pagos de impostos:
SELECT Cadimob.NomeRazao, Faturamento.ValorPago
FROM Cadimob
LEFT JOIN Faturamento ON Cadimob.CNPJ = Faturamento.CNPJ
ORDER BY Cadimob.NomeRazao;

================================================================================================================================================
/* RIGHT JOIN */
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = tabela.column_name;
-- Obs: Em alguns bancos de dados, o RIGHT JOIN é chamado DE RIGHT OUTER JOIN.

-- A seguinte declaração SQL retornará todos os funcionários e quaisquer pedidos que eles possam ter feito:
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;

-- A seguinte instrução SQL selecionará todas as empresas e seus valores pagos de impostos:
SELECT Cadimob.NomeRazao, Faturamento.ValorPago
FROM Faturamento
LEFT JOIN Cadimob ON Cadimob.CNPJ = Faturamento.CNPJ
ORDER BY Cadimob.NomeRazao;

================================================================================================================================================
/* FULL OUTER JOIN */
-- FULL OUTER JOIN pode potencialmente retornar conjuntos de resultados muito grandes!
-- Dica: FULL OUTER JOIN e FULL JOIN são os mesmos.

SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;

-- A seguinte instrução SQL seleciona todos os clientes e todos os pedidos:
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

================================================================================================================================================
/* SQL SELF JOIN */

-- Um auto JOIN é uma adesão regular, mas a tabela é juntada a si mesma.

/* Sintaxe:
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;
*/

-- A seguinte declaração SQL corresponde as empresas que são do mesmo município:
SELECT A.NomeRazao AS Empresa1, B.NomeRazao AS Empresa2
FROM Cadimob A, Cadimob B 
WHERE A.CNPJ <> B.CNPJ
AND A.Municipio = B.Municipio
ORDER BY A.Municipio;

================================================================================================================================================
/* UNION or ALL UNION*/

-- O operador UNION é usado para combinar o conjunto de resultados de duas ou mais instruções SELECT.
-- O operador UNION seleciona apenas valores distintos por padrão. Para permitir valores duplicados, use UNION ALL.

-- Obs:
-- Cada declaração SELECT dentro da UNIÃO deve ter o mesmo número de colunas.
-- As colunas também devem ter tipos de dados semelhantes.
-- Colunas em cada instrução SELECT também devem estar na mesma ordem.

/* Sintaxe:
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;
*/

-- A seguinte instrução SQL retorna os bairros da cidade de Nova Iguaçu (apenas valores distintos) tanto da tabela "Cadimob" quanto da tabela "Faturamento":
SELECT FROM BAIRRO, MUNICÍPIOS FROM Cadimob
WHERE MUNICÍPIOS = 'Nova Iguaçu'
UNION
SELECT FROM BAIRRO, Municipios FROM Faturamento
WHERE Municipios = 'Nova Iguaçu'
ORDER BY BAIRRO

-- A seguinte instrução SQL retorna os bairros da cidade de Nova Iguaçu (valores duplicados também) tanto da tabela "Cadimob" quanto da tabela "Faturamento":
SELECT FROM BAIRRO, MUNICÍPIOS FROM Cadimob
WHERE MUNICÍPIOS = 'Nova Iguaçu'
UNION ALL
SELECT FROM BAIRRO, Municipios FROM Faturamento
WHERE Municipios = 'Nova Iguaçu'
ORDER BY BAIRRO

-- A seguinte declaração SQL lista todos os clientes e fornecedores.
-- Criamos também uma coluna temporária chamada "Type", que lista se a pessoa é um "Cliente" ou um "Fornecedor".
SELECT 'Clientes' AS Type, NomeCliente, Bairro, Municipios
FROM Clientes
UNION
SELECT 'Fornecedores', NomeFornecedor, Bairro, Municipios
FROM Fornecedores;

================================================================================================================================================
/* SQL Group By */

-- GROUP BY agrupa as linhas que possuem os mesmos valores em linhas sumárias, como "encontre o número de clientes em cada país".

-- A seguinte declaração lista o número de empresas em cada município:
SELECT COUNT(insc_muni_id), MUNICÍPIOS
FROM Cadmob
GROUP BY MUNICÍPIOS;

-- A seguinte declaração lista o número de empresas em cada município, classificadas de maior para menor:
SELECT COUNT(insc_muni_id), MUNICÍPIOS
FROM Cadmob
GROUP BY MUNICÍPIOS
ORDER BY COUNT(insc_muni_id) DESC

/* GROUP BY com JOIN */

-- A seguinte declaração SQL lista o número de pedidos enviados por cada entregador:
SELECT Entregadores.NomeEntregador, COUNT(Pedidos.PedidoID) AS NumeroDePedidos
FROM Pedidos
LEFT JOIN Entregadores ON Pedidos.EntregadorID = Entregadores.EntregadorID
GROUP BY NomeEntregador;

================================================================================================================================================
/* HAVING SQL */

-- A cláusula HAVING foi adicionada ao SQL porque a palavra-chave WHERE não poderia ser usada com funções agregadas.

/* Sintaxe:
SELECT  column_name(s)
FROM table_name
WHERE condiction
GROUP BY column_name(s)
HAVING condiction
ORDER BY column_name(s)
*/

-- A seguinte declaração SQL lista o número de empresas em cada município. Só incluem países com mais de 5 empresas:
SELECT COUNT(insc_muni_id), MUNICÍPIOS
FROM Cadmob
GROUP BY MUNICÍPIOS
HAVING COUNT(insc_muni_id) > 5;

-- A seguinte declaração SQL lista o número de empresas em cada município, classificados de alto a baixo (apenas incluem países com mais de 5 empresas):
SELECT COUNT(insc_muni_id), MUNICÍPIOS
FROM Cadmob
GROUP BY MUNICÍPIOS
HAVING COUNT(ins_muni_id) > 5
ORDER BY COUNT(insc_muni_id) DESC;


-- A seguinte declaração SQL lista os funcionários que registraram mais de 10 pedidos:
SELECT Funcionarios.UltimoNome, COUNT(Pedidos.Pedido_id) AS NumeroDePedidos
FROM (Pedidos
INNER JOIN Funcionarios ON Pedidos.Funcionario_id = Funcionarios.Funcionario_id)
GROUP BY UltimoNome
HAVING COUNT(Pedidos.pedido_id) > 10

-- A seguinte declaração SQL lista os funcionários "Araújo" ou "Souza" registraram mais de 25 pedidos:
SELECT Funcionarios.UltimoNome, COUNT(Pedidos.Pedido_id) AS NumeroDePedidos
FROM (Pedidos
INNER JOIN Funcionarios ON Pedidos.Funcionario_id = Funcionarios.Funcionario_id)
WHERE UltimoNome = 'Araújo' OR UltimoNome = 'Souza'
GROUP BY UltimoNome
HAVING COUNT(Pedidos.pedido_id) > 25


-- A seguinte declaração SQL lista as empresas que estão em mais de 5 municípios:
SELECT Empresas.NomeRazao, COUNT(Cadmob.MUNICÍPIOS) AS NumberOfMuni
FROM (Cadmob
INNER JOIN Empresas ON Cadmob.empresa_id = Empresas.empresa_id)
GROUP BY NomeRazao
HAVING COUNT(Cadmob.MUNICÍPIOS) > 5;

-- A seguinte declaração SQL lista se as empresas "'Light S.A." ou "Unimed Seguros Saude S.A." estão em mais de 5 municípios:
SELECT Empresas.NomeRazao, COUNT(Cadmob.MUNICÍPIOS) AS NumberOfMuni
FROM (Cadmob
INNER JOIN Empresas ON Cadmob.empresa_id = Empresas.empresa_id)
WHERE NomeRazao = 'Light S.A.' OR NomeRazao = 'Unimed Seguros Saude S.A.'
GROUP BY NomeRazao
HAVING COUNT(Cadmob.MUNICÍPIOS) > 5;

================================================================================================================================================
/* SQL EXISTS */
-- O operador EXISTS é usado para testar a existência de qualquer registro em um subquery.
-- Ele retorna verdadeiro se o subquery retornar um ou mais registros.

/* Sintaxe:
SELECT column_name(s)
FROM table_name
WHERE EXISTS
(SELECT column_name FROM table_name WHERE condiction);
*/

-- A seguinte declaração SQL retorna TRUE e lista os fornecedores com um preço de produto inferior a 20:
SELECT NomeDoFornecedor
FROM Fornecedores
WHERE EXISTS (
    SELECT NomeProduto 
    FROM Produtos 
    WHERE Produtos.Fornecedor_id = Fornecedores.Fornecedor_id 
    AND Preco < 20)

-- A seguinte declaração SQL retorna TRUE e lista os fornecedores com um preço de produto igual a 20:
SELECT NomeDoFornecedor
FROM Fornecedores
WHERE EXISTS (
    SELECT NomeProduto 
    FROM Produtos 
    WHERE Produtos.Fornecedor_id = Fornecedores.Fornecedor_id 
    AND Preco = 20)

================================================================================================================================================
/* SQL ANY */ 

-- Os operadores ANY e ALL são usados com uma cláusila WHERE ou HAVING.
-- O operador ANY retorna verdadeiro se algum dos valores subquery atender à condição.
-- O operador ALL retorna verdadeiro se todos os valores subquery atenderem à condição.

/* ANY sintaxe:
SELECT column_name(s)
FROM table_name
WHERE column_name operator ANY
(SELECT column_name FROM table_name WHERE condiction);
*/

/* ALL sintaxe:
SELECT column_name(s)
FROM table_name
WHERE column_name operator ALL
(Select column_name FROM table_name WHERE condiction)
*/

-- Obs: operator deve se um operador de comparação padrão (=, <>, !=, >, >=, <, ou <=).

-- A seguinte instrução SQL retorna TRUE e lista os nomes dos produtos se encontrar QUAISQUER registros na tabela DetalhesDoPedido que quantidade = 10:
SELECT NomeProduto
FROM Produtos
WHERE Produto_id = ANY (
    SELECT Produto_id 
    FROM DetalhesDoPedido 
    WHERE Quantidade = 10);

-- A seguinte instrução SQL retorna TRUE e lista os nomes dos produtos se encontrar QUAISQUER registros na tabela DetalhesDoPedido que quantidade é maior que 99:
SELECT NomeProduto
FROM Produtos
WHERE Produto_id = ANY (
    SELECT Produto_id 
    FROM DetalhesDoPedido 
    WHERE Quantidade > 99);

-- A seguinte instrução SQL retorna TRUE e lista os nomes dos produtos se TODOS os registros na tabela DetalhesDoPedido que tiver 
-- quantidade = 10 (portanto, este exemplo retornará FALSO, porque nem TODOS os registros na tabela DetalhesDoPedido tem quantidade = 10):
SELECT NomeProduto
FROM Produtos
WHERE Produto_id = ALL (
    SELECT Produto_id 
    FROM DetalhesDoPedido 
    WHERE Quantidade = 10);

================================================================================================================================================
/* SQL SELECT INTO */



================================================================================================================================================
/* SQL INSERT INTO SELECT */



================================================================================================================================================
/* SQL CASE */

-- O SQL a seguir passa por condições e retorna um valor quando a primeira condição é atendida:
-- Exemplo
SELECT Pedido_id, Quantidade,
CASE
    WHEN Quantidade > 30 THEN 'A quantidade é maior que 30.'
    WHEN Quantidade = 30 THEN 'A quantidade é igual a 30.'
    ELSE 'A quantidade menor que 30.'
END AS TextoQuantidade
FROM DetalhesDoPedido;

-- O SQL seguinte ordenará os empresas pelo Município. No entanto, se o Município é NULL, então ordena por País:
SELECT NomeRazao, Município, País
FROM Empresas
Order BY
(CASE
    WHEN Município IS NULL THEN País
    ELSE Município
END);

================================================================================================================================================
/* SQL NULL Functions */



================================================================================================================================================
/* SQL Stored Procedures for SQL Server */



================================================================================================================================================
