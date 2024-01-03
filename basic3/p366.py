"""
f = open("new_file1.txt", "a", encoding="utf-8")

names = ["이순신", "김희수"]

for name in names :
    f.write( name + "\n" ) 

print("파일 쓰기 완료")
f.close()
"""
f = open("new_file1.txt", "r", encoding="utf-8")

# lines = f.readlines() # 여러줄을 한꺼번에 읽어온다 리스트로 반환한다 
# line = f.readline() # 한줄만을 읽는다. 그래서 반복문을 이용하기
# print( lines )

while True :
    line = f.readline() # 한줄만을 읽는다.
    if not line : break
    print(line)
f.close()    
