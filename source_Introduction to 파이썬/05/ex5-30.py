strings = [["원두커피", "라떼", "콜라"], ["우동", "국수", "피자", "파스타"]]

for i in range(len(strings)) :	# len(strings) : 2, 리스트 행의 개수
    for j in range(len(strings[i])) :	# len(strings[i]) : 리스트 각 행의 길이
        print(strings[i][j])
