#정답 : ① biggest ② year_sale[key]

year_sale = {"2016":237, "2017":98, "2018":158, "2019":233,"2020":120}

big_year = 2016
biggest = year_sale["2016"]
for key in year_sale :
    if year_sale[key] > biggest :
        big_year = key 
        biggest = year_sale[key]

print("판매량이 가장 많은 해 : %s년" % big_year)
print("판매량 : %d대" % biggest)
