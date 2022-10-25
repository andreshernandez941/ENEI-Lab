/Clase 01 Taller RStudio
/23 de Octubre del 2022

peso<-c(4.5,5.4,6.4,3.2,7.5,3,6.1,3.1,6.1,7,3.4)
edad<-c(1,2,3,4,5,6,7,8,9,1,2)
length(peso)
length(edad)
cor(peso,edad)

nombre<-c("juan","pp","inaky","amparo","mariano","juancar","fulano","elefante")
edad<-c(23,24,45,67,32,56,78,45)
peso<-c(34,34,56,78,34,56,76,87)

caseid<-c(1:length(peso))
df<- data.frame(caseid,nombre,edad,peso)

faculty$rank<-factor(faculty$rank,levels = c(1,2,3), labels = c("Asistente","Asociado","Full"))

table(faculty$rank)

tablerank<-as.data.frame(table(rank=faculty$rank))


tablerank

transform(tablerank,FreqAc=cumsum(Freq),Rel=round(prop.table(Freq),3))

faculty$male<-factor(faculty$male,levels = c(0,1),labels = c("femenino","masculino"))

tablemale<-as.data.frame(table(rank=faculty$male))

transform(tablemale,FreqAc=cumsum(Freq),Rel=round(prop.table(Freq),3))

barplot(table(faculty$rank),xlab = "Categoria", main = "Categoria docente", col = rainbow(4))
