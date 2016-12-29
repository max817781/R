#Hello 

y<-c("x")

z<-c(50)

plot(y,z)

demo(graphics)

#---�����---

data(iris);
plot(iris);

#---�����---

#---�e�Y�a��---

install.packages('ggmap') #�w�˫��O

library(ggmap) 
map.taiwan<-get_map(location = "Taiwan",zoom=8)
ggmap(map.taiwan)

#�w�ˮM��
install.packages("C50")   
#���J�M��
library(c50)
#�����M��
remove.packages("C50")
#��s�M��
update.packages("C50") 

#---�e�Y�a��---

#---�ƾǽm��---

x<-10

y<-x^2

z<-sqrt(y)

#---�ƾǽm��---

#---���A�m��---
x1 <- 10
mode(x1)
length(x1)

x2 <-10.11
mode(x2)
length(x2)

x3 <- T
mode(x3)
length(x3)

x4 <- "Hello"
mode(x4)
length(x4)

x5 <- 4+2i
mode(x5)
length(x5)

x6 <- c(1,2,3,4,5)
mode(x6)
length(x6)

#1006
v <- c(10, 5, 3.1, 6.4, 9.2, 21.7)
v
length(v)
mode(v)

#NA(�ʭ�)
v <- c(10, 5, NA, 6.4, 9.2, 21.7)
v
v[2]

v2 <-1:10
v2
v2[1]

# ---���A�m��---

#Matrix(�x�})
x<- matrix(1:24, nrow = 4, ncol=6, byrow = TRUE)
x

#�H�C���D
y<- matrix(1:24, nrow = 4, ncol=6, byrow = FALSE)
y

#cbind()&rbind()

#cbind() �X�֦���
x1 <- c(1,2,3)
x2 <- c(4,5,6)
x3 <- c(7,8,9)

xc <- cbind(x1,x2,x3)
xc

xr <- rbind(x1,x2,x3)
xr

#��m(Transposition)
xc_t <- t(xc)
xc_t

nrow(x)
ncol(x)

#����m
x[1,]
x[,2]
x[2,3] #�d��m

#�@�w�n��ٰ}�C
eigen(xc)

#�x�}�ۭ�
xc
xr
z <- xc %*% xr 
z
#https://zh.wikipedia.org/wiki/%E7%9F%A9%E9%99%A3%E4%B9%98%E6%B3%95

#---Array(�}�C)---

#�g�k1
x <-1:24
dim(x) <- c(4,6)
#�g�k2
x <-array(1:24, dim=c(4,6))
x #�L�Xx

#�T��
#�g�k1
dim(x) <- c(3,4,2)
#�g�k2
x2 <-array(1:24, dim=c(3,4,2))
x2#�L�Xx
x2[2,3,1] #��T����m

x3 <-array(0, dim=c(3,4,2))
x3#�L�Xx

#---Array(�}�C)---

#Factor(�]�l)
x <- factor(c("�k","�k","�k","�k","�k"))
x

#---dataframe(��Ʈج[)---

id <- c(1,2,3,4)
age <- c(25, 30, 35, 40)
sex <- c("Male", "Male", "Female", "Female")
pay <- c(30000, 40000, 50000, 50000)

x_dataframe <- data.frame(id, age, sex, pay)
x_dataframe

x_dataframe[3,2]
x_dataframe[4,]
x_dataframe[2]
x_dataframe$age
x_dataframe<- edit(x_dataframe)
x_dataframe


#list�C��
id<- c(1,2,3)
sex <- c("Male", "Male", "Female")
pay <- c(30000, 40000, 50000)
y_dataframe <- data.frame(id, sex, pay)
gender <-factor(c("�k","�k","�k"))
Paul.Family <- list(name="paul", wife="iris", no.kid=3, kid.age=c(25,28,30), gender, y_dataframe)

Paul.Family #����

