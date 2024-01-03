import csv

file_name = "weather.csv"
f = open(file_name, "r", encoding="utf-8")
lines = csv.reader(f)

header = next(lines)

print("-" * 30)
print("일자          일교차")
print("-" * 30)

for line in lines :
    diff = float(line[3]) - float(line[4])
    print("%s       %.1f" % (line[1], diff))
print("-" * 30)

f.close()
