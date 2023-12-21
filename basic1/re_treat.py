question = ["s_hool","compu_er","deco_ation","windo_","hi_tory"]
answer = ["c","t","t","w","s"]

for i in range( 0, len(question),1) :
    q="%s : 밑줄에 들어갈 알파벳은? " %question[i]
guess = input(q)

if guess == answer[i] :
  print("정답!")
else :
  print("틀렸어요")