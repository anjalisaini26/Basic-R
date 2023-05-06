#plot
#lwd=line width
#lty=line type
#colour=col.axis
#lab=lables
#colour title=main
#cex=indicate 
#cex lable=
dose=c(20,30,40,45,60)
drugA=c(16,20,27,40,60)
drugB=c(15,18,25,31,40)
par(pin=c(2,3))
par(lwd=3,cex=1.5)
par(cex.axis=1,font.axis=3)
plot(dose,drugA,
     type="b",pch=25,lty=2,
     col="blue",bg="green")


title(main="line diagram",col.main="red",sub="drug A vs dose ",col.sub="blue",
      xlab="dose",ylab="drug al",col.lab="green",cex.lab=.5)

mtcars=read.csv("C:/Users/admin/Desktop/mtcars.csv")
View(mtcars)

dotchart(mtcars$mpg,labels = row.names(mtcars),
         cex = 0.5,color="blue",main="gas mileage by cars",
         xlab="miles/gallon")

mycars=mtcars[order(mtcars$mpg),]
mycars$cyl= factor(mycars$cyl)
mycars$color[mycars$cyl==4]="red"
mycars$color[mycars$cyl==6]="blue"
mycars$color[mycars$cyl==8]="purple"
dotchart(mycars$mpg,labels = row.names(mycars),cex=0.5,groups=mycars$cyl,
         main = "gas milage by cars",xlab="MPG",color = mycars$color)


grades=read.csv("C:/Users/admin/Desktop/grades.csv")
View(grades)
a=table(grades$ethnicity)
a
group=c("native/american","asian","black","white","hispanic")
pie(a,lables=group,main="pie ethnicity")

prcnt =round(a/sum(a)*100)
grouped=paste(group,prcnt)
label=paste(grouped,"%",sep="")
pie(a,labels =label,
    col=rainbow(length(label)),
    main="pie chart of ethnicity")

library(plotrix)
pie3D(a,labels = label,explode = 0.1,
      main="pie chart of etnicity")

mpg=read.csv("C:/Users/admin/Desktop/mpg.csv")
View(mpg)
 install.packages("ggplot2")
library(ggplot2)
ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ,y = hwy))


ggplot(data = mpg)+
  geom_point(mapping = aes(x=displ,
                           y=hwy,color=class))

ggplot(data = grades)+
  geom_point(mapping = aes(x=gpa,
                           y=final,
                           color = ethnicity,
                           size = ethnicity))

ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ,
                           y= hwy,
                           color = class,
                           size = class))

ggplot(data = grades)+
  geom_point(mapping = aes(x=gpa,y = final,color = ethnicity, 
                           size = ethnicity,
                           shape = ethnicity))
ggplot(data = grades)+
  geom_smooth(mapping = aes(x=gpa,
                            y= final,
                            group = ethnicity,
                            color = ethnicity))
ggplot(data = grades)+
  geom_smooth(mapping = aes(x = gpa,
                            y= final,color =ethnicity,
                            size = ethnicity))
ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ,
                           y=hwy))+
  facet_wrap(~class,nrow = 2)


ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ,
                           y = hwy, color = class ,size = class))

ggplot(data = mpg,mapping = aes(x = displ,
                                y=hwy))+
  geom_point(mapping = aes(color = class))+
  geom_smooth()





#stem and leaf
data=c(21,23,25,35,38,39,45,46)
stem(data)









