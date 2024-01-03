# 나이를 입력 받아서 65세 이상이면 입장료 무료
# 티켓변수에 2000원을 넣는다.
# 나이를 입력 받아 변수에 넣는다
# 조건문으로 나이가 65세 이상인지 판단한다.

# 나이가 61이상이면 0, 40~60 1000, 30~39 1500, 20~29 2000, 10~19 2500, 10이하 0원입니다

# 티켓변수에 0으로 넣는다
# 티켓을 출력한다
# 나이를 입력 받는게 아니라 태어난 연도 입력 하면 나이 계산해서
from datetime import datetime

ticket = 2000
birth = int( input( "태어난 년도는?") )
currentYear = datetime.today().year
age = currentYear - birth # 힌트 2023 - 년도 2023년은 날짜 함수로 구하기
if birth > currentYear :
    print(f"올해가 { currentYear}년입니다 ") 
    print("입력이 잘못 되었네요")
else :
    if age >= 65 or 0 <= age <= 10 :
        ticket = 0
    elif   40 <=age<= 60 :
        ticket = 1000   
    elif   30 <= age <= 39 :
        ticket = 1500
    elif   20 <= age <= 29 :
        ticket = 2000
    elif   11 <= age <= 19 :
        ticket = 2500            
    print( f"당신의 나이는 {age}세 입니다")
    print( f"입장료는 {ticket}원 입니다 ")
