s = [64, 89, 100, 85, 77, 58, 79, 67, 96, 87,\
         87, 36, 82, 98, 84, 76, 63, 69, 53, 22]

soo = 0            # 90점 ~ 100점
woo = 0           # 80점 ~ 89점
mi = 0            # 70점 ~ 79점
yang = 0          # 60점 ~ 69점
ga = 0            # 0점  ~ 59점

i = 0
while i < len(s) :
    if s[i] >= 90 and s[i] <=100 :
        soo = soo + 1
        
    if s[i] >= 80 and s[i] <= 89 :
        woo = woo + 1

    if s[i] >= 70 and s[i] <= 79 :
        mi = mi + 1

    if s[i] >= 60 and s[i] <= 69 :
        yang = yang + 1

    if s[i] >= 0 and s[i] <= 59 :
        ga = ga + 1

    i = i + 1
    
print("수 : %d명" % soo)
print("우 : %d명" % woo)
print("미 : %d명" % mi)
print("양 : %d명" % yang)
print("가 : %d명" % ga)
