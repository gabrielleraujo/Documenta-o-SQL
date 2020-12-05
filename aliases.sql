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