-- Quantidade de usuários cadastrados (absoluto e acumulado) 
-- ao longo do tempo?

WITH tab_clientes_dia AS (
    SELECT substr(DtCriacao,1,10) AS dtDia,
           count(idCliente) AS qtdeCliente
        
    FROM clientes

    GROUP BY 1
    ORDER BY 1
),

tb_acum AS (
    SELECT dtDia,
           qtdeCliente,
           sum(qtdeCliente) OVER (ORDER BY dtDia) AS qtdClienteAcum
    FROM tab_clientes_dia
)

SELECT *
FROM tb_acum;

