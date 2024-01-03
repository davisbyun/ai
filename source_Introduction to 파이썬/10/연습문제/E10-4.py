import csv

file_name = "weather.csv"
f = open(file_name, "r", encoding="utf-8")
lines = csv.reader(f)

header = next(lines)

max_value = -1000.0

for line in lines :
    if float(line[6]) > max_value :
        max_day = line[1]
        max_value = float(line[6])

print("일자 : %s" % max_day)
print("최대 습도 : %.1f %%" % max_value)

f.close()
