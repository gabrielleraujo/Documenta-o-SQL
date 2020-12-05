/* SQL Operador LIKE */

/*
O operador LIKE é usado em uma cláusula WHERE para procurar um padrão especificado em uma coluna.
Existem alguns Wildcard frequentemente usados em conjunto com o operador LIKE:
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