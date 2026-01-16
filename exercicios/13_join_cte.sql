-- 13. Qual o dia com maior engajamento de cada aluno 
-- que iniciou o curso no dia 01?

WITH alunos_dia01 AS (
    SELECT *
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
)

SELECT t1.idCliente,
       substr(t2.DtCriacao, 1, 10),
       count(*)

FROM alunos_dia01 AS t1

LEFT JOIN transacoes as t2
ON t1.idCliente = t2.idCliente
AND t2.DtCriacao >= '2025-08-25'
AND t2.DtCriacao < '2025-08-30'

GROUP BY 1, 2

ORDER BY 1, 2