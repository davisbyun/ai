#지역변수
#전역변수
#변수의 생명주기 life cycle

def func() :
  x = 10  #태어남 만들어짐, 함수 속에서만, 지역변수
  print(x,"1~~~~")

func()

gx = 200 # 파일에서 태어남, 파일 안에서는 다 쓸 수 있다. 전역변수
def func2() :
    # gx=gx+300 오류 발생, 사용만 할 수 있다. 수정할 수 없다. 
  print(gx,"2~~~~")

func2()
print(gx,"1111~~~") 

gx = gx +300
print(gx,"3~~~~")


def func3() :
    global y #함수 안에 선언할 변수를 전역 변수로 만들고 싶다 global y 선언, 그러면 스텍 공간에 변수를 할당한다. 
    #계속 살아 있는 변수임, 쓸때 신중하세요. 메모리 비효율적
    #예 장바구니, 로그인 계속 유지 등에 사용
    y = 300
    y = y-10
    print(y,"4~~~~")

func3() #y를 전역변수로 변경해 외부에서도 사용 가능 
print(y,"5~~~~")
y = y +20
print(y,"6~~~~")

func3()

def func4() :
  print(y, "~ㄴㄴㄴㄴ~")

func4()



def func5():
   global x 
   x = 200
   print(x, "~")

x = 100
print(x, "~~")
func5()
print(x, "~~~")

#284

def cir_area() :
   global r #메인루틴 (함수 바깥 쪽에 있는 곳에서 쓰는 메인 루틴의 변수이다.)
   result = r * r * 3.14
def cir_length() :
   global r 
   result = 2 * 3.14 * r
   return result
r = 10 #전역변수
area = cir_area()
length = cir_length()
print("원의 면적 : %.1f, 원주의 길이 : %.1f" %(area, length))

