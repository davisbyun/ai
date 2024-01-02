import time
import datetime

seconds = time.time() #타임스탬프
print(seconds) 

tm = time.gmtime() #그리니치 표준시 우리나라는 GMT+9 , 9시간 후의 시간이다.
print(tm)

#타임스탬프를 가지고 그리니치 표준시 구하기
tm = time.gmtime(seconds) 
print(tm)

#localtime 함수는 타임스탬프로 현재 시간을 얻는데 사용, 윈도우 운영체제에서 셋팅한 나라의 시간(우리나라시간)
tm = time.localtime(seconds) #대한민국 날짜 나옴
print(tm)

tm = time.localtime() #대한민국 날짜 나옴
print(tm)

string = time.ctime()
print(string)

string = time.ctime(seconds) #타임스탬프 값을 입력
print(string)

time.localtime(time.time())
sf = time.strftime("%Y년 %m월 %d일 %A %I시 %M분 %S초 %p")
print(sf)

# print("시작")
# time.sleep(10) #딜레이시키려는 목적  - 병목현상 없애기 위하여 주로 이용
# print("끝") #"끝" 10초 후 나타남

def func() :
  sum = 0
  for i in range (1,10000001) :
    sum = sum + i
   

start = time.time()
func()
end = time.time()
print("소요시간 : ", end - start)


#오늘날짜 구하기
today = datetime.date.today()
print(today)

week= datetime.timedelta(weeks=1)
next_week = today +  week
print(next_week)

before_week = today - week
print(before_week)

now = datetime.datetime.now() #모듈명, 클래스명 함수명
print(now)
print(now.year)
print(now.month)
print(now.day)
print(now.minute)
print(now.second)
print(now.astimezone)
