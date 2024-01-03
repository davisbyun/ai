import csv

file_name1 = "weather.csv"
file_name2 = "weather2.csv"
f1 = open(file_name1, "r", encoding="utf-8")
f2 = open(file_name2, "w", encoding="utf-8", newline="")

lines = csv.reader(f1)
wr = csv.writer(f2)

header = next(lines)

for i in range(5) :
    line = next(lines)
    wr.writerow(line)

print("파일쓰기 종료!")
    
f1.close()
f2.close()
