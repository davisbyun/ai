# 정답 : ① readlines() ② append ③ write
f1 = open("myfile.txt", "r", encoding="utf-8")
f2 = open("myfile2.txt", "w", encoding="utf-8")
lines = f1.readlines()

data = []
for line in lines :
    data.append(line)

name = "이름 : " + data[0]
tel = "전화번호 : " + data[1]
email = "이메일 : " + data[2]

address = "주소 : 경기도 용인시 수지구 정평로 123"
    
f2.write(name)
f2.write(tel)
f2.write(email)
f2.write(address)

f1.close()
f2.close()    
