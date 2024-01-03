data = [[10, 20], [30, 40], [50, 60], [70, 80]]

for i in range(4) :	# i는 리스트의 행
    for j in range(2) :	# j는 리스트의 열
        print("data[%d][%d] = %d" % (i, j, data[i][j]))
