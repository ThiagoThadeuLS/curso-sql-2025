WITH tab_transacoes_dia AS (
    SELECT 
        substr(DtCriacao,1,10) AS dtDia,
        count(IdTransacao) AS qtdeTransacoes
    FROM transacoes

    GROUP BY 1
    ORDER BY 1
),

tb_acum AS (
    SELECT *,
           sum(qtdeTransacoes) OVER (ORDER BY dtDia) AS acum
    FROM tab_transacoes_dia
)

INSERT INTO realtorio_diario

SELECT *
FROM tb_acum;

SELECT * FROM realtorio_diario;



