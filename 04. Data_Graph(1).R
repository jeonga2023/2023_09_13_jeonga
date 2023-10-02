# table()함수/구분 1개의 인자를 가지고 도수분포표 작성
table(KOTRA2023 $진출대륙명)

# table()함수/2개의 인자를 가지고 교차표를 작성
table(KOTRA2023 $진출대륙명, KOTRA2023 $진출형태)

#  상대도수 계산
ECN <- table(KOTRA2023 $진출대륙명)
prop.table(ECN)

#막대그래프
barplot(table(KOTRA2023 $진출대륙명))

entry <- table(KOTRA2023 $진출대륙명, KOTRA2023 $진출형태)
barplot(entry, legend = TRUE)

#막대그래프 위에 숫자 표시
bp <- barplot(table(KOTRA2023 $진출대륙명),col=pal1, xlab="진출대륙명",ylab="진출기업수",ylim=c(0,10000))
entry <- c(333,828,9154,104,716,444,374)
text(x=bp,y=entry, labels=entry, pos=3)

#파이차트
pie(table(KOTRA2023 $진출대륙명))
pie(table(KOTRA2023 $투자형태))

pal1 <- brewer.pal(5,'Set3')
pie(table(KOTRA2023 $투자형태),col=pal1,main='해외진출기업의 투자형태')

#그래프 색 변환
colors <- c("red", "orange","yellow", "green", "blue")
pie(table(KOTRA2023$투자형태), col=colors,main="해외진출기업의 투자형태")

#팔레트 설치 및 확인
install.packages("RColorBrewer")
library(RColorBrewer)
display.brewer.all()

#파이차트에 팔레트 사용해보기
pal1 <- brewer.pal(5, 'Set3’)pie(table(KOTRA2023$투자형태), col=pal1,main="해외진출기업의 투자형태")

#Y축 최소-최대값 지정
barplot(table(KOTRA2023$진출대륙명),col=pal1, xlab ="진출대륙명", ylab = "진출기업수",ylim=c(0,10000))

#막대그래프 객체 BP에 할당
bp <- barplot(table(KOTRA2023$진출대륙명),col=pal1, xlab ="진출대륙명", ylab = "진출기업수",ylim=c(0,10000))

#entry에 각 막대의 수치 대입
entry <-c(333,828,9154,104,716,444,374)

#막대 수치 표시
text(x=bp, y=entry, labels=entry,pos=3)

#차트회전
barplot(table(KOTRA2023$진출대륙명),col=pal1, xlab ="진출대륙명", ylab = "진출기업수",xlim=c(0,10000), horiz=TRUE)
