def sum_tup(numbers):
    total = 0
    for number in numbers :
        total = total + number
        
    return total

tup1 = (10, 20, 30, 40, 50)

total = sum_tup(tup1)
print("튜플의 합계 :", total)
