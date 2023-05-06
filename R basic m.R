
#vector
vector=c(1,2,3,4)
vector
class(vector)
vector[[2]]#indexing



#list
l=list(1,"a",T)
l
l[[2]]
class(l)
class(l[[1]])
list1=list(c(1,2,3),c("a","b","c"),c(T,F,T))
list1
list1[[1]][2]
list1[[3]][3]

#matrix
m1=matrix(c(1,2,3,4,5,6))
m1
m2=matrix(c(1,2,3,4,5,6),nrow = 2,ncol =2)
m2
m3=matrix(c(1,2,3,4,5,6),nrow = 2,ncol=3,byrow=T)
m3
m3[2,2]
m3[2,3]
m4=matrix(c(1,2,3,4,5,6),nrow=3,ncol=4)
m4          
#array

v=c(1,2,3,4,5,6)
v1=c(7,8,9,10,11,12)
a1=array(c(v,v1),dim=c(2,3,2))
a1
a1[1,2,1]

#factor

color=c("red","blue","yellow")
color
color1
as.factor(color)->color1
str(color1)
levels(color1)
length(color1)
#change values
color[3]<-"green"
color
color2=factor(c("durga","tarun","manisha"))

#dataframe
data.frame(fruit=c("apple","banana","guava"),fruitprice=c(25,48,56))->fruits
fruits$fruit
fruits$fruitprice
str(fruits)

#inbuilt function
View(iris)#show table
str(iris)#structure
head(iris)#upper line
head(iris,4)
tail(iris)#last line
tail(iris,7)
table(iris$Species)
 
min(iris$Sepal.Length)
max(iris$Sepal.Length)
mean(iris$Sepal.Length)
range(iris$Sepal.Length)


#decision making statements
if(iris$Sepal.Length[1]>4){
  print("sepal length is greater than 4")
}else if {
  print("sepal length is less than 4")
      }

#while
i<-1
while(i<6){
  print(i)
  i<-i+1
}


i<-1
while(i<6){
  print(i)
  i<-i+1
  if(i==4){
    break
  }
}



#for loops

for (x in 1:10){
  print(x)
}

fruits<-list("apple","banana","cherry")
for (x in fruits){
  print(x)
}

fruits<-list("apple","banana","cherry")
for (x in fruits){
  if (x=="cherry"){
    break
  }
  print(x)
}

#function
myfunction<-function(){
  print("hello")
}
myfunction()

#arguments

myfunction<-function(fname){
  paste(fname,"griffin")
}
myfunction("anjali")
myfunction("tarun")

#return

myfunction<-function(x){
  return (5 * x)
}

print(myfunction(6))
 
#plot

plot(1,3)

plot(c(1,8),c(3,10))

plot(c(1,2,3,4,5),c(3,7,8,9,12))
 
par(c(4,6,7,8)c(4,6,8,10))
   
x<-c(1,2,3,4,5)
y<-c(3,7,8,9,12)
plot(x,y)
plot(x,y,type = "o",main = "anjali",xlab = "time",ylab = "name",pch=25,lty=2,lwd=1)
plot(1:10)

plot(1:10),type="l")

plot(1:10,type = "l",col="red")
#gave name x-axis or y-axis
plot(1:10,main = "my graph",
     xlab = "the x-axis", ylab = "the y axis")
#add a color to the points 
plot(1:10,col="red")
#change the size of piont
plot(1:10,cex=2)
#change the point shape
plot(1:10,pch=25,cex=2)
 
plot(1:10,type="l",lwd=5,lty=3)


line1=c(1,2,3,4,5,10)

line2=c(2,5,7,8,9,10)
plot(line1,type = "l",col=
       "red")
lines(line2,type="l",col=
"blue")

#pie chart

x=c(10,20,30,40)
pie(x)

#start angle
pie(x,init.angle = 90)

#lable and header
mylabel=c("apples","bananas","cherries","dates")
pie(x, label= mylabel,main=
"fruits")
colors=c("red","blue",'yellow',"black","green")
pie(x,label=mylabel,col=colors)

legend("bottomright",mylabel,fill=colors)



install.packages("e1071")
library(e1071)
x=c(1,3,5,7,9)
skewness(x)






















