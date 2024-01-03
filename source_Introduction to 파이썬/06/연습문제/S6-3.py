temp = {"월":15.5, "화":17.0, "수":16.2, "목":12.9, "금":11.0, "토":10.5, "일":13.3}

sum = 0
for key in temp :
    sum += temp[key]
        
avg = sum/len(temp)
    
print("일주일간 기온 평균 : %.1f˚" % avg)



