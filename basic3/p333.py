import math

print(math.sin(1/2))
print(math.cos(0))
print(math.ceil(12.3)) # x보다 작지 않은 최대값 구하기
print(math.ceil(-12.3))
print(math.floor(12.3)) #x보다 작지 않은 최소값 구하기
print(math.floor(-12.3)) #x보다 작지 않은 최소값 구하기
print(round(12.3)) #반올림, math내장이 아닌, 파이썬 내장 함수임

#*** fsum() 실수형 합계

list1 = {1,2,3,4,5,6}
tuple1 = (1,2,3)
print(math.fsum(list1))
print(math.fsum(tuple1))

print(math.log10(1000))
print(math.pow(3,3))
print(math.sqrt(4))
