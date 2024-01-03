def cir_area(r) :
    result = r * r * 3.14
    return result

def cir_length(r) :
    result = 2 * 3.14 * r
    return result

r = float(input("반지름을 입력하세요: "))
area = cir_area(r)
length = cir_length(r)
print("원의 면적 : %.1f, 원주의 길이 :%.1f" % (area, length ))



    
    
    
