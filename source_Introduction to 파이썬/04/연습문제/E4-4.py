count = 0
for i in range(1, 101) :
    if i%5 == 0 :
        print(i, end=" ")
        count = count + 1

        if count%5 == 0 :
            print()

