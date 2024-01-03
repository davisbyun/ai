import datetime

today = datetime.date.today()
week = datetime.timedelta(weeks=1)

next_week = today + week
print("오늘 :", today)
print("일주일 후 :", next_week)
