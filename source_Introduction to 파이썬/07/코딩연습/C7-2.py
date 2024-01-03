def sum_int(start, end) :            # start : 시작 수, end : 끝 수 
    total = 0
    for i in range(start, end+1) :
        total = total + i
    print("%d ~ %d 정수 합계 : %d" % (start, end, total))
    
sum_int(20, 50)
sum_int(600, 800)
    

    

