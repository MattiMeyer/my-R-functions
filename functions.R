

# Variablen auswählen/nicht auswählen, die mit anderem Datensatz ü --------

## Es werden die Variablen aus dem data frame ausgewählt, deren Name mit den
## Namen der Variablen eines anderen data frame übereinstimmen. Oder es werden
## die Variablen ausgewählt die nicht mit den Namen des anderen data frames über-
## einstimmen.

## data: data frame aus dem Variablen ausgewählt werden sollen
## namevar: data frame mit den Namen der Variablen
## samevariables (default=TRUE): Soll der Output die gleichen Variablen
## enthalten oder sollen alle Variablen außer die Variablen im namevar Argument
## ausgegeben werden

extractv <- function(data, namevar, samevariables=TRUE){
list.names <- names(data) %in% names(c(namevar))
coloumns <- which(list.names == samevariables)

data[coloumns]
}

##Beispiel:
# x <- data.fCrame(x1=c(1,2,3), x2=c(5,4,6), x3=c(4,4,6))
# y <- data.frame(x1=c(34,5,6))
# extractv(data = x, namevar = y, samevariables = TRUE)
# extractv(data = x, namevar = y, samevariables = FALSE)



# Time Stamps Berechnung --------------------------------------------------


names(data)
data$Gruppe

test <- data %>%
 select(Gruppe==1,contains("TS"))%>%
 filter(Gruppe == 1)

#### Die Funktion muss so geschreiben sein, dass nur die Items ausgewählt werden, die 
#### zu Gruppe 1 gehören
glimpse(test)
test$TSGesundheit3
