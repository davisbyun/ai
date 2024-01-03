f = open("new_file.txt", "a", encoding="utf-8")
names = ["손영민", "황현준"]

for name in names :
    f.write(name + "\n")

f.close()    
