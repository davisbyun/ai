""" #E6-1
year_sale = {"2016":237,"2017":98,"2018":158,"2019":233,"2020":120}

for key in year_sale :
  if year_sale == True :
    print("%s년 자동차 판매량 : %d대" %key       )


#E6-2
year_sale = {"2016":237,"2017":98,"2018":158,"2019":233,"2020":120}    
sm = 0
for key in year_sale :
    if
    print("%s년간 자동차 판매량 : %d대" %(key, year_sale[key])       )
    sm =sm +
print("2년간 자동차 판매량 : %대"%sm )    



#E6-3
year_sale = {"2016":237,"2017":98,"2018":158,"2019":233,"2020":120}    
sm = 0
for :
sm = sm + year_sale[key]
avg = sm / len()

 """

#심화문제
temp = {"월":15.5, "화":17.0, "수":16.2, "목":12.9, "금":11.0,"토":10.5,"일":10.5}
#S6-1
print("-"*50)
for key in temp :
  print("%3s "%key, end=" ")
print()
print("-"*50)

for key in temp :
  sum = sum + temp[key]
  print("%.1f "%temp[key], end=" ")
  print()
print("-"*50)
min = -999
minKey = "월요일"
for key in temp :
  if min > temp[key] :
    min = temp[key] 
    minKey = key
print("요일%s, 최저기온 : %.1f% (minKey, min) ")    
avg = sum/len(temp)
print("일주일간 기온의 평균은 %.1f"%avg)