# 세 정수 중 가장 큰수를 찾아라! 131page
num1 = int(input("첫번째 정수는? "))
num2 = int(input("두번째 정수는? "))
num3  = int(input("세번째 정수는? "))

if    num1 > num2    and   num1 > num3    :
    largest = num1
elif  num2 > num1    and num2 > num3       :
    largest = num2
else :
    largest = num3

print("%d, %d, %d 중에서 가장 큰수는 %d입니다"%(num1, num2, num3, largest))

if  num1 < num2 and num1 < num3 :
    min = num1
elif num2 < num1 and num2 < num3 :
    min = num2
else :
    min = num3

print("%d, %d, %d 중에서 가장 작은수는 %d입니다"%(num1, num2, num3, min))

if num1 != largest  and num1 != min :
    mid = num1
elif num2 != largest and num2 != min :
    mid = num2 
else :
    mid = num3        

print("%d, %d, %d 중에서 가장 중간수는 %d입니다"%(num1, num2, num3, mid))