

# Exercício 11 - MAPPLY ---------------------------------------------------

# Questão 1 ---------------------------------------------------------------

# Com base no conjunto de dados airquality, responda às questões:
data("airquality", package = "datasets")

# Calcule a média das variáveis contidas em airquality por mês.

tapply(airquality$Ozone, airquality$Month, mean, na.rm=T)

tapply(airquality$Solar.R, airquality$Month, mean, na.rm=T)

tapply(airquality$Wind, airquality$Month, mean, na.rm=T)

tapply(airquality$Temp, airquality$Month, mean, na.rm=T)



# Calcule a média das variáveis contidas em airquality por dia.

tapply(airquality$Ozone, airquality$Day, mean, na.rm=T)

tapply(airquality$Solar.R, airquality$Day, mean, na.rm=T)

tapply(airquality$Wind, airquality$Day, mean, na.rm=T)

tapply(airquality$Temp, airquality$Day, mean, na.rm=T)



# Calcule o desvio padrão da radiação solar por mês.

tapply(airquality$Solar.R, airquality$Month, sd, na.rm=T)



# Questão 2 ---------------------------------------------------------------

# Imprima cada elemento do vetor 1:5 e 10:14 separados pelas letras
# A, B, C, D e E. 
# Ex.: 1A10, 2B11, 3C12, ...

vetor_1 <- 1:5
vetor_2 <- 10:14
letras <- c("A", "B", "C", "D", "E")

mapply(paste, sep="", vetor_1, letras, vetor_2)



# Questão 3 ---------------------------------------------------------------

# A função 'mapply()' pode ser útil para nomear e criar vários arquivos de forma programática. 
# Use a função 'mapply()' para combinar as strings contidas nos vetores abaixo:
v1 <- c("arq1", "arq2", "arq3", "arq4")
v2 <- c("analise1", "analise2", "analise3", "analise4")

# com o seguinte separador
v3 <- "_"

# E com a extensão abaixo:
v4 <- (".txt")


# Exemplo: arq1_analise1.txt, arq2_analise2.txt, ...
mapply(paste, v1,v3,v2,v4, sep = "")


