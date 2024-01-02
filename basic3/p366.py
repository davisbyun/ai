f = open("new_file1.txt","r", encoding="utf-8")

names = ["홍길동", "이수진", "최진영","박수연"]


lines = f.readlines() #여러줄을 한꺼번에 읽어온다. 리스트로 반환한다. 
print(lines)
line = f.readline() #한줄만 읽는다. 그래서 반복문을 이용하기
print(line)

while True :
    line = f.readline()
    if not line : break
    print(line)
f.close

print("파일 쓰기 완료")
f.close()


# f = open("new_file1.txt","w", encoding="utf-8")

# names = ["홍길동", "이수진", "최진영","박수연"]

# for name in range :
#     f.write(name + "\n")

# print("파일 쓰기 완료")
# f.close()