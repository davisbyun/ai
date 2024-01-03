# 예외처리
# 오류를 대처하는 방법을 프로그래밍하기
# 형식     try : 내용 
#          except : 오류에 대한 처리내용 
#          finally : 오류나 정상이나 모두 처리되는 내용

try :
    x = 10
    print(x)
    def divide(a,b) :
        c=a/b
    divide(10,0)    

except NameError :
    print("변수의 값이 없습니다.")
except ZeroDivisionError :
        
finally :
    print("모두 처리됨")    


