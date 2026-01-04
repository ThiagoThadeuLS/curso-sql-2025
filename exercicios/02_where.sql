-- Lista de pedidos realizados no fim de semana;

SELECT IdTransacao,
       DtCriacao,
       strftime('%w', substr(DtCriacao, 1, 10)) AS DiaSemana

FROM transacoes

WHERE strftime('%w', substr(DtCriacao, 1, 10)) IN ('0', '6')

