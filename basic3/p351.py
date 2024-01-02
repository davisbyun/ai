# random 모듈 - 임의의 수
import random

r1 = random.random()
print(r1)

r2= random.uniform(1,10)
print(r2)

r3 = random.randint(1,7)   #1<= r3 <=6 정수
print(r3)

r4 = random.choice([1,2,3,4,5])
r5 = random.choice((1,2,3,4))
r6 = random.choice("I like python") 
print(r4,r5,r6)

