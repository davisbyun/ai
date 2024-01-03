def count_char(string, x):
    count = 0

    for i in string :
        if i == x :
            count = count + 1

    return count
        
test_str = input("영어 문장을 입력하세요 : ")
character = input("알파벳 하나를 입력하세요 : ")

num_char = count_char(test_str, character)

print ("%s 에 포함된 %s 의 개수는 %d 개이다."% (test_str, character, num_char))
