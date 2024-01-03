import time

def func() :
    sum = 0
    for i in range(1, 1000001) :
        sum = sum + i
        
start = time.time()
func()
end = time.time()
print("소요시간 :", end - start, sum)
