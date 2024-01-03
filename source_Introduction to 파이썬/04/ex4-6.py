sum = 0

for i in range(100, 201) :
    if i%5 == 0 :
        sum = sum + i
    
print("5의 배수의 합계 : %d" % sum)
