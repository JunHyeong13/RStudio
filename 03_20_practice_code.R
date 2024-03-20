
dat <-read.csv(list.files(pattern='.csv'))
head(dat)

#불필요한 요소 제거.
dat <- dat[,-(1:2)]
head(dat)

summary(dat)

#Target을 설정해주고, 이를 출력해봄.
dat$Target <- as.factor(dat$Target)
dat$Type <- as.factor(dat$Target)
dat$Failure.Type <- as.factor(dat$Failure.Type)


visualize <- function(x){
  if(is.factor(x)){
    barplot(table(x), col='grey')  
  } else {
    hist(x, col ='grey')
  }
}

par(mfrow=c(4,2), mar=c(2,4,2))
for (i in 1:ncol(dat)){
  visualize(x=dat[,i])
}

head(dat)
dat_split <- split(dat$Tool.wear..min., dat$Target)
summary(dat_split)
