def space_hyphen(string):
    result = ""
    i = 0
    while i < len(string) :
        if string[i] == " " :
            result = result + "-"
        else :
            result = result + string[i]
            
        i = i + 1
        
    return result

string = input("문자열을 입력하세요: ")

print(space_hyphen(string))
