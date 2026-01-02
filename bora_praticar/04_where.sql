-- Selecione produtos que contêm ‘churn’ no nome

SELECT *

FROM produtos

-- Churn_10pp
-- Churn_2pp
-- Churn_5pp

-- WHERE DescNomeProduto = 'Churn_10pp'
-- OR DescNomeProduto = 'Churn_2pp'
-- OR DescNomeProduto = 'Churn_5pp'

-- WHERE DescNomeProduto LIKE 'Churn%'
-- WHERE DescCateogriaProduto = 'churn_model'

WHERE DescNomeProduto IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp')
