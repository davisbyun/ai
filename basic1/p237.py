#딕셔너리 {key:value} -->Json 연동가능

score = {"kor":90,"eng":89,"math":95}
print(score ["kor"]) # 키값을 쓰면 value를 출력
user = {"id":"kim55", "name":"강성준", "level":"7", "point":10000}
#전체출력하기
for uKey in user :
  print(f"{uKey}{user[uKey]}  "+ "**** ")

print(user["id"])
print(user["level"])
#추가하기
score["music"] = 100   #추가하는 양식
print(score)
user["vip"] = "우수회원"
print(user)
#수정하기 - 없으면 추가, 있으면 수정
score["music"] =80
print(score)
user["vip"] = "최우수회원"
print(user)
#삭제하기 pop
x = score.pop("music")
print(x)
print(score)
user.pop("vip")
print(user)

#반복문을 이용해서 딕셔너리 처리
area_code = {"02":"서울", "051":"부산", "053":"대구","062":"광주"}  #딕셔너리명 = { }

for k in area_code:  #key값이 자동으로 한개씩 k로 들어간다.
  print(f"{k} - {area_code[k]}   ")


#키값만 모음
sk =""
for k in area_code:
  sk = sk +k + " "
print(sk)

#f키값을 리스트로 변환
keys =[]
for k in area_code :
  keys.append(k)
print(keys)  

keyss = area_code.keys()
print(keyss)
print(type(keyss))