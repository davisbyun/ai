import numpy as np

a=np.array([4,5,0,1,2,3,6,7,8,9,10,11])
print(a)
print(type(a))
print(a.shape)
a.sort()
print(a)  #dir(a)  a 변수 명령어 나열
help(a.sort)

b=np.array([-4,3,-2,3,12,9,8,99,10,1,-1,2])
b.sort()
print(b)

c=np.array(['one','two', 'three', 'four','five', 'six', 'seven' ])
c.sort()
print(type(b))
print(c)


#연습문제
#1
d=np.array([400,52,'tiger','24',230])
print('~',d)
print(type(d))
print(d.shape)
d.sort()

#2
e=np.array([1,2,3,4,5,6,7,8,9,10])
print(e)
print(np.min(e), np.max(e))

print(np.argmax(e))
print(np.argmin(e))
print(np.mean(e))
print(np.sum(e))
print(np.cumsum(e))
print(np.prod(e))
print(np.cumprod(e))
