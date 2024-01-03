def isPrimeNumber(num) :
      prime_yes = True 
      for i in range(2, num) : 
            if num % i == 0 : 
                  prime_yes = False 
                  break
      return prime_yes

      
n = int(input("n값을 입력해 주세요 : "))

print("2 ~ %d까지의 정수 중 소수 :" % n, end = " ")      
for a in range(2, n+1) :
      is_prime = isPrimeNumber(a)
      if is_prime :
            print(a, end=" ")
