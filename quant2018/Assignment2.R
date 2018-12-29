x <- scan("survey.txt")
mean(x)
?sample

 # 할일 1
mean(sample(x, 1000, F))

 # 할일 2
?replicate()
z <- replicate(100, mean(sample(x, 1000, F)))

plot(density(z), main = "z's distribution")
var(z)
quantile(z, 0.95)


 # 할일 3
z <- replicate(100, mean(sample(x, 1000, F)))
z1 <- replicate(100, mean(sample(x, 100, F)))
z2 <- replicate(100, mean(sample(x, 10000, F)))
z3 <- replicate(1000, mean(sample(x, 1000, F)))

var(z1)
var(z2)
var(z3)

quantile(z1, 0.95)
quantile(z2, 0.95)
quantile(z3, 0.95)

plot(density(z1), xlab = "", ylab = "", main = "z1,2,3's distribution", xlim = c(0.25,0.5), ylim = c(0,80))
par(new=T)
plot(density(z2), xlab = "", ylab = "", main = "", xlim = c(0.25,0.5), ylim = c(0,80), col = "red")
par(new=T)
plot(density(z3), xlab = "", ylab = "", main = "", xlim = c(0.25,0.5), ylim = c(0,80), col = "blue")


