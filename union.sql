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