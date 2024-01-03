n = 1
sum = 0
count = 0

while n <= 100 : 
    if n%2 == 1 : 
        sum += n
        print("%6d" % sum, end="")
        count = count + 1  

        if count%10 == 0 : 
            print()
            
    n = n + 1  
