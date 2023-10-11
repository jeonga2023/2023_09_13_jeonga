#확률함수 계산
dbinom(x,size,prob)
dbinom(3,4,0.5)

#누적함수 계산
pbinom(x, size, prob)
pbinom(1,1000,0.01)

#누적함수 - 포아송 분포
1-pbinom(x,size,prob)
1-pbinom(90,100,0.8)
pbinom(9,100,0.2)

#포아송분포 함수 - 확률함수
dpois(x,lambda)
dpois(2,1.2)

#포아송분포 함수 - 누적함수
ppois(x,lambda)