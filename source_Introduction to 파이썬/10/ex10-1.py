f = open("new_file.txt", "w", encoding="utf-8")
names = ["홍지수", "안지영", "김연수", "김예린", "한정연"]

for name in names :
    f.write(name + "\n")

print("파일 쓰기 완료!")
f.close()    
