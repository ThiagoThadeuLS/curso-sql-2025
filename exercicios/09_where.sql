-- Listar todas as transações adicionando uma coluna nova sinalizando 
-- “alto”, “médio” e “baixo” para o valor dos pontos [<10 ; <500; >=500]

SELECT *,
       CASE
            WHEN vlProduto < 10 THEN 'Baixo'
            WHEN vlProduto < 500 THEN 'Medio'
            ELSE 'Alto'
       END AS 'ValorProduto'

FROM transacao_produto

ORDER BY vlProduto


