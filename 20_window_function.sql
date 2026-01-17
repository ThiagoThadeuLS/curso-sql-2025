
WITH cliente_dia AS (
    SELECT DISTINCT
        IdCliente,
        substr(DtCriacao,1,10) AS dtDia
    FROM transacoes

    WHERE substr(DtCriacao,1,4) = '2025'

    ORDER BY 1, 2
),

tb_lag AS (
    SELECT *,
           lag(dtDia) OVER (PARTITION BY IdCliente ORDER BY dtDia) AS lagDia

    FROM cliente_dia
),

tb_diff_dt AS (
    SELECT *,
           julianday(dtDia) - julianday(lagDia) AS DtDiff
    FROM tb_lag
),

avg_cliente AS (
    SELECT idCliente,
           avg(DtDiff) AS avgDia

    FROM tb_diff_dt

    GROUP BY 1
)

SELECT avg(avgDia)
FROM avg_cliente