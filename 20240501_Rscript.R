x <- cbind(c(175, 160, 182, 165),
           c(68, 55, 85, 72))

x <- cbind(1, x)
y <- cbind(22.2, 21.5, 25.6, 26.4)

xtx <- t(x) %*% x 
xty <- t(x) %*% y

betahat <- solve(xtx) %*% xty
betahat

## 예제2
yhat <- x %*% betahat
yhat


ssr <- sum((yhat - mean(y))^2)
sse <- sum((y - yhat)^2)
sst <- sum((y - mean(y))^2)

#sst <- ssr + sse

sss <- c(ssr, sse)
df <- c(3-1, 4-3)
mss <- sss/df
f()<- mss[1] / mss[2]

qf(0.05, df[1], df[2], lower.tail = F)

sss[1] / sum(sss)
rsq <- sss[1]/sum(sss)
adjrsq <- 1-(3)/(4-3)*(1-rsq)
adjrsq

xnew <- c(1, 170, 60)
ynew <- xnew %*% betahat

ci <- qt(0.025, df=4-3, lower.tail = F) *
          sqrt(mss[2] * t(xnew)) %*% solve(xtx) %*% xnew)

ynew + ci
ynew - ci









