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