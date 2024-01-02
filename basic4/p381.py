import csv

rf = open("./basic4/a.csv", "r",encoding="utf-8")
wf = open("./basic4/a_copy.csv","w",newline="",encoding="utf-8" )

r = csv.reader(rf)
w = csv.writer(wf)

for i in range(3) :
    line =  next(r)
    w.writerow(line)

rf.close()
wf.close()


