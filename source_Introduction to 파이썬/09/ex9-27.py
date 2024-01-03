from datetime import datetime

today = datetime.now()

print("%s년" % today.year)
print("%s월" % today.month)
print("%s일" % today.day)
print("%s시" % today.hour)
print("%s분" % today.minute)
print("%s초" % today.second)

string = today.strftime("%Y/%m/%d %H:%M:%S")
print(string)
