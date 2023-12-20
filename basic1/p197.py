#c5-1
""" data = list(range(1,21))
for i in range(1,21) :
  print("%d"%i, end=" ") """

""" data = list(range(1,21))
for i in range(0, len(data), 1) :
  print("%d"%data[i], end=" ") """


#c5-2

""" for i in range(0,21) :
  i += 1
  if i % 2 == 0 :
      print(i, end=" ") """

for i in range(0,20) :
  i += 1
  if i % 2 != 0 :
      print(i, end=" ")

i = 0
print()
while i <len(data) :
   print("%d"%data[i],end=" ")
   i += 2
   
data = []
for x in range(10,21) :
   data.append(x)
print(data)   

