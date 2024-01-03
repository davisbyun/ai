# 정답 : ① self  ② append  ③ buffer1.buffer
class Buffer :
    def __init__(self) :
        self.buffer = []
        
    def push_data(self, x) :
        self.buffer.append(x)

    def get_data(self, index) :
        return self.buffer[index]

buffer1 = Buffer()
buffer1.push_data(5)
buffer1.push_data(8)
buffer1.push_data(12) 
print(buffer1.buffer)

print(buffer1.get_data(0))
print(buffer1.get_data(2)) 



 
