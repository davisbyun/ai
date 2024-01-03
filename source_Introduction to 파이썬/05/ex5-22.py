hello = "have a nice day"
print(hello)

list1 = hello.split(" ")
print(list1)
print(type(list1))

for i in range(0, len(list1)) :
    print("list1[%d] : %s" % (i, list1[i]))
