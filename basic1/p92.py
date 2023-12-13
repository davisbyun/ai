#1
# a = 10
# b = 20 
# c = a+b
# print(c)

# print("10 + 20 = 30")

# a = "10" 
# b = "20"
# c = a + "+" + str(b) = "30"
# print(c)


# apple = "사과"
# berry = "딸기"

# apple = input("첫번째 과일을 입력"))
# berry = input("두번째 과일을 입력"))
# print (apple 과 berry 는 내가 좋아하는 과일이다. )

# #7
# a = 0
# b = 0  
# a = int(input("첫번째 수자를 입력하세요"))
# b = int(input("두번째 수자를 입력하세요"))
# print (a+b)

# #8
# a = 0
# b = 0
# a = int(input("첫번째 수자를 입력하세요"))
# b = int(input("두번째 수자를 입력하세요"))
# print (a/b)
"""
#s2-1
kg = input("변환할 킬로그램(kg)은")
print("-"*30)
print("킬로그램   파운드   온스")
print("-"*30)
pound = int(kg)*2.204623
ounce = int(kg)*35.273962
print("%d %.2f %.2f"%(int(kg), pound, ounce))
print("-"*30)

#print(f"{kg} {pound} {ounce} ")
"""

# #s2-2
# phone = input("휴대번호는?")
# #방법1  "-" 찾아서 "" 바꾸기
# deleteHy = phone.replace("-","")
# print(f"입력된 휴대번호 : {phone} ")
# print(f"하이픈 삭제된 휴대번호 {deleteHy}")

# #방법2 split로 "-"를 오려내기 010-1234-5678 [0.1.2]
# phone = input("휴대번호는?")
# deleteHy2 = phone.split("-")
# print(deleteHy2[0], deleteHy2[1], deleteHy2[2], sep="")

#2-13
number = "37366366845"
print(number [9:])
print(number[-2: :])

#2-12
string = "가는 말이 고와야 오는 말이 곱다"
print(string [6:14])