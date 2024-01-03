def is_number(numbers, x) :
    result = False
    for number in numbers :
        if number == x :
            result = True

    return result

data = [55, 3, -12, 2, 51, -23, 17, 9, 13, 16, 30, 9]
print(data)

keyword = int(input("찾고자 하는 수를 입력하세요 : "))

if is_number(data, keyword) :
    print("%d은(는) 리스트에 존재한다." % keyword)
else :
    print("%d은(는) 리스트에 존재하지 않는다." % keyword)


