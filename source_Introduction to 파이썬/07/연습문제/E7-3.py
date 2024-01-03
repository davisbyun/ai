"""
- 프로그램 실행 결과 :
200
200
"""
def func() :
    global x
    x = 200
    print(x)

x = 100
func()
print(x)
