score = int(input("성적을 입력하세요 : "))

while score != "q" :
    if score >= 90 :
        print("등급 : 수")
    elif score >= 80 :
        print("등급 : 우")
    elif score >= 70 :
        print("등급 : 미")
    elif score >= 60 :
        print("등급 : 양")
    else :
        print("등급 : 가")

    x = input("계속하시겠습니까?(중단:q, 계속:y) ")

    if x == "q" :
        break

    score = int(input("성적을 입력하세요 : "))
    

