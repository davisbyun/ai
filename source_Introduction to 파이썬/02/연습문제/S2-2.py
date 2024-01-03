phone1 = input("하이픈(-)이 포함된 11자리의 휴대폰 번호는? ")

phone2 = phone1[0:3] + phone1[4:8] + phone1[9:]

print("- 입력된 휴대폰 번호 : %s" % phone1)
print("- 하이픈 삭제된 휴대폰 번호 : %s" % phone2)
