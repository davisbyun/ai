name = input("이름을 입력하세요 : ")
hours = int(input("일주일간 일한 시간을 입력하세요 : "))

ot_rate = 1.5
hour_pay = 12000

if  hours <= 40 :
    over_time = 0
    pay = hours * 12000
    
else :
    over_time = hours - 40
    pay = hour_pay * 40 + over_time * hour_pay * ot_rate
   
print()
print("- 이름 : %s"% name)
print("- 일주일간 일한 시간 : %d시간" % hours)
print("- 오버타임 : %d시간" % over_time)
print("- 주급 : %d원" % pay)
