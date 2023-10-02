#2 step. Gender 1개 인자로 도수분포표 작성
table(X2023_STB_survey_homework_ $Gender)

#3 step. Gender 1개 인자로 상대도수분포표 작성
ECN <- table(X2023_STB_survey_homework_ $Gender)
prop.table(ECN)

#4 step. Gender와 Grade 2개의 인자로 교차표 작성
table(X2023_STB_survey_homework_ $Gender, X2023_STB_survey_homework_ $Grade)

#5 step. Nationality 1개의 인자로 막대그래프 작성
barplot(table(X2023_STB_survey_homework_ $Nationality))

#6 step. residential area 1개의 인자로 (가로)막대그래프 작성
barplot(table(X2023_STB_survey_homework_$`residential area`),col="pink", xlab ="응답자 수", ylab = "응답자 지역",xlim=c(0,40),horiz=TRUE)

#7 step. Gender와 Grade 2개의 인자를 가지고 막대그래프 작성
entry <- table(X2023_STB_survey_homework_ $Gender, X2023_STB_survey_homework_ $Grade)
colors=c("pink","skyblue")
barplot(entry, col=colors,legend = TRUE)

#8 step. Grade 1개의 인자로 파이차트 작성
pie(table(X2023_STB_survey_homework_$Grade),col=c("pink","skyblue","grey"))

#9 step. Age 인자로 히스토그램 작성
hist(X2023_STB_survey_homework_$Age, xlab="나이", ylab="빈도", main="나이 분포",xlim=c(18,28), col=cm.colors(12))

#10 step. x2023_STB_survey의 Grade별 Age 비교하는 박스 플롯
boxplot(X2023_STB_survey_grade_age_$`2 grade age`, X2023_STB_survey_grade_age_$`3 grade age`,X2023_STB_survey_grade_age_$`4 grade age`, main="Grade별 Age 비교", col=c("pink","skyblue","gray"), names = c("2학년","3학년","4학년"))

#11 step. Grade를 X값으로 Age를 Y값으로 하는 산점도
plot(x=X2023_STB_survey_homework_$Grade, y=X2023_STB_survey_homework_$Age, xlab="Grade", ylab="Age", main="Grade와 Age의 산점도", pch=23, col="pink", bg="skyblue", cex=1.0,xlim=c(1,4),ylim=c(19,30))
