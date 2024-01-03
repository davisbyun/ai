f = open("myfile.txt", "w", encoding="utf-8")

name = "홍길동"
tel = "010-1234-5678"
email = "hong@email.com"

f.write(name + "\n")
f.write(tel + "\n")
f.write(email + "\n")

f.close()    
