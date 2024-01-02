""" #csv 파일 처리
import csv
file_name = ".vscode/basic3/weather.csv"
f = open (file_name, "r")
lines = csv.reader(f)
print(lines)
  print(line(lines))
  print(line(lines))
  print(line(lines))
f.close  


import csv
file_name = ".vscode/basic3/weather.csv"
f = open (file_name, "r", encoding="utf-8")
lines = csv.reader(f)

next(lines) #열이름*즉 제목명을 구해서 제거하기
for line in lines :
    if line[1] =="2023-12-27 0:00" :
        result = line[2]
        print(result)        
f.close
"""

import csv

read_file_name = ".vscode/basic3/weather.csv"
write_file_name = ".vscode/basic3/weather_온도.csv"
rf = open (read_file_name, "r", encoding="utf-8")
wf = open (write_file_name, "w", encoding="utf-8")

lines = csv.reader(rf)
wr = csv.writer(wf)
next(lines) #열이름*즉 제목명을 구해서 제거하기
for line in lines :
    if line[1] != "2023-12-27 0:00" :
        result = line[2]
        print(result)        
        wr.writerow(result)
rf.close
wf.close

