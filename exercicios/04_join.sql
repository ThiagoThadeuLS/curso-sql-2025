-- Clientes mais antigos, tem mais frequência de transação?

SELECT t1.IdCliente,
       julianday('now') - julianday(t1.DtCriacao) AS IdadeBase,
       count(DISTINCT t2.IdTransacao)

FROM clientes AS t1

LEFT JOIN transacoes AS t2
ON t1.idCliente = t2.idCliente

GROUP BY 1, 2;
