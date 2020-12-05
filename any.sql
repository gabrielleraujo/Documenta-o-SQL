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