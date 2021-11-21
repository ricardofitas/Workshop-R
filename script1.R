2+2
10^2
sqrt(10)
pi
exp(1)
exp(0)
#Criação de objetos
num<-10
num_2=10
num2<-num
2->num
num+num_2
soma<-num+num_2
#Data types
class(soma)
integer<-as.integer(4)
class(integer)
integer<-(1+1i)
i<- 1
integer<-as.complex(1+i)
class(integer)
integer<-as.array(12,3,4,5,6)
integer<-TRUE
class(integer)
integer_bool_false<-FALSE
!TRUE
!i
!num
ii<-0
!ii
isTRUE(integer)
i<-F
F<-d
F<-i
5==10
### Characters
nome<-"Ricardo"
nome<-'Ricardo'
nome<-""Ricardo""
aux<-"olá"
aux + nome
paste(aux, nome)
paste(aux, nome,'!')
frase <-paste(aux," ", nome, "!", sep="")
frase
paste0(aux, nome)
aux0 = paste0(aux, " ", nome,"!")
aux0
aux2<> "ola"
aux2 == "olá"
aux0 == "ola"
aux <- paste("Hello","world")

# vetores - criação
idades<-c(20,21,22,23)
nome<-c("Ana", "Mariana", "António", "João")
id<-1:4
gender<-c(T,T,F,F)
class(id)
class(gender)
id<-1:length(nome)
id
class(gender)

#Vetores - acesso
idades[2]
id_pesquisa<-id[2]
idades[id_pesquisa]
nome[length(nome)]
idades[c(2,3)]
idades[">10"]
idades[idades>20]
length(idades)==length(idades[idades>20])
cond = idades>=20;length(idades)==length(idades[cond])
idades[nome=="Mariana"]
class(x<-c(4,TRUE))
c(c(2,1),c(2,2))
c('a','v','c')
1:3==1:3
X(1,2)
nome[-4]
nome[-1]
nome[-3:-4]
nome[-3]
nome[c(-1,-2)]
id + idades
id
idades
1:4+2:3
##Factors
gender<-c("female", "female", "male", "male")
gender<-as.factor(gender)
class(gender)
levels(gender)
##matrices

n<-matrix(1:6,ncol=2)
n[1,1]
## aceder a valores
n[2,1]
n[5,1]
nn<-c(2,2,2)
nn[4]
n[,2]
cbind(c(1,3,5),c(3,2,10))


#Data frames
conc = c(5,12,20)
vol = c(20, 25, 33)

d = data.frame(conc, vol)
e <- data.frame(name=c("maria","joão"), idade=c(20,18))
e <- data.frame(name<-c("maria","joão"), idade<-c(20,18))
f <- data.frame(name=c("maria","joão"), idade=c(20,18))
f
aux <-cbind(e, genero=c("F","M"))
aux
aux <-cbind(f, genero=c("F","M"))
aux
colnames(e)
e<-f
colnames(e)
e
f
e<- aux
colnames(e)
dim(e)
summary(e)
str(e)
###extract info from dataframes
aux[2,2]
aux$idade
aux[2]
aux[,2]
aux[2,]
aux[,"idade"]
aux["joão",]
aux["joao",]
aux[,c("nome","idade")]
aux
aux[,c("name","idade")]
aux[aux[,"name"]=="maria","idade"]
aux <- rbind(aux, data.frame(name = c("zé","bernardo"),idade=c(30,31),genero=c("M","M")))
aux_2 <- aux
aux_2 <-rbind(aux, name="zé")
aux_2
str(aux_2)
aux[4,]
aux[4,]<-data.frame(nome = "anita",idade ="45", genero = "F")
aux
aux[4,]$idade
str(aux)
aux$idade <-as.numeric(aux$idade)
aux
summary(aux)
aux[aux$name = "zé"|aux$name= "maria"]
aux[aux$name == "zé"|aux$name == "maria",]
aux[aux$name %in% c("zé","maria"),]

