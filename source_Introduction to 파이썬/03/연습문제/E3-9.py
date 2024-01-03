score = int(input("점수를 입력하세요 : "))

if score >= 90 and score <=100 :
    print("- 성적:%d점, 등급:수" % score)
    
elif score >= 80 and score <=89 :
    print("- 성적:%d점, 등급:우" % score)
    
elif score >= 70 and score <=79 :
    print("- 성적:%d점, 등급:미" % score)
    
elif score >= 60 and score <=69 :
    print("- 성적:%d점, 등급:양" % score)

elif score >= 0 and score <=59 :
    print("- 성적:%d점, 등급:가" % score)
    
else :
    print("입력 오류!")
