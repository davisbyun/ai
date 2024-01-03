import csv

file_name = "weather.csv"
f = open(file_name, "r", encoding="utf-8")
lines = csv.reader(f)

header = next(lines)

for line in lines :
    if line[1] == "12월 25일" :
        day = line[1]
        min_temp = line[4]

print("%s 최저기온 : %s도" % (day, min_temp))

f.close()
