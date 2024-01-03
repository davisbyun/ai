def get_word(s) :
    temp = s.split("/")

    return temp

sentence = "강아지/사슴/거북/고릴라/청개구리"

words = get_word(sentence)

for word in words :
    length = len(word)
    print("%s : %d" % (word, length))


