# Exercício - Regras de Escopo ----------------------------

# Questão 1 ---------------------------------------------------------------

# Um ambiente no R pode ser entendido como uma coleção de objetos (funções evariáveis, por exemplo) 
# que existe assim que iniciamos nossa sessão no R. 

# O ambiente de mais alto nível disponível é o ambiente global, chamado R_GlobalEnv, ele também pode ser referenciado
# como .GlobalEnv nos códigos em R que escrevemos.

# Vimos na aula que podemos usar a 'função ls()' para mostrar os objetos do ambiente atual.
# Além disso, podemos usar a função 'environment()', que irá nos retornar o ambiente atual.
# Se rodarmos a função environment() no ambiente global, a função retornará que o ambiente atual
# é o próprio ambiente global. 
environment()
ls()

# Também vimos a sintaxe para criar funções simples, e ainda funções dentro de funções! 

# Crie uma função chamada de 'f1' que possua uma outra função 'f2' definida dentro dela. 
# 1. A função interna ('f2') deve fazer duas coisas:
# - Imprimir no console o ambiente atual com a função 'environment()'
# - Imprimir os objetos pertencentes ao seu escopo com a função 'ls()'.

# 2. A função externa ('f1') deve fazer 3 coisas:
# - Deve chamar a função interna
# - Imprimir no console o ambiente atual com a função 'environment()'
# - Imprimir os objetos pertencentes ao seu escopo com a função 'ls()'.

# Uma vez definidas estas funções, chame a função externa e responda: os ambientes exibidos são os mesmos? Justifique.

F1 <- function(){
  F2 <- function(){
    print("Dentro da fun��o F2: ")
    print(environment())
    print(ls())
    
  }
  F2()
  print("Dentro da fun��o F1: ")
  print(environment())
  print(ls())
  
}
F1()
#Os ambientes exibidos s�o diferentes, isso acontece pois as fun��es s�o executadas em ambientes diferentes, envolvendo o conceito de
#closures, quando criamos uma segunda fun��o dentro da primeira j� n�o estamos mais no ambiente inicial (que come�ou no global), sendo
#assim a fun��o interna ja est� em outro ambiente.


# Questão 2 ---------------------------------------------------------------

# Com base nas regras de escopo do R, justifique o resultado das chamadas das funções abaixo:
# Ex.:1
x <- 12
f1 <- function(y) {
  x <- 10
  f2 <- function() {
    print(x + y)
  }
  f2()
}
f1(4)

#O valor retornado � 14 pois a fun��o f2 utiliza a vari�vel que foi declarada dentro da fun��o f1, pois � uma vari�vel local.
#Caso n�o houvesse sido declarada a vari�vel local x, seria utilizada a vari�vel global x.



# Ex.:2
z <- 10
f3 <- function(x, y) {
  x * y * z
}
f3(1, 2)

#Como a variavel z n�o foi passada por par�metro e n�o foi declarada como vari�vel local, a fun��o utiliza a vari�vel global z para
#a multiplica��o na fun��o f3.