#Desconsiderar elementos
colnames
colnames(aux)
colnames(aux)[2]
aux[,colnames(aux)[-2]]
aux[,colnames(aux)!="gender"]
aux[,colnames(aux)!="genero"]
aux_2[,colnames(aux)!="genero"]
aux_2
colnames(aux_2)<-c("nome","idade","genero")
aux
aux_2
aux[(nrow(aux)-1):nrow(aux),]
nrow(aux)
aux
aux_2<-aux
aux_2$genero<-NULL
aux_2
a<-matrix(1:4,2)
a
c<-data.frame(teste = c(T,F,T))
c
a
lista <- list(d,a,c)
str(lista)
lista[1]
lista[2]
lista[3]
lista <- list(lista,aux)
lista[4]
lista[3]
lista[2]
lista[1]
lista[[1]]
lista_a


#Function
new_function<-function(x){
  for(i in 1:x){
    b<-i^2
    print(b)
  }
  
}

new_function(6)

x=1:4
for(i in x){print(i+1)}


#apply, sapply, lapply, tapply

matriz<-matrix(1:6, nrow=3, byrow=T)
matriz
apply(matriz, 2, sum)
matriz
apply(matriz,1,sum)
sample(1:10,10)
L=list(sample(1:10,10),1:5)
str(L)
lapply(L,mean)
lapply(n,mean)
n
s<-sample(1:10,10)
lapply(s,mean)
### sapply
sapply(L,mean)
### tapply

medical <-data.frame(age=rnorm(100,mean=60,sd=12),treatments=gl(2,50, labels = c("treatment","control")))
medical
medical<-data.frame(age=rnorm(100, mean=60, sd=12), treatment=gl(2,50, labels=c("treatment", "control")))
summary(medical)


tapply(medical$age,medical$treatments,mean)
mtcars
tapply(medical$age,medical$treatments,mean)

iris
str(iris)
lapply(iris,mean)
rowMeans(iris[,1:4])
apply(iris[,1:4],2,mean)
apply(iris,2,is.numeric)
str(iris)
apply(iris,2,is.numeric)
sapply(iris,is.numeric)

### exercises
setwd("C:/Users/Ricardo Fitas/Desktop/R/mandar cenas")
dir()
tabela1 = read.csv("Soil.txt",sep="\t")
colnames(tabela1)
rownames(tabela1)
dim(tabela1)
length(tabela1[,2])
tabela1 <-data.frame(tabela1,log10(tabela1))
tabela1$log.pH<-NULL
tabela1 <-data.frame(tabela1,log.pH=log10(tabela1$pH))
tabela1
tabela1$Site<-NULL
tabela2<-tabela1[,1:4]
tabela2
str(tabela2)
tabela1$cond
tabela1_sub1<-tabela1[tabela1$cond>100,]
tabela1_sub1
str(tabela1_sub1)
tabela1_sub1<-tabela1[tabela1$cond>100 & tabela1$H2O<32]
tabela1_sub1<-tabela1[tabela1$cond>100 & tabela1$H2O<32,]
tabela1_sub2<-tabela1_sub1
tabela1_sub3<-tabela1[is.na(tabela1)==FALSE,]
cond = apply(is.na(tabela1), 1, any)
tabela1_sub3<-tabela1[cond==FALSE,]
tabela1_sub3
myData[,apply(is.na(myData),2,sum)==0]
cond
tabela1_sub3<-tabela1[cond,]
tabela1_sub4<-tabela1[tabela2$pH<7,]$X
tabela1_sub4
tabela1[tabela1$pH==5.4,]
tabela3 <-tabela1[order(tabela1$pH),] #increasing
tabela3
tabela4 <-tabela1[order(tabela1$pH, decreasing=TRUE),] #decreasing
tabela4
tabela3[3,]$pH<-NA
tabela3
