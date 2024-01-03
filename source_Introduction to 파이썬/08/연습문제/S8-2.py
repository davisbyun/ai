def is_number(numbers, x) :
    start = 0
    end = len(numbers) - 1

    result = False
    while start <= end :
        mid = (start + end)//2
        if x == numbers[mid] :
            result = True
            break
        elif x > numbers[mid] :
            start = mid + 1
        else :
            end = mid - 1 

    return result

data = [55, 3, -12, 2, 51, -23, 17, 9, 13, 16, 30, 9]
keyword = int(input("찾고자 하는 수를 입력하세요 : "))

print(data)

data.sort()

if is_number(data, keyword) :
    print("%d은(는) 리스트에 존재한다." % keyword)
else :
    print("%d은(는) 리스트에 존재하지 않는다." % keyword)


