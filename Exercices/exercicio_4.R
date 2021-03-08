
# Exercício 4 - Dataframes ------------------------------------------------

# Questão 1 ---------------------------------------------------------------

## Com os dataframes abaixo: 

peso <- data.frame("Nome" = c("Bruno", "Dionisio","Eduardo", "Ana", "Silvia", "Elizete", "Renata", "Arlete", "Lucas"),
                   "Peso" = c(73, 68, 65, 73, 60, 65, 70, 83, 68), stringsAsFactors = F)

altura <- data.frame("Nome" = c("Davi", "Kevin","Eduardo","Lucas", "Antonio", "Moises", "Dionisio", "Ana", "Renata"),
                     "Altura" = c(150, 193, 152, 175, 191, 173, 180, 163, 178), stringsAsFactors = F)

idade <- data.frame("Nome" = c("Eloise", "Ana","Flavia","Dayse", "Eduardo", "Silvia", "Dionisio", "Renata", "Bruno"),
                    "Idade" = c(24, 27, 30, 21, 37, 18, 43, 26, 47), stringsAsFactors = F)

profissao <- data.frame("Nome" = c("Dionisio", "Renata","Ana","Flavia", "Thais", "Daniel", "Fernanda", "Bárbara", "Henrique"),
                        "Profissao" = c("Programador", "Pesquisadora", "Advogada", "Farmaceutica", "Bombeira Civil", "Cabelereiro",
                                        "Cozinheira", "Estiliesta", "Professor"), stringsAsFactors = F)

# No dataframe peso, verifique quantas pessoas têm o mesmo peso
# Exemplo: entrada - 1,2,3,4,2,4,1 ; saída: 3 ; explicação: 3 números se repetem
sum(duplicated(peso$Peso))


# No dataframe altura, verifique quantas e quais pessoas têm entre 163cm e 180cm
range_height <- altura[(altura['Altura'] >= 163)  & (altura['Altura'] <= 180), ]
range_height
length(range_height$Altura)


# Ordene o dataframe idade de forma descrescente
sorted_df <- idade[order(-idade$Idade),]
sorted_df 

# Ordene o dataframe profissao lexicograficamente
lexical_sorted_df <- profissao[order(profissao$Profissao),]
lexical_sorted_df

# Verifique os dados do Dionisio presentes nos 4 dataframes originais
dionisio_data <- merge(peso, profissao, by = "Nome", all=TRUE)
dionisio_data <- merge(dionisio_data, idade, by = "Nome", all=TRUE)
dionisio_data <- merge(dionisio_data, altura, by = "Nome", all=TRUE)
dionisio_data[dionisio_data$Nome == 'Dionisio',]


# Altera a profissão da Renata para "Cientista"
profissao$Profissao[profissao$Profissao == "Pesquisadora"] <- "Cientista"
profissao$Profissao[profissao$Nome == "Renata"]

# Retorne quantas pessoas possuem todas as informações (Peso, Altura, Idade e Profissão) e armazene em um novo dataframe
# Obs/Dica: A função escolhida pode ser plicada mais de uma vez
superframe <- na.omit(dionisio_data)
superframe


# Questão 2 ---------------------------------------------------------------

## Com os seguintes dataframes, responda: 

amostra1 <- data.frame("genero" = c("Prevotella", "Prevotella", "Prevotella", "Streptococcus","Neisseria", "Neisseria", 
                                    "Lactobacillus", "Bacteroides", "Anaerosporomusa"),
                       "especie" = c("Prevotella_copri", "Prevotella_denticola", "Prevotella_ruminicola", "Streptococcus_infantarius", 
                                     "Neisseria_gonorrhoeae", "Neisseria_meningitidis", "Lactobacillus_iners", "Bacteroides_xylanisolvens",
                                     "Anaerosporomusa_subterranea"), stringsAsFactors = F)

amostra2 <- data.frame("genero" = c("Prevotella", "Prevotella", "Streptococcus", "Streptococcus", "Neisseria", "Neisseria", "Bacteroides", 
                                    "Fusobacterium", "Pseudoalteromonas", "Achromobacter", "Aggregatibacte"),
                       "especie" = c("Prevotella_denticola", "Prevotella_ruminicola", "Streptococcus_infantarius", "Streptococcus_equi", 
                                     "Neisseria_gonorrhoeae", "Neisseria_meningitidis", "Bacteroides_xylanisolvens", "Fusobacterium_nucleatum", 
                                     "Pseudoalteromonas_sp._S558", "Achromobacter_sp._KAs_3-5", "Aggregatibacter_actinomycetemcomitans"), stringsAsFactors = F)

# Quantas espécies da amostra 1 também estão presentes na amostra 2?
a <- c(amostra1$especie[amostra1$especie %in% amostra2$especie])
length(a) 

# Quantas espécies da amostra 2 também estão presentes na amostra 1?
b <- c(amostra2$especie[amostra2$especie %in% amostra1$especie])
length(b) 


# Quais as posições e os valores dessas espécies?



# Questão 3 ---------------------------------------------------------------

# Considere o dataframe abaixo:

df <- data.frame(col1 = 1:3, col2 = 2:4, col3 = 3:5)

# Faça a seleção dos elementos do dataframe utilizando duas abordagens diferentes: a 
# abordagem utilizada na indexação de matrizes e a abordagem para indexação de listas.

# 1) Selecione a primeira coluna
df[1]



# 2) 3º elemento da 2ª coluna
df[3, 2]


