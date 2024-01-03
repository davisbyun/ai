def make_square(num):
    list_new = []
    for i in range(1, num+1):
        list_new.append(i**2)

    return list_new
		
n = int(input("n 값을 입력하세요: "))

list1 = make_square(n)
print(list1)
