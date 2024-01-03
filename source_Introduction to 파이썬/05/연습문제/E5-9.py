numbers = [7, 9, 15, 18, 30, -3, 7, 12, -16, -12]

sum = 0
i = 0
print("짝수 번째 요소 : ", end="")

while i < len(numbers) :
    if (i+1)%2 == 0 :
        sum = sum + numbers[i]
        print(numbers[i], end=" ")

    i = i + 1

print()
print("합계 :", sum)
