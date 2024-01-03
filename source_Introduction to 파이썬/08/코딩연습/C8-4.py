def count_word(s) :
    arr = s.split(" ")

    return len(arr)

string = input("문장을 입력하세요 : ")

num_word = count_word(string)
print("단어의 개수 :", num_word)
