SELECT *
FROM realtorio_diario;

UPDATE realtorio_diario
SET qtdeTransacoes = 100
WHERE dtDia >= '2025-08-25';

SELECT *
FROM realtorio_diario
WHERE substr(dtDia,1,10) = '2025-08-25';