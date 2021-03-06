# Questão 1 ---------------------------------------------------------------

# Considere o seguinte vetor:
x <- c(1, 45, 6, 88, 30, 4)

# Obtenha um outro vetor a partir deste que contenha apenas os elementos da posição 2 e da última posição.
y <- c(x[2], x[6])

# Atribua um nome para cada um dos elementos do vetor x.
a <- x[1]
b <- x[2]
c <- x[3]
d <- x[4]
e <- x[5]
f <- x[6]
# Ordene o vetor x, em ordem crescente, de duas maneiras: usando a função sort() e a função order().

sort(x)
x[order(x)]
x

# Questão 2 ---------------------------------------------------------------

# Considere os seguintes vetores
x <- c(5, 2, 1, 4)
xx <- c(1, 10, 15, 18)
y <- rep(1, 5)
z <- c(TRUE, FALSE, TRUE, TRUE)
w <- c("Maria", "Elisa", "Pedro")

# Explique a operação realizada por cada um dos comandos nos itens abaixo:

# 1) 
sum(x)  #Este comando faz a soma de todos os elementos do vetor
range(x) # Este comando retorna o valor minimo e maximo do vetor
length(y) # O comando retorna o tamanho do vetor
sum(y) #novamente soma todos os elementos do vetor y (que tem 5 elementos de valor 1)



# 2)
c(x, y, 13)

#Faz a jun��o do vetor x, do y e o elemento 13 ao final



# 3)
xx - x # Faz a subtra��o dos elementos nas posi��es iguais de cada vetor.
c(x, 12) * y #Construiu um vetor com 5 elementos a partir do vetor X, e adicionou o valor 12 ao final,
            # e assim ficando v�lido para a multiplica��o com o vetor y

1:6 + 1 #Faz uma lista de 6 elementos que come�aria a partir do numero 1, mas como h� uma soma ao final, cada elemento soma 1 ao seu valor

1:9 + 1:2 # N�o h� como somar suas listas de tamanhos diferentes, da uma mensagem de erro informando que o comprimento do objeto maior n�o � multimo ao do menor



# 4) 
x <= 2 # Faz uma compara��o com todos os elementos de x e retorna verdadeiro se o valor comparado for igual ou menor a 2, e falso caso contrario
x <= 2 & z # Uma compara��o dupla, onde so retornar� true caso o valor seja menor ou igual a 2 e se os dois vetores retornarem true na mesma posi��o



# 5)
substring(w, 2, 4) # este comando retorna parte da string no vetor da sua posi��o 2 ate a 4 (da string)
paste(substring(w, 1, 2), substring(w, 5, 5), sep = "...") # retorna as duas primeiras posi��es da string e a ultima posi��o da string
                                                          # com reticencias como separador 




# Questão 3 ---------------------------------------------------------------

# Considere o vetor:
set.seed(1)
v <- sample(1:100, 20)

# Quantos elementos do vetor 'v' são maiores que 60?

sum(v >60) # 9 elementos

# Quais as posições do vetor 'v' que contem elementos maiores que 60?
v>60
order(v)
# Obtenha o valor máximo do vetor 'v'. Use pelo menos duas abordagens diferentes. 

max(v) #abordagem 1
ord <- sort(v)
ord[length(ord)] #abordagem 2



# Questão 4 ---------------------------------------------------------------

# Crie as seguintes sequências apenas usando as funções 'rep()' e 'seq()'. 
# Verifique a documentação das funções.

# 1) 1 2 3 4 5 6 7 8 9
seq(9)


# 2) "m" "w" "m" "w" "m" "w" "m" "w" "m" "w"
rep(c("m", "w"), 5)


# 3) 1 2 3 4 1 2 3 4 1 2 3 4
rep(c(1,2,3,4), 3)


# 4) 4 4 4 3 3 3 2 2 2 1 1 1
rep(4:1, c(3,3,3,3))


# 5) 1 2 2 3 3 3 4 4 4 4 5 5 5 5 5
rep(1:5, c(1:5))


# 6) 1 1 3 3 5 5 7 7 9 9 11 11

rep(c(1,3,5,7,9, 11), c(2,2,2,2,2,2))


