DELETE FROM realtorio_diario
WHERE strftime('%w', substr(dtDia,1,10)) = '0';

SELECT * FROM realtorio_diario;