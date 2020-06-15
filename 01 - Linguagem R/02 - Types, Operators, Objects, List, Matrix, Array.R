## Basic Operators

# sum, division, subtraction, pow && Module
1+1

10/2

2^8
2**4

100%%3



## Relational Operators

# Sample 
n1 > 5 
n1 < 10

# Others: <= >= != ==


# Logical Operators
(TRUE) & !(FALSE)
(TRUE) | (FALSE)



## DATA TYPES (Numeric, Character, Complex numbers, Logic, NA, NaN, Inf & -Inf)

n = 2.5 # numberic
n2 = 4 #numeric
class(n) #var type -> numeric
class(n2) #var type -> numeric

is.integer(n2) # Check if n2 is integer
n3 = as.integer(n2) # Convert n2 to integer
class(n3) #var type -> integer


n4 = 10.565623
n5 = as.integer(n4)
n5 # n5 -> 10
class(n5) #var type ->  integer


c1 = 'a'
c2 = 'hello world'


complexNumber01 = 5 + 10i
complexNumber01
class(complexNumber01) #var type ->  complex


sqrt(9) # -> 3
sqrt(-1+0i)
sqrt(as.complex(-1))




## VARS 
var1 = 10
mode(var1) # storage type
typeof(var1) # double

var2 = c("hello", "world")
var2
mode(var2)
typeof(var2)


var3 = function(x) { x * 10}
var3(3)
mode(var3)


# object attributions
x <- c(1, 2, 3, 4, 5)
x
mode(x)
c(1, 2, 3, 4) -> x2
x2
assign("x3", c(2, 4, 6, 8))
x3

x[1]

# List objects
ls()


# remove objects
rm(x)




## OBJECT

# vector
v1 <- c(1,2,3,4)
length(v1)


# matriz - 2 dimensions
m1 <- matrix(1:10, nrow = 5)
length(m1)
mode(m1)
typeof(m1)
class(m1)
m1


matrix(c(1,2,3,4,5,6), nr=2)
matrix(c(1,2,3,4,5,6), nr=3)
matrix(c(1,2,3,4,5,6), nr=6)


myData = c(1:10)


matrix(data = myData, nrow = 5, ncol = 2, byrow = T)
matrix(data = myData, nrow = 5, ncol = 2)

v1 = 1:3
class(v1)
m2 = diag(v1)
m2
v2 = diag(m2)
v2


# transposta or Pivot
W <- matrix(c(2,4,8,12), nr=2, ncol=2)
W
t(W)

# Nomeando a Matriz
mat3 <- matrix(c('FUtebol', 'Natação', 'Campo', 'Piscina'), nr=2)
mat3 
dimnames(mat3) = list( c("Linha1", "Linha2"), c("Coluna1", "Coluna2"))
mat3


#Identificando liunhas e colunas no momento da criação da matriz
matrix( c(1,2,3,4), nr = 2, nc = 2, dimnames = list(c("Linha 1", "Linha 2"), c("coluna 1", "coluna 02")) )



# Inversa
solve(W)






# array - N Dimensions
array1 <- array(1:5, dim = c(3,3,3))
array1
mode(array1)
class(array1)
typeof(array1)
length(array1)






# dataframes
View(iris)
length(iris)
mode(iris)
class(iris)
typeof(iris)


# Lists

l1 <- list(a=m1, b=v1)
length(l1)
mode(l1)
class(l1)
typeof(l1)
typeof(iris)



# Functions

f1 <- function(x) {
  var1 <- x*x
  return(var1)
}


f1(10)
class(f1)



## DataFrames

#Criando um dataframe vazio
df <- data.frame()
class(df)
df

# Criando vetores vazios
nomes <- character()
idades <- numeric()
datas <- as.Date(character())
codigos <- integer()

df <- data.frame(c(nomes, idades, datas, codigos))
df

# Criando vetores
pais = c("EUA", "Dinamarca", "Holanda", "Espanha", " Brasil")
nome= c("Maurício", "Pedro", "Aline", "Beatriz", "Marta")
altura = c(1.78, 1.72, 1.63, 1.59, 1.63)
codigo = c(5001, 2183, 4702, 7965, 8890)

# Criando um dataframe de diversos vetores
pesquisa= data.frame(pais, nome, altura, codigo)
pesquisa

# Adicionando um novo vetor a um dataframe existente
olhos = c("verde", "azul", "azul", "castanho", "castanho")
pesq =  cbind(pesquisa, olhos)
View(pesq)


# Informações sobre o dataframe
str(pesq)
dim(pesq)
length(pesq)


# Obtendo um vetor de um dataframe
pesq$pais
pesq$nome

# Extraindo um unico valor
pesq[1,1]


