
# Exercício 01 - Introdução ao R ------------------------------------------

### Vetores ----

### Em R, os vetores são um dos tipos mais básicos de objetos. Eles são parecidos com os vetores que vimos na matemática
### A diferença é que aqui podemos ter vetores não só de números, mas também de letras (caracteres). 

### Um vetor de números pode ser construído assim:

num <- c(1,2,3,4) 

### Se você executar essa linha acima terá criado um vetor com o nome de "num" 
### e que contém os elementos 1,2,3 e 4.
### Em R, para criarmos um vetor, utilizamos a função "c()".

## Exercício 1

# Experimente fazer um vetor chamado "num2" e que contenha os seguintes 
# elementos: 1,a,3,b. Depois veja qual a classe dos elementos desse vetor
# Usando a função class(). 
# OBS: Não esqueça que letras e palavras tem de ser colocadas entre aspas.
# IMPLEMENTAÇÃO

num2 <- c( 1, "a", 3, "b")

class(num2)

# Agora crie um vetor num3 com os elementos: 1,2,3,4,5. Use a função class() 
# para saber qual a classe dos elementos desse vetor:
#IMPLEMENTAÇÃO 

num3 <- c(1, 2, 3, 4, 5)

class(num3)

# Por que a classe dos vetores 'num2' e 'num3' é diferente?
# Pela existência de caracteres diferentes de números. 


## Exercício 2

# José e Paulo adoram jogar basquete nas suas horas livres. Eles mantém uma
# competição entre si e por isso decidiram registrar todos os pontos que eles
# marcam durante as partidas.
# Até agora foram 8 partidas e José fez 8, 10, 12, 9, 15, 16, 11, 7 cestas.
# Paulo fez 5, 11, 13, 14, 23, 14, 9, 10 cestas.

# Crie dois objetos que contenham o número de cestas que cada um fez:
# IMPLEMENTAÇÃO

jose_pts <- c(8, 10, 12, 9, 15, 16, 11, 7)
paulo_pts <- c( 5, 11, 13, 14, 23, 14, 9, 10)

class(jose_pts)
class(paulo_pts)


# Verifique a que classe de cada um dos objetos:
# Numérico


# Com a utilização da ajuda do R, procure por uma função que possibilite o cálculo de médias.
# Com ela, calcule as médias de cestas dos dois jogadores e atribua estes valores
# a objetos diferentes:
jose_mean <- mean(jose_pts)
paulo_mean <- mean(paulo_pts)



# Compare os valores das médias calculadas usando os operadores lógicos ">" e "<".
# Quem teve um desempenho médio melhor?
if(jose_mean > paulo_mean)
{
  print("José teve o melhor desempenho")
} else
{
  print("Paulo teve o melhor desempenho")
}



### Dataframes ----

### Vetores são muito úteis, mas na medida que trabalhamos com muitos tipos de vetores 
### e com mais valores, fica mais complicado. Para contornar esse problema, nós temos
### em R um objeto chamado de Dataframe. O Dataframe é uma espécie de matriz: tem linhas 
### e colunas. A diferença é: numa matriz, todos as colunas tem um mesmo tipo, enquanto
### em um data.frame podemos ter em cada coluna um tipo diferente de dado. Assim, dataframes 
### podem ter uma coluna de um vetor numérico e outra de um vetor de caracteres. 

# Exercício 3

# O data.frame 'contagem'  mostra a quantidade de células contadas por 5 ICs diferentes 
# durante a primeira semana de trabalho no laboratório. 

contagem <- data.frame(IC = c('Você','João','Fernanda','Júlio','Larissa'),
                     semana_1 = c(30, 46, 50, 20, 10))


# Na segunda semana de experimento, todos os ICs do laboratório repetiram a contagem, 
# e os números de células contadas foram: 10, 39, 55, 11, 20. Crie uma nova coluna neste mesmo dataframe
# chamada de 'semana_2' com estes números.
# IMPLEMENTAÇÃO

contagem["semana_2"] <- c(10, 39, 55, 11, 20)

# O chefe do laboratório pediu para que os ICs mostrassem qual deles contou o maior e o menor número de células e cada semana. 
# Procure por funções no R que mostre qual valor de contagem é maior e qual é o menor. 
# IMPLEMENTAÇÃO

# MAX

max(contagem["semana_1"])
max(contagem["semana_2"])

# MIN

min(contagem["semana_1"])
min(contagem["semana_2"])















