# Exercício 13 ------------------------------------------------------------

# Questão 1 ---------------------------------------------------------------

# Vamos usar novamente o dataset 'DNase'. Crie um gráfico de dispersão da concentração
# contra a densidade das 3 primeiras corridas (coluna 'Run'). Especifique cada corrida
# com pontos diferentes no gráfico.

run1 <- DNase[DNase$Run == 1,]
run2 <- DNase[DNase$Run == 2,]
run3 <- DNase[DNase$Run == 3,]

plot(run1$conc, run1$density, col = "red",
     pch = 16, xlab = "Concentra��o", ylab = "Densidade")

title("Concentra��o�o x Densidade")

points(run2$conc, run2$density, col = "blue", 
       pch = 17, xlab = "Concentra��o", ylab = "Densidade")

points(run3$conc, run3$density, col = "green", 
       pch = 15, xlab = "Concentração", ylab = "Densidade")

legend(x = "topleft", col = c("red", "blue", "green"), pch = c(16, 17, 15), 
       legend = c("Run 1", "Run 2", "Run 3"))




# Questão 2 ---------------------------------------------------------------

# Com o dataset 'mtcars', crie um gráfico de barras com os pesos dos carros (mtcars$wt). 
# adicione uma linha horizontal que represente a mediana dos pesos. Utilize a linha 
# pontilhada de espessura 4 na cor vermelha (veja os argumentos 'lty' e 'lwd' da função 'par()').

barplot(mtcars$wt)
abline(h=median(mtcars$wt),lwd = 4, col="red")  



# Questão 3 ---------------------------------------------------------------

# Crie um boxplot comparando a distribuição dos pesos dos carros (coluna 'wt') 
# em função do número de cilindros dos carros (coluna 'cyl'). Customize pelo menos 4
# elementos gráficos de sua escolha. 

boxplot(mtcars$wt ~ mtcars$cyl, col = "purple", xlab = "cilindradas", ylab = "peso")
title("Compara��o da distribui��o dos pesos x cilindros")



# Questão 4 ---------------------------------------------------------------

# Crie um histograma da distribuição da variável 'Solar.R' do dataset 'airquality'. 
# Adicione uma linha de referência para marcar a média da distribuição.

hist(na.omit(airquality$Solar.R))
novo = na.exclude(airquality$Solar.R)
novo = mean(novo)
abline(v = novo ,lwd = 4, col="purple")



# Questão 5 ---------------------------------------------------------------

# Plote as distribuições das variáveis numéricas 'Ozone', 'Solar.R', 'Wind' e 'Temp'   
# do dataset 'airquality', por meio de boxplots, em cada mês (variável 'Month'). 

# Plote os 4 gráficos em um mesmo painel, usando os argumentos 'mfrow' ou 'mfcol',
# da função par. Consulte a documentação da função. 


