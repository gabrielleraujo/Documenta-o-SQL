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