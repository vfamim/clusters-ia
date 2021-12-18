# Machine Learning Nao Supervisionado em Cluster
Modelos de Cluster em R e Python
 
## 1.0. Análise de Cluster
### 1.1. O que é cluster?
É o nome dado para um grupo de técnicas multivariadas cuja finalidade primária é agregar com base nas características que eles possuem. São técnicas que podem ser caracterizadas como descritivas, sem base teórica e não inferencial e, são usadas principalmente como técnicas exploratórias. Essas análises sempre criarão grupo independente da estrutura de dados. A solução de agrupamento é totalmente dependente das variáveis usadas como bases para a medida de similaridade. O acréscimo ou a eliminação de variáveis relevantes podem ter um impacto substancial sobre a solução. A estrutura mais simples de agrupamento é vista internamente com o menor número de agrupamentos possíveis.
 
### 1.2. Agrupamentos
O agrupamento é o método pelo qual simplificamos uma expressão algébrica, agrupando os termos semelhantes (termos em comum). As técnicas de agrupamento são muito sensíveis à inclusão de variáveis irrelevantes. As observações atípicas podem representar grupos sem sentidos e distorcer a verdadeira estrutura e tornam os agrupamentos obtidos não representativos da verdadeira população. Por essa razão, uma projeção preliminar das variáveis se faz necessária. Porém, eliminar as observações atípicas da amostra pode distorcer a real estrutura dos dados. As análises de cluster podem sugerir formas de agrupamento sobre qualquer coisa. Ela sempre vai agrupar. Sua principal vantagem é que ela pode sugerir agrupamentos que não seriam encontrados aparentemente. Uma forma de validar os grupos e dar um nome. Alguns tipos de algoritmos de cluster:
 
* Procedimento hierárquico – Dendrograma;
* Procedimento Não hierárquico – K-means;
* Procedimento Não hierárquico – TwoStep.
 
## Regras de Associação - Basket Analysis
 
As regras de associação são objetos que combinam itens que ocorrem com determinada frequência em uma base de dados. Uma de suas típicas aplicações é a análise de transações de compra(market basket analysis). A partir de uma base de dados que armazena produtos comprados por clientes de um supermercado, é possível gerar regras de associação do tipo (fralda) (cerveja). Essa regra pode ser utilizada para indicar que os clientes que compram fraldas também compram cervejas.
Esse algoritmo tem como premissa básica encontrar elementos que implicam na presença de outros elementos em uma mesma transação, ou seja, eles tentam encontrar um relacionamento ou padrões frequentes entre conjunto de dados.
A geração de REGRAS DE ASSOCIAÇÃO (RA) é uma tarefa descritiva (Aprendizado Não Supervisionado). Outros termos: Association Rule (AR), Association Rule Mining (ARM) e Market Basket Analysis.
 
* Instância: é o número de registros nos dados que possuem o(s) antecedente(s);
* Suporte: é a porcentagem de registros que possuem o(s) antecedente(s);
* Confiança: é a porcentagem de todos os registros dentre aqueles com antecedentes que também possuem os subsequentes;
* Suporte de regra: é a porcentagem de registros que contém a regra completa (ou seja, contém tantos os antecedentes quanto os subsequentes);
* Elevação (lift): é o retorno esperado ao utilizarmos um modelo ou uma regra. Nesse contexto, trata-se da razão entre a confiança da regra e a porcentagem geral da ocorrência do subsequente nos dados. A medida de interesse Lift, também conhecida como interest, é uma das mais utilizadas para avaliar dependências. Dada uma regra de associação A --> B essa medida indica o quanto mais frequente torna-se B quando A ocorre. Se lift (A --> B) = 1, então A e B são independentes. Se lift (A --> B) > 1, então A e B são positivamente dependentes. Se Lift (A --> B) < 1 então A e B são negativamente dependentes. Essa medida varia entre 0 e 0^(infinito), e possui interpretação bastante simples: Quanto maior o valor do Lift, mais interessante a regra, pois A aumenta B numa taxa maior.
 
Obs: O ideal é um Lift > 1,5.
Obs2: Algumas regras de produtos a gente já conhece e não é necessário fazer este cálculo. Por exemplo: café e pão.
