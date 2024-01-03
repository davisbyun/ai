hour1 = int(input("첫 번째 시간의 시를 입력하세요 : "))
minute1 = int(input("첫 번째 시간의 분을 입력하세요 : "))

hour2 = int(input("두 번째 시간의 시를 입력하세요 : "))
minute2 = int(input("두 번째 시간의 분을 입력하세요 : "))


if hour1 < hour2 :
   first_hour = hour1
   first_minute = minute1
   second_hour = hour2
   second_minute = minute2
elif hour1 == hour2 :
   if minute1 <= minute2 :
      first_hour = hour1
      first_minute = minute1
      second_hour = hour2
      second_minute = minute2
   else :
      first_hour = hour2
      first_minute = minute2
      second_hour = hour1
      second_minute = minute1
else :
   first_hour = hour2
   first_minute = minute2
   second_hour = hour1
   second_minute = minute1

print()
print("- 빠른 시간 : %d:%d" % (first_hour, first_minute))
print("- 늦은 시간 : %d:%d" % (second_hour, second_minute))
