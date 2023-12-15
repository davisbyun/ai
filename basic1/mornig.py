score = input("점수는?")

if score >= 90 :
  grade = "A"
elif score >= 80 :
  grade = "B"
elif score >= 70 :
  grade = "C"
elif score >= 60 :
  grade = "D"
else :
  grade = "F"

print(f"점수: {score} \n 등급: {grade} ")