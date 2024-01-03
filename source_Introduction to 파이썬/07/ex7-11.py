def inch_to_cm(inch) :
    cm = inch * 2.54
    return cm
                
num = int(input("인치를 입력하세요: "))
result = inch_to_cm(num)
print("%d inch => %.2f cm" % (num, result))





    
    
    
