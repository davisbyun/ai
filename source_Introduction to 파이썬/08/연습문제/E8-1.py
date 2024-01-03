def even_odd(n) :
    if n%2==0 :
        result = "짝수"
    else :
        result = "홀수"
    return result

x = int(input("수를 입력하세요 : "))

msg = even_odd(x)
print("%d은(는) %s이다." % (x, msg))
