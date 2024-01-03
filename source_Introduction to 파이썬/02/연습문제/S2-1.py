kg = int(input("변환할 킬로그램(kg)은? "))

pound = kg * 2.204623
ounce = kg * 35.273962

print("-" * 50)
print("킬로그램    파운드    온스")
print("-" * 50)
print("%d          %.2f  %.2f" % (kg, pound, ounce))
print("-" * 50)
