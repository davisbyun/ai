def get_mult(list1) :
    list2 = []
    for x in list1:
        if x%2==0 :
            list2.append(x*10)
        else :
            list2.append(x*100)

    return list2

num1 = [2, 6, 3, 8, 7] 
print("num1 =", num1)

num2 = get_mult(num1)
print("num2 =",num2)


