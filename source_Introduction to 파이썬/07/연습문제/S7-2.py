def match_word(word, answer) : 
   if word == answer : 
      result = "참 잘했어요!" 
   else : 
      result = "틀렸어요!" 
   return result

eng_dict = {"house":"집", "piano":"피아노", "christmas":"크리스마스", "friend":"친구", "bread":"빵"} 

for i in eng_dict : 
    string = input(eng_dict[i] + "에 맞는 영어 단어는? ") 
    msg = match_word(string, i) 
    print(msg)
