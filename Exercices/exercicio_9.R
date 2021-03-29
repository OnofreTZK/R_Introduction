

# Exercício 9 -------------------------------------------------------------

# Questão 1 ---------------------------------------------------------------

# Crie uma função chamada 'describe()' para descrever alguns parâmetros das colunas 
# numéricas de um dataframe. A função irá retornar um outro dataframe contendo
# a média, os valores mínimo e máximo, o número de ocorrências únicas de cada valor, 
# e o número de NAs de cada coluna. 

#, "min", "max", "n_unique", "n_nas"





describe <- function(dt){
  media <- c()
  minimo <- c()
  maximo <- c()
  unicos <- c()
  na_valor <-c()
  
  for(i in 1:length(dt)){
    media[i]<- mean(dt[,i], na.rm = TRUE)
    minimo[i]<- min(dt[,i], na.rm = TRUE)
    maximo[i]<- max(dt[,i], na.rm = TRUE)
    unicos[i]<- n_distinct(dt[,i])
    na_valor[i]<- sum(is.na(dt[,i]))

  }
  
  dt2 <- data.frame(media, minimo, maximo, unicos, na_valor)
  dt2 <- rename(dt2, min = minimo, max = maximo, n_unique = unicos)
  print(dt2)
  
  
}

describe(airquality)

# Exemplo:
# Input:
# > describe(airquality)

# Output:
#             media   min  max    n_unique n_nas
# Ozone    42.129310  1.0 168.0       68    37
# Solar.R 185.931507  7.0 334.0      118     7
# Wind      9.957516  1.7  20.7       31     0
# Temp     77.882353 56.0  97.0       40     0
# Month     6.993464  5.0   9.0        5     0
# Day      15.803922  1.0  31.0       31     0


# Questão 2 ---------------------------------------------------------------

# Crie uma função que retorne uma lista de tamanho 2, contendo uma matriz em cada posição. 

# A primeira matriz da lista é uma matriz quadrada (o número de linhas é igual ao número de colunas) 
# com cada posição da matriz sendo um número inteiro sorteado de 1 a 1000 (use a função 'sample()'). 

# A segunda matriz terá as mesmas dimensões da primeira, mas irá atribuir 
# a cada posição o valor 0, se aquela posição na primeira matriz for par, ou 1, se aquela posição na primeria 
# matriz for ímpar. 

# A função terá um único argumento, que determinará as dimensões da matriz.

faz_matriz <- function(n){
  matrizes <- list()
  for (i in 1:2){
    if ( i == 1){
    matrizes[[i]] <- matrix(sample(1:1000, 4), ncol = n)
    } else {
      matrizes[[i]] <- matrix(sample(0:1, 4, TRUE), ncol = n)
    }
  }
  print(matrizes)
}
faz_matriz(2)

# Input:
# > faz_matriz(n = 2)

# Output:
# $matriz1
#      [,1] [,2]
# [1,]  354  121
# [2,]  580  422
# 
# $matriz2
#       [,1] [,2]
# [1,]    0    1
# [2,]    0    0


# Questão 3 ---------------------------------------------------------------

# Crie um laço 'while' que imprima números aleatórios que seguem  adistribuição normal
# utilizando a funcao 'rnorm()' mas que interrompe a execução caso o número sorteado seja maior que 1.
# Obs.: A função 'rnorm()' gera números aleatórios que seguem uma distribuição normal,
# com média 0 e variância 1 por padrão. 


x = 0
while(x < 1){
  x = rnorm(1)
  print(x)
}


# Questão 4 ---------------------------------------------------------------

# Adapte o laço da questão anterior para que ele não imprima números negativos.

x = 0
while(x < 1){
  x = rnorm(1)
  if (x >0){
  print(x)
  }
}


