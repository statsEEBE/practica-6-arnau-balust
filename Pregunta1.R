
x <- c(506, 508, 499, 503, 504, 510, 497, 512, 514, 505, 493, 496, 506, 502, 509, 496)

#1
xbar <- mean(x)
sigma <- sqrt(25)
n <- length(x)
z_005 <- qnorm(0.05,0,1,FALSE)
c(xbar-z_005*sigma/sqrt(n) , xbar+z_005*sigma/sqrt(n))

## install.packages('BSDA')
#library(BSDA)
z.test(x, sigma.x=sigma, conf.level=0.9)


#teoria 1
xbar <- mean(x)
sigma <- sqrt(25)
n <- length(x)
z_critico <- qnorm(0.025,0,1,FALSE)
z_critico
z_obs <- (xbar-500)/(sigma/sqrt(n))
z_obs #como el zobs es mayor al zcritico, rechazo la hipotesis nula

z.test(x, mu=500, sigma.x=sigma)

#2
sigma <- sqrt(25)
n <- (qnorm(0.025,0,1,FALSE)*sigma)^2
n


#3
xbar <- mean(x)
s <- sd(x)
n <- length(x)
t0005 <- qt(0.995,n-1)
c(xbar-t0005*s/sqrt(n) , xbar+t0005*s/sqrt(n))

t.test(x, conf.level=0.99)
