#reading the csv file customer_data
customer_data=read.csv("F:/git project/Customer-segmentation/Mall_Customers.csv",stringsAsFactors = FALSE)
str(customer_data)

names(customer_data)
head(customer_data)
summary(customer_data$Age)
sd(customer_data$Age)
summary(customer_data$Annual.Income..k..)
sd(customer_data$Annual.Income..k..)
summary(customer_data$Age)
sd(customer_data$Spending.Score..1.100.)
summary(customer_data$Spending.Score..1.100.)
a=table(customer_data$Genre)
#data visualization of gender
barplot(a,main="Using BarPlot to display Gender Comparision",
        ylab="Count",
        xlab="Gender",
        col=rainbow(2),
        legend=rownames(a),xlim=c(0,5),ylim=c(0,150))
#pie chat representation of gender
pct=round(a/sum(a)*100)
lbs=paste(c("Female","Male")," ",pct,"%",sep=" ")
library(plotrix)
pie3D(a,labels=lbs,
      main="Pie Chart Depicting Ratio of Female and Male")
summary(customer_data$Age)
#customer age visualization
hist(customer_data$Age,
     col="blue",
     main="Histogram to Show Count of Age Class",
     xlab="Age Class",
     ylab="Frequency",
     labels=TRUE)
boxplot(customer_data$Age,
        col="ff0066",
        main="Boxplot for Descriptive Analysis of Age")
#visualization to analyze the anual income of the customer
summary(customer_data$Annual.Income..k..)
hist(customer_data$Annual.Income..k..,
     col="#660033",
     main="Histogram for Annual Income",
     xlab="Annual Income Class",
     ylab="Frequency",
     labels=TRUE)




