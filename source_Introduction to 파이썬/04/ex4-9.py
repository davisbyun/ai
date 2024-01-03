print("-" * 30) 
print("  섭씨  화씨")
print("-" * 30) 
 
for c in range(-20, 31, 5) : 
    f = c * 9.0/ 5.0 + 32.0 
    print("%5d %6.1f" % (c, f))   
     
print("-" * 30)
