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