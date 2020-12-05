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