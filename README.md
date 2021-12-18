# Machine Learning Nao Supervisionado em Cluster
Modelos de Cluster em R e Python

## Análise de Cluster

* Procedimento hierárquico – Dendrograma;
* Procedimento Não hierárquico – K-means;
* Procedimento Não hierárquico – TwoStep.

## Market Basket

As regras de associação são objetos combinam itens que ocorrem com determinada frequência em uma base de dados. Uma de suas típicas aplicação é a análise de transações de compra(market basket analysis). A partir de uma base de dados que armazena produtos comprados por clientes de um supermercado, é possível gerar regras de associação do tipo (fralda) (cerveja). Essa regra pode ser utilizada para indicar que os clientes que compram fraldas também compra cervejas.
Esse algoritimo têm como premissa báscia encontrar elementos que implicam na presença de outros elementos em uma mesma transação, ou seja, eles tentam encontrar um relacionamento ou padrões frequentes entre conjunto de dados.
A geração de REGRAS DE ASSOCIAÇÃO (RA) é uma tarefa descritiva (Aprendizado Não Supervisionado). Outros termos: Association Rule (AR), Association Rule Mining (ARM) e Market Basket Analysis.

* Instância: é o número de registros nos dados que possuem o(s) antecedente(s);
* Suporte: é a porcentagem de reigstros que possuem o(s) antecedente(s);
* Confiança: é a porcentagem de todos os registros dentre aqueles com antecedentes que também possuem os subsequentes;
* Suporte de regra: é a porcentagem de registros que contém a regra completa (ou seja, contém tantos os antecedentes quanto os subsequentes);
* Elevação (lift): é o retorno esperado ao utilizarmos um modelo ou uma regra. Nesse contexto, trata-se da razão entre a confiança da regra e a porcentagem geral da ocorrência do subsequente nos dados. A medida de interesse Lift, também conhecida como intereseté uma das mais utilizadas para avaliar dependências. Dada uma regra de associação A --> B essa medida indica o quanto mais frequente torna-se B quando A ocorre. Se lift (A --> B) = 1, então A e B são independentes. Se lift (A --> B) > 1, então A e B são positivamente dependentes. Se Lift (A --> B) < 1 então A e B são negativamente dependentes. Essa medida varia entre 0 e 0^(infinito), e possui interpertação bastante simples: Quanto maior o valor do Lift, mais interessante a regra, pois A aumentou B numa taxa maior.

Obs: O ideal é um Lift > 1,5.
Obs2: Algumas regras de produtos a gente já conhece e não é necessário fazer este cálculo. Por exemplo: café e pão.