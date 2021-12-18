library(readxl)
cesto_compras <- read_excel("Documentos/DATA SCIENCE/Inteligencia_Analitica/cesto_compras.xlsx")
View(cesto_compras) 

names(cesto_compras)
dim(cesto_compras)

# sempre fazer uma descritiva
table(cesto_compras$Chocolate)


# regra 1
library(arules)
rules1 <- apriori(cesto_compras, parameter = list( minlen = 2,
                                                  maxlen = 3,
                                                  supp = .05,
                                                  conf = 0.5),
                 appearance = list(rhs=c('Alcool=sim'), default='lhs'))
# rhs = subsequente
# lhs = antecedente
rules1

inspect(rules1)

# regra2
rules2 <- apriori(cesto_compras, parameter = list( minlen = 2,
                                                   maxlen = 3,
                                                   supp = .05,
                                                   conf = 0.8),
                  appearance = list(rhs=c('Alcool=sim', 'Leite=sim'), lhs=c(
                    "Hortalicas=sim", "Carne=sim", "Produtos_Gerais=sim",
                    "Alimentos_COngelados=sim", "Bolachas=sim",
                    "Produtos_Padaria=nao"), default='none'))
# rhs = subsequente
# lhs = antecedente
rules2

inspect(rules2)

## visualizar as regras
library(arulesViz)
plot(rules1)
plot(rules1, method = 'grouped')
plot(rules1, 'scatter', engine='htmlwidget', max=1000)
plot(rules1, method='graph', engine-'htmlwidget')

# salvando
df <- as.data.frame(rules1)
write.csv2(df, file='df.csv')



