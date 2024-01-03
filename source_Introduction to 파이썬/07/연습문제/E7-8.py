def str_reverse(string):
    result = ""
    index = len(string)
    while index > 0 :
        result = result + string[index - 1]
        index = index - 1
        
    return result

string = input("문자열을 입력하세요: ")

print(str_reverse(string))
