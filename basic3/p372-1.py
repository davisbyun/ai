f2 = open(".vscode/basic3/data.txt","r", encoding="utf-8")
lines = f2.readlines() #리스트로 반환한다
print(lines)
for line in lines :
    data= line.split(",") #공백 \n 된 것
    print(data)

    i = 0
    sum = 0
    while i <len(data)  :
        if i == 0 :
            print(data[i], end=" : ")
        else :
            sum += int(data[i]    )
            i = i +1
    avg = sum / ( len(data) - 1 )
    print("합계 :  %d점 " %sum)
    print("평균 :  %d점 " %avg)
f2.close
