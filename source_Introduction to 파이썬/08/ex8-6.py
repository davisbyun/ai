def square_sum(n) : 
    sm = 0
    for i in range(1, n+1) : 
        sm = sm + (i*i*i) 
      
    return sm 

N = int(input("N의 값을  입력하세요 : "))

print(square_sum(N)) 
