def divide(a, b) :
    try :
        c = a/b
    except ZeroDivisionError :
        print("0 나누기 오류가 발생함!")
    else :
        print(c)

divide(30, 0)
divide(20, 10)
