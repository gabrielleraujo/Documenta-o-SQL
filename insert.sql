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