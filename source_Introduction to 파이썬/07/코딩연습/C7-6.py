def sum_besu(n) :
    sum = 0
    for i in range(1, 101) :
        if i%n == 0 :
            sum = sum + i

    return sum
                
besu = int(input("구하고자 하는 배수를 입력하세요: "))

total = sum_besu(besu)

print("1~100 사이 %d의 배수의 합계 : %d " % (besu, total)) 

    

    

