-- Qual o valor médio de pontos positivos por dia?

SELECT count(DISTINCT substr(DtCriacao, 1, 10)) AS qtdeDiasUnicos,
       sum(qtdePontos) AS totalPontos,
       sum(qtdePontos) / count(DISTINCT substr(DtCriacao, 1, 10))

FROM transacoes

WHERE QtdePontos > 0;


SELECT substr(DtCriacao, 1, 10) AS dtDia,
       sum(QtdePontos) AS totalPontos,
       avg(QtdePontos) AS avgQtdePontos,
       sum(QtdePontos)  / count(substr(DtCriacao, 1, 10))         

FROM transacoes

WHERE QtdePontos > 0

GROUP BY substr(DtCriacao, 1, 10)

ORDER BY avg(QtdePontos) ASC;




