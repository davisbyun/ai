start = int(input("시작 수를 입력해주세요 : "))
end = int(input("끝 수를 입력해주세요 : "))

a = start

while a <= end+1 :
    prime_yes = True 
    for i in range(2, a) : 
        if a%i == 0 : 
            prime_yes = False 
            break  

    if (prime_yes) : 
        print(a, end=" ")

    a = a + 1

