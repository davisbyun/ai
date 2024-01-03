pilgi = int(input("필기시험 점수는? "))
silgi = int(input("실기시험 점수는? "))

if pilgi >= 80 and silgi >= 80 :
    result = "합격"
else :
    result = "불합격"

print("- 필기시험 점수 : %d" % pilgi)
print("- 실기시험 점수 : %d" % silgi)
print("- 판정 : %s" % result)
    
