# 
#  음식점 직원 서비스에 대한 고객 만족도에 따른 팁 계산 
#  매우만족 : 음식 값의 20%, 만족 : 10%, 불만족 : 0

print("서비스 만족도 :") 
print("  1: 매우만족") 
print("  2: 만족") 
print("  3: 불만족") 
a = input("서비스 만족도는?(1/2/3) ") 

price = int(input("음식 값은? ")) 

if a == "1" : 
   tip = int(price * 0.2) 
   service = "매우 만족" 
elif a == "2" : 
   tip = int(price * 0.1) 
   service = "만족" 
else : 
   tip = 0
   service = "불만족" 

print()
print("서비스 만족도:%s, 팁:%d원" % (service, tip))
