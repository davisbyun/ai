questions = ["s_hool", "compu_er", "deco_ation", "windo_", "hi_tory"]
answers   = ["c", "t", "r","w", "s"]

for i in range(len(questions)) :
    q = "%s : 밑 줄에 들어갈 알파벳은? " % questions[i]
    guess = input(q)

    if guess == answers[i] :
        print("정답!")
    else :
        print("틀렸어요!")


