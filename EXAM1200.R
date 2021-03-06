#<共20題 ， 要對14題>

-----------------------------------------#1 求平均值-----------------------------------------
setwd("c:/cert")                                                              #設定路徑
x <- read.csv("A-1.csv",header = FALSE)                                       #讀取檔案
x                                                                         #列出所有資料
str(x)                                                    #data.frame通常要轉換成matrix
x<-as.matrix(x)                                              #轉換data.frame→matrix型態
mean(x)
summary(x)

#Ans:答案171.2

-----------------------------------------#1 求平均值-----------------------------------------


-----------------------------------------#2 求最大值-----------------------------------------
setwd("c:/cert")                                                             #設定路徑
x <- read.csv("A-3.csv",header = FALSE)                     #讀取檔案(記得是開A-3.csv)
x                                                                        #列出所有資料
str(x)
x<-as.matrix(x)
max(x)                                                                         #最大值

#Ans:答案126.9
-----------------------------------------#2 求最大值-----------------------------------------

-----------------------------------------#3 求第一四分位-------------------------------------
setwd("c:/cert")
x <- read.csv("A-4.csv",header = FALSE)                     #讀取檔案(記得是開A-4.csv)
x
str(x)
x<-as.matrix(x)
quantile(x,0.25)
summary(x)

#Ans:答案13.50(1st Qu.:13.50)
-----------------------------------------#3 求第一四分位-------------------------------------


#4 求全距(最大值-最小值)
setwd("c:/cert")
x <- read.csv("A-5.csv",header = TRUE)                                   #有Header!!!
x
str(x)
x<-as.matrix(x)
max(x)-min(x)

#Ans:答案 110



#5 變異數
setwd("c:/cert")
x <- read.csv("A-6.csv",header = FALSE)                                   
x
str(x)
x<-as.matrix(x)
var(x)

#Ans:答案 10


#6 相關係數
setwd("c:/cert")
x <- read.csv("C-1.csv",header = TRUE)                                   
x
hour <- x[2]
grade <- x[3]

cor(hour,grade) #都是正相關
cor(grade,hour) 

#Ans:答案 0.9108227



#7
#課本 1-13 14 15 
#List的彈性最大



#8
#課本 3-2
#請問那些函數不是R裡面有的迴圈
#for while repeat →這些屬於R的迴圈



#9
#x<-2
#if(x<3) y=NA else y=5
#print(y)
#答案 y=NA



#10 4!階層 (運用遞回)
exec <- function(x){
  if(x==0) x_sum=1
  else 
    x_sum=x*exec(x-1)
  return(x_sum)
}
exec(4)

#答案 Ans=24

#11 解決NA的字 
na.rm=true

#-----------------------------------------#12 課本3-7-----------------------------------------
a<-matrix(1:12, nrow=3, byrow=TRUE)
a
#apply 可以直接對a陣列做加總
#apply(變數,1=列的加總/2=行的加總)
apply(a,1,sum) #←考試題目 
#apply(a,2,sum) 
#-----------------------------------------#12 課本3-7-----------------------------------------

#13 #計算各個數字出現的次數
x<-c(1,1,1,3,2,2,3)
table(x) #計算各個數字出現的次數

#14 #下列何者不是高階繪圖(選擇題) indentity hist plot pairs
#答案 indentity(互動式繪圖) 

#15 這是2*3的矩陣
x<-c(1,2,5)
y<-c(3,5,10)
(rbind(x,y))  #rbind 用row的方式結合(bind)在一起.

#16 請問summary的函式提供那些資訊??
x<-c(1,2,3)
summary(x)
#答案:裡面所提供資訊之外的就是答案

#17 請問註解符號是哪個???

#18 R軟體變數名稱宣告 課本p1-3
# 第一個字母必須為英文字
# 錯誤:變數不可以宣告為 "3x" 第一個字母不可以為數字→非法宣告 
# 答案: 找第一個字母為數字的!!!

#19
ifelse(2>=3,2,3)
#如果2>=3 → 輸出2 不然就是 3
#答案:3

#20
x1 <- 9%%5  #求餘數
x2 <- 9%/%2 #求商數
x1
x2

(9/2)
