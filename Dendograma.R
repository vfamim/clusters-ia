library(readxl)
comportamento <- read_excel("Documentos/DATA SCIENCE/Inteligencia_Analitica/Aula01/comportamento_consumidores.xlsx")
view(comportamento)

names(comportamento)

library(pastecs)
stat.desc(comportamento)

# padronizar
media_Preco <- mean(comportamento$Preco)
sd_preco <- sd(comportamento$Preco)
comportamento$z_Preco<- (comportamento$Preco - media_Preco)/sd_preco

media_internacional <- mean(comportamento$Internacional)
sd_internacional <- sd(comportamento$Internacional)
comportamento$z_Internacional <- (comportamento$Internacional - media_internacional)/sd_internacional

media_Interurbano <- mean(comportamento$Interurbano)
sd_Interurbano <- sd(comportamento$Interurbano)
comportamento$z_Interurbano <- (comportamento$Interurbano - media_Interurbano)/sd_Interurbano

media_Local <- mean(comportamento$Local)
sd_Local <- sd(comportamento$Local)
comportamento$z_Local <- (comportamento$Local - media_Local)/sd_Local

#
options(scipen = 100)
options(digits = 3)
stat.desc(comportamento)

# selecionar
dados_clientes <- comportamento[,c('z_Preco', 'z_Internacional', 'z_Interurbano', 'z_Local')]

View(dados_clientes)

# calculando as distâncias
de <- dist(dados_clientes, method = 'euclidean')

# modelo - dendograma
dendograma <- hclust(de, method = 'average')
dendograma

# visualizando cluster
plot(dendograma, hang = 1)
rect.hclust(dendograma, k=5, border=1:3)
rect.hclust(dendograma, h=2, border='blue')

# outro exemplo
plot(dendograma, hang = -1)
abline(h=4, col='red', lty=2)
abline(h=3, col='red', lty=2)
abline(h=2, col='red', lty=2)
abline(h=1, col='red', lty=1)

g5 <- cutree (dendograma, k=5)
g4 <- cutree (dendograma, k=4)
g3 <- cutree (dendograma, k=3)
g2 <- cutree (dendograma, k=2)

table(g5)
table(g4)
table(g3)
table(g2)

g4 <- factor(g4)
comportamento$cluster <- g4

library(dplyr)
agregar <- summarise(group_by(comportamento, cluster),
                     z_Preco_media = mean(z_Preco),
                     z_Internacional_media = mean(z_Internacional),
                     z_Interurbano_media = mean(z_Interurbano),
                     z_Local_media = mean(z_Local))

agregar

# grafic
setwd('Documentos/DATA SCIENCE/Inteligencia_Analitica/Aula01')
write.csv2(agregar, file = 'graficos_media.csv' )

comportamento$cluster <- factor(comportamento$cluster, levels=c(1,2,3,4),
                                labels=c('ouro', 'diamante', 'prata', 'bronze'))

table(comportamento$cluster)

##
table(comportamento$Segmento, comportamento$cluster)

