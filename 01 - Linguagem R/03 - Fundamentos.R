## BIG DATA
# Source: berkleyearth.org/data


# Install packages 
install.packages("readr")
install.packages("data.table")

# loading packages
library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)


# load datasets

#with read.csv
system.time( df_test1 <- read.csv("./datasets/TemperaturasGlobais.csv") )

#with data.table
system.time( df_test2 <- read.table("./datasets/TemperaturasGlobais.csv"))


#with fread
?fread
system.time(df <- fread("./datasets/TemperaturasGlobais.csv"))


#creating subsets
brazilCities <- subset(df, Country == 'Brazil')
tail(brazilCities)
head(brazilCities)
nrow(df)
nrow(brazilCities)
dim(brazilCities)


# remove NA values
brazilCities <- na.omit(brazilCities)

# Data treatments
brazilCities$dt <- as.POSIXct(brazilCities$dt, format="%Y-%m-%d")
brazilCities$Month <- month(brazilCities$dt)
brazilCities$Year <- month(brazilCities$dt)



palmas <- subset(brazilCities, City == "Palmas")
palmas <- subset(palmas, Year %in% c(1796, 1846, 1896, 1946, 1996, 2012 ))
tail(palmas)
nrow(palmas)
head(palmas)

curitiba <- subset(brazilCities, City == "Curitiba")
curitiba <- subset(curitiba, Year %in% c(1796, 1846, 1896, 1946, 1996, 2012 ))
tail(curitiba)
nrow(curitiba)
head(curitiba)


recife <- subset(brazilCities, City == "Recife")
recife <- subset(recife, Year %in% c(1796, 1846, 1896, 1946, 1996, 2012 ))
tail(recife)
nrow(recife)



plot_palmas <- ggplot(palmas, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) + 
  geom_smooth(se = FALSE, fill = NA, size = 2) +
  theme_light(base_size = 20)
  xlab("Mês") +
  ylab("Temperatura média") + 
  scale_color_discrete("") +
  ggtitle("Temperatura ao longo dos anos em Palmas") +
  theme(plot.title = element_text(size = 18))

plot_palmas




## Built in functions
abs(-113)
sum(c(1:34))
mean(c(1:42))
round(c(1.2:5.9))
rev(c(1:30))
seq(1:3)
sort(rev(c(1:32)))
append(c(1:3), 32)


## Functions

myFunc <- function(x) { x + x }
myFunc(10)
class(myFunc)


myFunc2 <- function(x, y) { x + y }
myFunc2(2, 3)

sample(1:6, size = 1) # genenrate randon sample


# Declare function with N parameters
myFunc3 <- function(...) {
  df = data.frame(cbind(...))
  print(df)
}

v1 <- c(10:13)
v2 <- c("a", "b", "c", "d")
v3 <- c(2.5, 9.6, 14.5, 5.6)


myFunc3(v1)
myFunc3(v2, v3)
myFunc3(v1, v2, v3)





