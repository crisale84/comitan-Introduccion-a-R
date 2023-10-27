#Leyendo datos desde un archivo
#Usando: "ImportDataset"

library(readr)
ARA_TRAT_REP1 <- read_delim("ARA_TRAT_REP.txt", 
                            "\t", escape_double = FALSE, trim_ws = TRUE)

L5 <- read_csv("L5.csv")


#Exportar datos
list.files()
write_tsv(ARA_TRAT_REP,           # objeto a guardar AL ORDENADOR
          "x.tsv")      # guardar como: x,nota: extension, todo va en comillas

#ejemplo de analisis estadistico
#EJEMPLO

# sorting examples using the mtcars dataset
search()
data(mtcars)
mtcars
search()
attach(mtcars)
mtcars$hp
#cortar dentro de una tabla tabla[renglones,columnas]
mtcars[,1:2]
help(boxplot)

boxplot(log(mtcars[,1]+1)~mtcars[,2], 
        col=c("green","red","blue"), 
        main="Curso", ylab="M por G", 
        xlab="Cilindros")

#[, 1]	mpg	Miles/(US) gallon
#[, 2]	cyl	Number of cylinders
#[, 3]	disp	Displacement (cu.in.)
#[, 4]	hp	Gross horsepower



#Ejercicios


#1.- INSTALAR LAS SIGUIENTES  PAQUETERIAS 
install.packages("readr")
install.packages("car", dependencies = TRUE)
install.packages("plyr", dependencies = TRUE)
install.packages("reshape2", dep= T)
install.packages("MASS", dependencies = TRUE)
install.packages("ade4", dependencies = TRUE)
install.packages("vegan",dependencies = TRUE)
install.packages("ggplot2", dependencies = TRUE)

#2.- Crea una carpeta de trabajo que se llame: "workshop Introduccion a R", y redirecciona tu Rstudio 
#    hacia ella


#3.- Para el siguiente vector:
{"ejercicio.- Se tiene registrado el lugar de nacimiento de seis individuos,
con la siguiente codificación: 1.- Dublin, 2.- London, 3.- Sofia, 4.-Pontevedra,
individuo 1.- sofía (3)
individuo 2.- Londres, (2)
individuo 3.- Dublin,(1)
individuo 4.- Pontevedra, (4)
individuo 5.- Sofia,(3)
individuo 6.- Londres.(2)
Haz un vector de nombre individuos con la codificación para cada país
Ahora, conviertelo a factor.
¿Cuántos niveles tienes?
  "}


