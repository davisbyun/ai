f = open("new_file.txt", "r", encoding="utf-8")
lines = f.readlines()

print(lines)

f.close()    
