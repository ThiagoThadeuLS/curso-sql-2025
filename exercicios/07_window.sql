-- Qual o dia da semana mais ativo de cada usuário?

WITH  tb_cliente_semana AS (
    SELECT IdCliente,
           count(IdTransacao) AS qtdeTransacoes,
           strftime('%w', substr(DtCriacao,1,10)) AS diaSemana

    FROM transacoes

    GROUP BY IdCliente, diaSemana
),

tb_rn AS (
    SELECT *,
        CASE
            WHEN diaSemana = '0' THEN 'DOMINGO'
            WHEN diaSemana = '1' THEN 'SEGUNDA FEIRA'
            WHEN diaSemana = '2' THEN 'TERCA FEIRA'
            WHEN diaSemana = '3' THEN 'QUARTA FEIRA'
            WHEN diaSemana = '4' THEN 'QUINTA FEIRA'
            WHEN diaSemana = '5' THEN 'SEXTA FEIRA'
            WHEN diaSemana = '6' THEN 'SABADO'
        END AS dia,

        row_number() OVER (PARTITION BY IdCliente ORDER BY qtdeTransacoes DESC) AS rn
    FROM tb_cliente_semana
)

SELECT *
FROM tb_rn
WHERE rn = 1;

