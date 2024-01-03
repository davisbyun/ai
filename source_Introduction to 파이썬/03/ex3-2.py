age = int(input("나이는? "))

ticket = 2000       # 기본 입장료

if age >= 65 :      # 65세(경로우대) 이상이면 무료
        ticket = 0

print("나이 : %d세" % age)
print("입장료 : %d원" % ticket)
    
