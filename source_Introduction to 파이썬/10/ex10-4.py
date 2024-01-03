f = open("new_file.txt", "r", encoding="utf-8")
lines = f.readlines()

for line in lines :
    temp = line.replace("\n", "")
    print(temp)

f.close()    