Paul.Family$kid.age
Paul.Family[4] #�h�@�����W��
Paul.Family[[4]] 

Paul.Family$kid.age[2]
Paul.Family[[4]][2]
#���~��Paul.Family[4][2] ���]���|�^�������W��


#CH2 ��ƪ�Ū���P�g�J
getwd()
setwd("c:/")
getwd()

x <- read.table("x.csv", sep=",", header=TRUE)
x
x$age
x[1,2]

#P2-2�@���O�̤U��
x<-read.table("x.csv",sep = ",",header = FALSE) #���~
x
str(x)

#P2-3  �̤W��
x<-read.csv("x.csv",header = TRUE)
x

X<-read.table("x.txt", sep = " ",header = TRUE) #���~
X


#sep�w�]��tabe
X<-read.table("x.txt",sep="\t", header=TRUE)
X

X<-read.table("x.txt",header = TRUE)
X

x <-scan("")
x


#P2-4
my <- scan(file="", what=list(name="", pay=integer(0),sex=""))
my

#��scanŪ��
x <- scan("X1.csv",sep=",")
x

x <- scan("X1.txt")
X

X <- scan("x1.csv", sep=",", what=list(id=integer(0), age=integer(0), pay=integer(0)))
X

x<-scan("x1.txt")
x

write.table(x, "c:/x_File.csv", row.names=FALSE, col.names=FALSE, sep=",")

x<-scan("x1.csv", sep=",", what=list(id=integer(0), age=integer(0), pay=integer(0)))

write.table(x, "c:/x_File1.csv", row.names = FALSE, col.names = TRUE, sep=",")

#data()���ظ�ƶ�
data()

data(iris)
iris
str(iris)
summary(iris)

save(iris, file="c:/iris.RData")
load("c:/iris.RData", .GlobalEnv)
iris


#�ĤT�� �y�{����
a<-c(1,2,3)
x<-a+2  #����+2
x

#������ܵ��G
(x<-a+2)

#���X�R�O
{a<-c(1,2,3);x<-a+2} 
x

({a<-c(1,2,3); x <-a+2})

#if else
x <- 6
if (x>5) y=2 else y=4
y
#�m��2
x<-3
if(x<5) y=10
y
#�m��3
x<-3
x<-1
if(x<5 && y<5) {y<-10; z<-5}
y
z
#�m��4
x<-20
y<-ifelse (x>5,2,3)
y



#1027
if(x>5) y<-2 else y <-3
y

#switch �ҥ�3-3��
#switch
x<- 3
switch(x,5,sum(1:10),rnorm(5))

y<-1
switch(y,juice="Apple",meat="Pork")

y <-"juice"
switch(y,juice="Apple",meat="Pork")

#for
x<-0
for(i in 1:5) x<-x+i
x

x<-0
y<-0
for(i in 1:5) {x<-x+i;y<-i^2}
x
y

#while
sum<-0
i<-0
while(i<=10) {sum<-sum+i; i<-i+1}
sum

#repeat
sum<-0
i<-1
repeat{
  sum <- sum +i
  i <- i + 1
  if(i>10) break
}
sum

# %% �l�� %%�@��
sum <-0
for(i in 1:50){
  if(i%%2==0) next
  sum <- sum + i
}
sum

#apply
x <- array(1:24, dim = c(4,6))
x
apply(x,1,sum)
apply(x,2,sum)

#�ۭq���
myfun <- function(x) {y <-x+2; return(y)}
myfun(1)
myfun(100)

# <<- ���ܨ�ƥ~������
y<-1
myfun <- function(x) {x<-2; print(x)}
myfun(x)
y
x<-1
myfun <-function(x) {x<<-2; print(x)}
myfun(x)
x

#�@�~ factorial���h
x<-5
i<-1
sum<-1
myfun <- function(x,i) {for(i in 1:x) sum<<-sum*i; print(sum)}
myfun(x,i)
sum
