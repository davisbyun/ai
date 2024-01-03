scores = [[75,83,90], [86,86,73], [76,95,83], [89,96,69], [89,76,93]]

for i in range(len(scores)) :	# i : 인덱스의 행, j : 인덱스의 열
    sum = 0
    for j in range(len(scores[i])) :	# len(scores[i]) : 인덱스 i 행의 길이
        sum = sum + scores[i][j]	# scores[i][j] : 인덱스의 각 요소

    avg = sum/len(scores[i])	

    print("%d번째 학생의 합계 : %d, 평균 : %.2f" % (i+1, sum, avg) )
