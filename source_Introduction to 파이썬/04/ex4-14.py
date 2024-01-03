s = "Python is widely used by a number of big companies"

i = 0
count = 0

print("모음 : ", end = "")

while i <= len(s) - 1 :
    if (s[i] == "a" or s[i] == "A"  or s[i] == "e" or s[i] == "E" \
        or  s[i] == "i" or s[i] == "I" or s[i] == "o" or s[i] == "O" \
        or s[i] == "u" or s[i] == "U") :
        count = count + 1
        print(s[i], end=" ")
        
    i = i + 1

print()
print("모음 개수 : %d" % count)
 
