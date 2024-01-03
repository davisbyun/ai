with open("new_file.txt", "r", encoding="utf-8") as f :
    for line in f :
        temp = line.replace("\n", "")
        print(temp)
 
