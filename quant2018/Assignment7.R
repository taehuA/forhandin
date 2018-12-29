
# 주사위 눈의 합 실험 --------------------------------------------------------------
dice1 <- table(sample(1:6, 1000, replace = TRUE))
plot(dice1)

x <- replicate(1000, sum(sample(1:6, 12, replace = TRUE)))
freq <- table(x)
plot(freq)

prob <- freq/sum(freq)
plot(prob)
lines(6:72, dnorm(6:72, mean = mean(x), sd = sd(x)))



# 골턴의 기계실험 ----------------------------------------------------------------
ball <- sum(sample(c(-1/2, 1/2), 12, replace = T))

ball_1000 <- replicate(1000, sum(sample(c(-1/2, 1/2), 12, replace = T)))
ball_t <- table(ball_1000)
plot(ball_t)

ball_prob <- ball_t/sum(ball_t)
plot(ball_prob)
xs <- seq(-6, 6, length.out = 1000)
lines(xs, dnorm(xs, mean = 0, sd = sqrt(3)))
      