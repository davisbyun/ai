def find_max(n) :
    mx = n[0]
    for i in range(1, len(n)) :
        if n[i] > mx :
            mx = n[i]

    return mx

data = [5, -3, 12, 8, 2]
print(data)

max_value = find_max(data)
print("최댓값 :", max_value)
 
