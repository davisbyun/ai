def binary_search(n, x) :           
    start = 0                       # start: 탐색 시작 인덱스
    end = len(n) - 1                # end: 탐색 종료 인덱스
    
    while start <= end :
        mid = (start + end)//2      # mid: 중간 위치
        if x == n[mid] :            # 찾는 값과 중간 위치의 값이 같으면 
            return mid              # 중간 위치 반환
        elif x > n[mid] :           # 찾는 값이 중간 위치의 값 보다 크면
            end = mid -1            # 종료 인덱스를 중간 위치 - 1로 설정
        else :                     
            start = mid + 1         # 시작 인덱스를 중간 위치 + 1로 설정
        
    return -1                       # 찾는 값이 없으면 -1 값  반환

data = [93, 91, 89, 87, 80, 61, 55, 43, 41, 38, 32, 30, 25, 20, 8, 2]
print(data)

search_num = 89
index = binary_search(data, search_num)
print("%d의 인덱스번호 : %d" % (search_num, index))
