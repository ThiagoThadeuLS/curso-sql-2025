-- 10. Como foi a curva de Churn do Curso de SQL?

-- SELECT substr(DtCriacao, 1, 10),
--        count(DISTINCT idCliente)
-- FROM transacoes
-- WHERE substr(DtCriacao, 1 , 10) >= '2025-08-25'
-- AND substr(DtCriacao, 1, 10) < '2025-08-30'

-- GROUP BY 1;


WITH tb_clientes_d1 AS (
    SELECT DISTINCT IdCliente

    FROM transacoes

    WHERE substr(DtCriacao,1,10) = '2025-08-25'
) 


SELECT 
       substr(t2.DtCriacao,1,10) AS DtDia,
       count(DISTINCT t1.idCliente),
       1. * count(DISTINCT t1.idCliente) / (SELECT count(*) FROM tb_clientes_d1),
       1 - 1. * count(DISTINCT t1.idCliente) / (SELECT count(*) FROM tb_clientes_d1)


FROM tb_clientes_d1 AS t1

LEFT JOIN transacoes AS t2
ON t1.IdCliente = t2.IdCliente

WHERE substr(t2.DtCriacao, 1 , 10) >= '2025-08-25'
AND substr(t2.DtCriacao, 1, 10) < '2025-08-30'

GROUP BY 1



