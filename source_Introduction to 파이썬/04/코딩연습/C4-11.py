sentence = input("문장을 입력해 주세요: ") 

i = len(sentence) - 1

while i >= 0 :
    if sentence[i] == " " :
        print("-", end="")
    else :
        print("%s" % sentence[i], end="")

    i = i - 1

