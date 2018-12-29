library(tidyverse)


# Raphael Weldon ----------------------------------------------------------

res <- c()
for (i in 1:1000) {
  x <- replicate(sample(1:6, 12, replace=TRUE), n=i) 
  res[i] <- sum(x == 1) / (12*i)
}
plot(res, xlab = "repetition", ylab = "prob")
abline(h = 0.167, col = "red")



# monty 1 -----------------------------------------------------------------

doors <- c("A","B","C")

xdata <- c()
for (i in 1:1000){
  prize <- sample(doors)[1]
  pick <- sample(doors)[1]
  open <- sample(doors[which((doors != pick) & (doors != prize))])[1]
  switchyes <- doors[which((doors != pick)&(doors != open))]
  if (pick == prize){xdata <- c(xdata,"nowin")}
  if (switchyes == prize){xdata <- c(xdata, "yeswin")}
}

length(which(xdata == "yeswin")) / i
length(which(xdata == "nowin")) / i



# monty 2 -----------------------------------------------------------------

ydata <- c()
for (i in 1:1000){
  prize <- doors[1]
  pick <- sample(doors)[1]
  open <- sample(doors[which((doors != pick) & (doors != prize))])[1]
  switchyes <- doors[which((doors != pick)&(doors != open))]
  if (pick == prize){ydata <- c(ydata,"nowin")}
  if (switchyes == prize){ydata <- c(ydata, "yeswin")}
}

length(which(ydata == "yeswin")) / i
length(which(ydata == "nowin")) / i
