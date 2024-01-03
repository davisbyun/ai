import time
import random

start = time.localtime(time.time())
print("게임 시작 시간 :", time.strftime("%I:%M:%S %p", start))

again = "y"

while True :
    if again == "y" :
        print("two dice are rolling...")
        time.sleep(2)

        me = random.randint(1, 6)
        computer = random.randint(1, 6)
        print("나 :", me)
        print("컴퓨터 :", computer)

        if me > computer :
            print("나의 승리!")
        elif me < computer :
            print("컴퓨터의 승리!")
        else :
            print("무승부!")
            
        print("-"* 50)
    else :
        break

    again = input("계속하시겠습니까?(y:예, n:아니오)")

print("게임이 종료되었습니다!")
end = time.localtime(time.time())
print("게임 종료 시간 :", time.strftime("%I:%M:%S %p", end))
