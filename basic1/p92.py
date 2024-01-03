# 92페이지 연습문제 2장 1~3번 풀어보기
# 95 심화문제
# s2-1 환산 프로그램
"""
kg = input("변환할 킬로그램(kg)은")
print("-"*30)
print("킬로그램     파운드    온스 ")
print("-"*30)
pound = int(kg) * 2.204623
ounce = int(kg) * 35.273962
# print(f"{kg}    {pound}   {ounce}")
print("%d       %.2f      %.2f"%(int(kg), pound, ounce ))
print("-"*30)


# s2-2 
phone = input("휴대번호는?") 
# 방법1) "-" 찾아서 "" 바꾸기
deleteHy = phone.replace("-", "")
print(f"입력된 휴대번호 : {phone}")
print(f"하이픈 삭제된 휴대번호 {deleteHy}")
# 방법2) split("-")  010-1234-5678
deletHy2 = phone.split("-") 
print( deletHy2[0], deletHy2[1], deletHy2[2], sep="" )
"""

# 2-13 
number = "37366366845"
print( number[ -2: : ])

# 2-12
string = "가는 말이 고와야 오는 말이 곱다"
print( string[ 6 : 14])