def km_to_mile(x) :
    result = x * 0.621371
    return result

km = int(input("킬로미터를 입력하세요 : "))

mile = km_to_mile(km)

print("%d 킬로미터는 %.2f 마일이다." % (km, mile))
