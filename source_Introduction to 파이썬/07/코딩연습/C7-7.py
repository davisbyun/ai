def count_space(a) :
    count = 0

    for x in a :
        if x == " " :
            count = count + 1

    return count

sentence = "Python is easy and powerful."

print(sentence)
num_space = count_space(sentence)
print("- 공백의 개수 :", num_space)


            
