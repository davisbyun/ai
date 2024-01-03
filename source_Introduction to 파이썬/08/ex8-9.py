def check_word(s, keyword): 
    if (s.find(keyword) == -1): 
        print("'%s'은(는) 존재하지 않는다!" % keyword) 
    else: 
        print("'%s'은(는) 존재한다!" % keyword) 
            
string = "A good book is a great friend."
word ="friend"

print("문장 :", string)
print("찾는 단어 :", word)

check_word(string, word) 
