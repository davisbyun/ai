price = int(input("책 값은? "))
discount= int(input("할인율은? "))
delivery = int(input("배송료는? "))

pay = price - (price * (discount/100)) + delivery

print("책 값 : %d원" % price)
print("할인율 : %d" % discount)
print("배송료 : %d원" % delivery)
print("결제 금액 : %.0f원" % pay)


