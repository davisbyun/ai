import time

current_time = time.localtime(time.time())
print("게임 시작 시간 :", time.strftime("%I:%M:%S %p", current_time))

