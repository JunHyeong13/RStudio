# 제곱근 
x = sqrt(2)
print(x)

# 절대값 
x1 = abs(-4.5)
print(x1)

# 상용로그
x2 = log10(20)
print(x2)

# 지수함수
x3 = exp(5)
print(x3)

# 감마함수
x4 = gamma(5)
print(x4)

# 자연 로그
x5 = log(20)
print(x5)

# 반올림
x6 = round(3.141592)
print(x6)

# 예제2 _ R내장함수 확률밀도함수 산출
x <- 5
mu <- 5
sigma <- 1

normal_density <- dnorm(x, mean = mu, sd = sigma)
print(normal_density)

# log=True 를 하게될 경우, 자연로그 ln을 취하게 됨.
x <- 1
lambda <- 5

exponential_density <- dexp(x, rate = lambda)
print(exponential_density)


# 와이블함수 분포 || x값을 취함.
x <- 50
a <- 80
b <- 1.5

weibull_density <- dweibull(x, shape = a, scale = b)
print(weibull_density)

# 과제 3-1  (A & B 사칙연산)
A = 5
b = 6

tmp <- b ** 2
result <- 2*A + tmp 
print(result)

# 과제 3-2 
result1 <- (10**5) + (3 ** b)
print(result1)

# 이제 이거를 모두 지워보자.
rm(result1)
rm(result)

# 검색했을 때도 없는 것을 확인. 
rm(A, b)
ls()

#과제4 
input <- function(x, Mu, sigma){
  pdf <- dnorm(x, mean = Mu, sd = sigma)
  return(pdf)
}

output <- function(x, Mu, sigma){
  # value = f(x)
  value <- input(x, Mu, sigma)
  out_val <- 10 * value
  return(out_val)
}

#Ex

x <- 1
Mu <- 0
sigma <- 1

output1 <- output(x, Mu, sigma)
print(output1)


# 과제5 = 벡터 연산

# 1번째
result <- 0
for(i in 1:100){
  result <- result + i**2
}
print(result)

# 2번째
prod(1,2,3,4,5,6,7,8,9,10)

# 3번째
# 최종적으로 저장할 코드 초기화 
cos <- 0
for(i in 1:20){
  angle<- i/20 * pi
  cos <- cos + cos(angle)
}
print(cos)

# 과제 6 

x1<-1:3
x2<-4:6
x3<-7:9

x<-c(x1,x2,x3)
mat1<-rbind(x1,x2,x3)

dimnames(mat1)[[2]]<-c("A", "B","C")
dimnames(mat1)[[1]]<-c("첫째", "둘째", "셋째")
mat1

# 2행 3열에 해당하는 값 출력. 
mat1[2,3]

# 과제 7 (iris 데이터) / Specie가 virginica 데이터만 추출.
data(iris)
virginica_data <- subset(iris, Species == 'virginica')
head(virginica_data)

# 과제 8 (iris 데이터) 3번째 열, Species변수를 각각 벡터로 저장.

# 3번째 열 값
petal_len <- iris$Petal.Length
# Species 값
species <- iris$Species

# 이를 list 값으로 가지고 있는 형태
data_list <-list(Petal_Length = petal_len, Species = species)
str(data_list)

# 과제 9 : 데이터를 입력값으로 받아, 데이터의 각 행마다 반복문을 수헹.
Range_print_data<-function(species){
  for(i in 1:length(species)){
    if(species[i] == 'setosa'){
      print(1) 
    }else if(species[i] == 'versicolor'){
      print(2)
    }else if(species[i] == 'virginica'){
      print(3)
    }
  }
}

Range_print_data(iris$Species)
