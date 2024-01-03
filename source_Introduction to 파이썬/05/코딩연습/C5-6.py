scores = []

while True :
    x = int(input("성적을 입력하세요(종료 시 -1 입력): "))

    if x == -1 :
        break
    else :
        scores.append(x)

sum = 0

for score in scores :
    sum = sum + score

avg = sum/len(scores)

print("합계 : %d, 평균 : %.2f" % (sum, avg))

