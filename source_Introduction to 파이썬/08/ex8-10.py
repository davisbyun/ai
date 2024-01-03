def replace_word(string, word_list, word) :
    arr = string.split(" ")
    new_arr = []
    for x in arr :
        if x in word_list :
            new_arr.append(word)
        else :
            new_arr.append(x)
            
    result = " ".join(new_arr)
    return result

string = "python java php apple orange banana"
word_list = ["apple", "orange", "banana"]
word = "fruits"
print("문자열 :", string)
print("단어 리스트 :", word_list)
print("치환할 단어 :", word)

new_str = replace_word(string, word_list, word)
print("치환된 문자열 :", new_str)
