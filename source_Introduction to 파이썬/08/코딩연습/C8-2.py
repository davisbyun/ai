def square_sum(n) :
    sm = 0
    for i in range(1, n+1) :
        if i%2 == 1 :
            sm = sm + (i*i*i) 
            print("%d*%d*%d " % (i, i, i), end="")

            if i==n or i==(n-1) :
                print("= ", end="")
            else :
                print("+ ", end="")
    
    print(sm)

N = int(input("N의 값을  입력하세요 : "))
square_sum(N)

