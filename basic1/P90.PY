"""
price = 20000
discount = 10
deliver = 3000
pay = price - (price * (discount/100)) + deliver


print(f"책값은? {price}, 할인율은 {discount}%")
print(f"배송료 {deliver}, 결제금액 {int(pay)}")

#배송료가 2000원이상 비싸다 아니면 저렴하다

if deliver >= 2000 :
  print("비싸다.")
else :
  print("저렴하다.")  

#배송료가 2000원이상 비싸다 배송료 0.02 추가할인하여 출력
if deliver >= 2000 :
  print("비싸다.")

  deliver = deliver *(1- 0.02)
  print(int(deliver))
"""

