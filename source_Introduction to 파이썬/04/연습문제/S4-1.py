count = 0 

i = 1 
while i < 1001 : 
    if i%3 != 0 : 
        print("%d" % i, end=" ") 
        count = count + 1 

        if count % 10 == 0 : 
            print() 
    i = i + 1
