scores = {"김채린":85, "박수정":98, "함소희":94, "안예린":90, "연수진":93}

sum = 0

for key in scores :
    sum = sum + scores[key]

    print("%s : %d" % (key, scores[key]))
    
avg = sum/len(scores)

print("합계 : %d, 평균 : %.2f" % (sum, avg))
