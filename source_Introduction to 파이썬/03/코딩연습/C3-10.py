userid = input("아이디는? ") 

if userid == "admin" :
    print("콘텐츠 이용이 가능합니다!")    
else  :
    level = int(input("회원 레벨은?(1~9) "))
    
    if  level>=1 and level<=3 :
        print("콘텐츠 이용이 가능합니다!")
    else  :
        print("콘텐츠를 이용할 수 없습니다!")
