import random

def who_win(x, y) :
    if x == "가위" : 
        if y == "가위" :
            msg = "무승부입니다!"
        elif y == "바위" :
            msg = "당신의 승리입니다!"
        else :
            msg = "나의 승리입니다!"
    elif x == "바위" :
        if y == "가위" :
            msg = "나의 승리입니다!"
        elif y == "바위" :
            msg = "무승부입니다!"
        else :
            msg = "당신의 승리입니다!"
    else :
        if y == "가위" :
            msg = "당신의 승리입니다!"
        elif y == "바위" :
            msg = "나의 승리입니다!"
        else :
            msg = "무승부입니다!"

    return msg

print("=" * 30)
print("가위바위보 게임")
print("=" * 30)

x = ["가위","바위", "보"]
again = "y"

while again == "y":
    me  = random.choice(x)
    you = random.choice(x)

    result = who_win(me, you)

    print("나 : %s" % me)
    print("당신 : %s" % you)
    print(result)
    print("-" * 30)
    
    again = input("계속하려면 y를 입력하세요!")

print("게임이 종료되었습니다!")









