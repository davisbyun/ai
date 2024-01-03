def total_besu(n) :
    sm = 0
    for x in range(1, 1001) :
        if x%n==0 :
            sm = sm + x

    return sm

N = int(input("N값을 입력하세요 : "))

total = total_besu(N)
print("1에서 1000까지의 수 중 %d의 배수 합계 : %d " % (N, total))
