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