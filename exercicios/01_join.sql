-- Quais clientes mais perderam pontos por Lover?

SELECT t2.idCliente,
       sum(vlProduto * QtdeProduto),
       t3.DescCategoriaProduto

FROM transacao_produto AS t1

LEFT JOIN transacoes AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t1.IdProduto = t3.IdProduto

WHERE vlProduto < 0
AND DescCategoriaProduto = 'lovers'

GROUP BY t2.IdCliente
ORDER BY 2 ASC

LIMIT 5;

