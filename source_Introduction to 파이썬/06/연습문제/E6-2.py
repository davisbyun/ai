#정답 : ① key=="2018" ② key=="2019" ③ year_sale[key]

year_sale = {"2016":237, "2017":98, "2018":158, "2019":233,"2020":120}
sm = 0
for key in year_sale :
    if key=="2018" or key=="2019" :
        print("%s년 자동차 판매량 : %d" % (key, year_sale[key]))
        sm = sm + year_sale[key]
        
print("2년간 자동차 판매량 : %d대" % sm)



 
