-- Qual o produto com mais pontos transacionados?

SELECT IdProduto,
       sum(vlProduto * QtdeProduto) AS totalPontos,
       sum(QtdeProduto) AS qtdeVendas

FROM transacao_produto

GROUP BY IdProduto

ORDER BY sum(vlProduto) DESC

LIMIT 1
