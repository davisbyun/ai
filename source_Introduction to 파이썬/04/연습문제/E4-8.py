print("-" * 40) 
print("      cm      mm        m      inch")
print("-" * 40) 

for cm in range(1,51) :
    mm = cm * 10.0
    m  = cm * 0.01
    inch = cm * 0.3937
    print("%8d %8.0f %8.2f %8.2f" % (cm, mm, m, inch))   

print("-" * 40)

