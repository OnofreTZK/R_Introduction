# Exerc√≠cio - Regras de Escopo ----------------------------

# Quest√£o 1 ---------------------------------------------------------------

# Um ambiente no R pode ser entendido como uma cole√ß√£o de objetos (fun√ß√µes evari√°veis, por exemplo) 
# que existe assim que iniciamos nossa sess√£o no R. 

# O ambiente de mais alto n√≠vel dispon√≠vel √© o ambiente global, chamado R_GlobalEnv, ele tamb√©m pode ser referenciado
# como .GlobalEnv nos c√≥digos em R que escrevemos.

# Vimos na aula que podemos usar a 'fun√ß√£o ls()' para mostrar os objetos do ambiente atual.
# Al√©m disso, podemos usar a fun√ß√£o 'environment()', que ir√° nos retornar o ambiente atual.
# Se rodarmos a fun√ß√£o environment() no ambiente global, a fun√ß√£o retornar√° que o ambiente atual
# √© o pr√≥prio ambiente global. 
environment()
ls()

# Tamb√©m vimos a sintaxe para criar fun√ß√µes simples, e ainda fun√ß√µes dentro de fun√ß√µes! 

# Crie uma fun√ß√£o chamada de 'f1' que possua uma outra fun√ß√£o 'f2' definida dentro dela. 
# 1. A fun√ß√£o interna ('f2') deve fazer duas coisas:
# - Imprimir no console o ambiente atual com a fun√ß√£o 'environment()'
# - Imprimir os objetos pertencentes ao seu escopo com a fun√ß√£o 'ls()'.

# 2. A fun√ß√£o externa ('f1') deve fazer 3 coisas:
# - Deve chamar a fun√ß√£o interna
# - Imprimir no console o ambiente atual com a fun√ß√£o 'environment()'
# - Imprimir os objetos pertencentes ao seu escopo com a fun√ß√£o 'ls()'.

# Uma vez definidas estas fun√ß√µes, chame a fun√ß√£o externa e responda: os ambientes exibidos s√£o os mesmos? Justifique.

F1 <- function(){
  F2 <- function(){
    print("Dentro da funÁ„o F2: ")
    print(environment())
    print(ls())
    
  }
  F2()
  print("Dentro da funÁ„o F1: ")
  print(environment())
  print(ls())
  
}
F1()
#Os ambientes exibidos s„o diferentes, isso acontece pois as funÁıes s„o executadas em ambientes diferentes, envolvendo o conceito de
#closures, quando criamos uma segunda funÁ„o dentro da primeira j· n„o estamos mais no ambiente inicial (que comeÁou no global), sendo
#assim a funÁ„o interna ja est· em outro ambiente.


# Quest√£o 2 ---------------------------------------------------------------

# Com base nas regras de escopo do R, justifique o resultado das chamadas das fun√ß√µes abaixo:
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

#O valor retornado È 14 pois a funÁ„o f2 utiliza a vari·vel que foi declarada dentro da funÁ„o f1, pois È uma vari·vel local.
#Caso n„o houvesse sido declarada a vari·vel local x, seria utilizada a vari·vel global x.



# Ex.:2
z <- 10
f3 <- function(x, y) {
  x * y * z
}
f3(1, 2)

#Como a variavel z n„o foi passada por par‚metro e n„o foi declarada como vari·vel local, a funÁ„o utiliza a vari·vel global z para
#a multiplicaÁ„o na funÁ„o f3.



