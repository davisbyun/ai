def del_word(s, w) :
    arr = s.split(" ")
    arr.remove(w)
    result = " ".join(arr)

    return result

string = "Don't cry before you are the hurt."
word = "the"

new_str = del_word(string, word)

print("원래 문자열 :", string)
print("삭제 단어 :", word)
print("변경된 문자열 :", new_str)
