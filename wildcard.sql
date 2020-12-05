/* Caracteres Wildcard */

-- SQL Server:
/*
Símbulo	 Descrição	                                Exemplo

%	     Representa zero or mais caracteres	        bl% finds bl, black, blue, and blob

_	     Representa apenas um character	            h_t finds hot, hat, and hit

[]	     Representa qualquer caracter               h[oa]t finds hot and hat, but not hit
         que esteja escrito entre as []             

^	     Representa qualquer caracter               h[^oa]t finds hit, but not hot and hat
         que NÂO esteja escrito entre as []	        

-	     Representa o intervalo entre os caracteres	c[a-b]t finds cat and cbt
*/

-- Mais exeplos em "like.sql".