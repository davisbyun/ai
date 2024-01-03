grade = input("등급을 입력해 주세요(A+,A,B+,..., F) : ")

if grade == "A+" :
    print("등급:%s, 평점:4.5" % grade)
elif grade == "A" :
    print("등급:%s, 평점:4.0" % grade)
elif grade == "B+" :
    print("등급:%s, 평점:3.5" % grade)
elif grade == "B" :
    print("등급:%s, 평점:3.0" % grade)
elif grade == "C+" :
    print("등급:%s, 평점:2.5" % grade)
elif grade == "C" :
    print("등급:%s, 평점:2.0" % grade)
elif grade == "D+" :
    print("등급:%s, 평점:1.5" % grade)
elif grade == "D" :
    print("등급:%s, 평점:1.0" % grade)
elif grade == "F" :
    print("등급:%s, 평점:0.0" % grade)
else :
    print("등급 입력 오류!")
