import time

seconds = time.time()
print(seconds) # 타임 스탬프 1970-1-1 0시 0분 0초를 기준으로 

tm = time.gmtime()
print( tm ) # 그리니치 표준시 우리나라 GMT+9 9시간 후의 시간이다

# 타임스탬프를 가지고 그리니치 표준시 구하기 
tm = time.gmtime( seconds  )
print( tm )

# localtime함수 -( 윈도우 운영체제에서 셋팅한 나라 ) 는 타임스탬프로 현재 시간을 얻는데 사용
tm = time.localtime( seconds ) # 대한민국 날짜 나옴
print(tm)

tm = time.localtime() # 대한민국 날짜 나옴
print(tm)

string = time.ctime()
print(string)

string = time.ctime( seconds )
print(string)

tm = time.localtime( time.time() )
sf = time.strftime("%Y년 %m월 %d일 %A %I시 %M분 %S초  %p")
print( sf )

print("시작")
time.sleep(2)  # 딜레이 시키려는 목적 - 병목현상을 없애기 위해서 주로 이용
print("끝")

def func()  :
    sum = 0
    for i in range(1,100000001) :
        sum += i
    print(sum)

start = time.time()
func()
end = time.time()
print( "소요시간 ", (end - start) )





