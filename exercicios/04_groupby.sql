-- Quantos produtos são de rpg?

/*
SELECT DescCategoriaProduto,
       count(*)

FROM produtos

GROUP BY DescCategoriaProduto
*/

SELECT DescCategoriaProduto,
       count(*) AS Total

FROM produtos

WHERE DescCategoriaProduto = 'rpg'

