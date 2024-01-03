temp = {"월":15.5, "화":17.0, "수":16.2, "목":12.9, "금":11.0, "토":10.5, "일":13.3}

print("-"*50)
print("   월    화    수    목    금    토    일")
print("-"*50)
for key in temp :
    print("%6.1f" % temp[key], end="")
          
print()
print("-"*50)

