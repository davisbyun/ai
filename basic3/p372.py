##중요함, 응용이 많음...

f = open(".vscode/basic3/data.txt","r", encoding="utf-8")
lines = f.readlines() #리스트로 반환한다
print(lines)
for line in lines :
    data= line.split() #공백 \n 된 것
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
    print(" %.2f 점" % avg)
f.close



# f = open(".vscode/basic3/scores.txt","r", encoding="utf-8")
# lines = f.readlines() #리스트로 반환한다
# print(lines)
# for line in lines :
#     data= line.split() #공백 \n 된 것
#     print(data)

#     i = 0
#     sum = 0

#     while i <len(data)  :
#         if i == 0 :
#             print(data[i], end=" : ")
#         else :
#             sum += int(data[i]    )
#             i = i +1
#     avg = sum / ( len(data) - 1 )
#     print(" %.2f 점" % avg)
# f.close