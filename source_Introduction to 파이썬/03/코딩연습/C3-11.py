unit = input("단위를 입력해 주세요(1:섭씨, 2:화씨): ")
temp = int(input("온도를 입력해 주세요 : "))

if unit == "2" :
   temp = (temp - 32) * 5 / 9

if temp <= 0 :
   state = "고체"
elif temp < 100 :
   state = "액체"
else :
   state = "기체"

print("물의 섭씨 온도 : %.1f도, 상태 : %s" % (temp, state))


