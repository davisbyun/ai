def find_min(n) :
    smallest = n[0]
    for i in range(1, len(n)) :
        if n[i] < smallest :
            smallest = n[i]

    return smallest

data = [6, 3, -2, 12, 5, -3, 17, 9, 13, 16]
print(data)

min_value = find_min(data)
print("최솟값 :", min_value)
