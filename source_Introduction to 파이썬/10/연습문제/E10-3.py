# 정답 : ① open ② line[5] ③ sm
import csv

file_name = "weather.csv"
f = open(file_name, "r", encoding="utf-8")
lines = csv.reader(f)

header = next(lines)

sm = 0
for line in lines :
    sm = sm + float(line[5])

print("12월 총 강수량: %d mm" % sm)

f.close()
