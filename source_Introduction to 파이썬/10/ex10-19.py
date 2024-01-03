def get_value(list1, n) :
    try :
        result = list1[n]
    except IndexError :
        print("인덱스가 범위를 벗어남!")
        result = -1
    finally :
        return result

data = [10, 20, 30]

print(get_value(data, 3)) 
print(get_value(data, 1))

