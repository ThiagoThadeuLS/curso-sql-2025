-- 12. Dentre os clientes de janeiro/2025,
-- quantos assistiram o curso de SQL?

WITH clientes_janeiro AS (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) >= '2025-01-01'
    AND substr(DtCriacao, 1, 10) < '2025-02-01'
),

clientes_curso AS (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) >= '2025-08-25'
    AND substr(DtCriacao, 1, 10) < '2025-08-30'
),

tb_join AS (
    SELECT count(t1.IdCliente),
           count(t2.IdCliente)

    FROM clientes_janeiro AS t1

    LEFT JOIN clientes_curso AS t2
    ON t1.IdCliente = t2.IdCliente
)

SELECT *
FROM tb_join

