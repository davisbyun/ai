#datetime 모듈
import datetime
#import datetime as dt 
#from datetime import timedelta, date , now, strftime, today

time1  = datetime.timedelta( days=3, hours=3, minutes=30  )
time2  = datetime.timedelta( days=5, hours=5, minutes=40  )
print(time2-time1)
print(time2+time1)


