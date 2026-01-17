
WITH tb_sumario_dias AS (
    SELECT substr(DtCriacao,1,10) AS dtDia,
           count(IdTransacao) AS qtdeTransacao

    FROM transacoes

    WHERE substr(DtCriacao,1,10) >= '2025-08-25'
    AND substr(DtCriacao,1,10) < '2025-08-30' 

    GROUP BY 1
)

SELECT *,
       sum(qtdeTransacao) OVER (ORDER BY dtDia) AS qtdeTransacaoAcum
FROM tb_sumario_dias