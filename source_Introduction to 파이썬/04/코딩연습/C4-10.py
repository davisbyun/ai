print("-" * 30) 
print("    달러    원화    유로")
print("-" * 30) 

dollar = 10

while dollar <= 100 : 
    won  = dollar * 1080
    euro = dollar * 0.81

    print("%7d %8.0f %7.1f" % (dollar, won, euro))   

    dollar = dollar + 10
    
print("-" * 30)

