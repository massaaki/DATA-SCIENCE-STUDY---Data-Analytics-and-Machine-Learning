## Familia Apply - Optimized way to make loops


# apply() - Arrays ? Matrix
# tapply() - vectors can be divided by differents groups
# lapply() - vetors | lists
# sapply() - similar lapply()
# vapply() - similar sapply(), with modificied return value
# rapply() - similar lapply()
# eapplu() - generate a list
# mapply() - similar sapply with multiple vars

# Recomendation
# List, numeric, char (list/vector) -> sapply or lapply
# Matrix, Data.frame (genetated by column) -> by / tapply
# Line Operations or specific operations -> apply

# Sample usage
list1 <- list(a = (1:10),b = (45:77))

# Similar without apply functions
v1 <- 0
v2 <- 0

for(i in list1$a) {
  v1  = v1 + i
}

for(j in list1$b) {
  v2 = v2 + j
}

print(v1)
print(v2)


# With SAPPLU()
?sapply
sapply(list1, sum)

sapply(list1, mean)


# With APPLY()
?apply

x <- matrix(rnorm(9), nr =3, byrow=T)
x
apply(x, 1, mean) #line operation
apply(x, 2, mean) #column operation
apply(x, 1, plot)


resultApply <- apply(x, 1, mean)
resultApply



# REAL EXAMPLE 

escola <- data.frame(
  Aluno = c('Aluno 01', 'Aluno 02', 'Aluno 03', 'Aluno 04', 'Aluno 05'),
  Matematica = c(90, 50, 60, 80, 70),
  Geografia = c(100, 90, 50, 60,70),
  Quimica = c(60, 80, 90, 100, 100)
)

escola
escola$Geografia

# Student mean
escola$Media = NA
escola
escola$Media = apply(escola[, c(2,3,4)], 1, mean) #all lines, 2,3,4 column, line agregate, mean function
escola
escola$Media = round(escola$Media)
escola



install.packages('sqldf')
require(sqldf)


escola2 <- data.frame(
  Aluno = c('Aluno 01', 'Aluno 02', 'Aluno 03', 'Aluno 04', 'Aluno 05', 'Aluno 06'),
  Semestre = c(1, 1, 1, 2, 2, 3),
  Matematica = c(90, 50, 60, 80, 70, 65),
  Geografia = c(100, 90, 50, 60, 70, 100),
  Quimica = c(60, 80, 90, 100, 100, 60)
)

escola2

sqldf("select aluno, sum(Matematica), sum(Geografia), sum(Quimica) from escola2 group by aluno")
tapply(c( escola2$Matematica ), escola2$Aluno, sum)


sqldf("select aluno, sum(Matematica), sum(Geografia), sum(Quimica) from escola2 group by semestre")
by(escola2[,c(2,3,4)], escola2$Semestre, colSums )




