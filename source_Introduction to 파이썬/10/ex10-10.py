import csv

file_name = "weather.csv"
f = open(file_name, "r", encoding="utf-8")
lines = csv.reader(f)

header = next(lines)
print(header)

f.close()
