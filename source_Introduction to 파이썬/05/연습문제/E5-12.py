data = [[10, 20, 30], [40, 50], [60, 70, 80, 90]]

for i in range(len(data)):
    for j in range(len(data[i])):
        if j == 0 :
            print(data[i][j], end=" ")
        
    print()
