-- Qual dia da semana quem mais pedidos em 2025?

SELECT 
       strftime('%w', DtCriacao) AS diaSemana,
       count(*) qtdeTransacoes

FROM transacoes

WHERE substr(DtCriacao, 1, 4) = '2025'

GROUP BY 1
ORDER BY 2 DESC 

LIMIT 1;