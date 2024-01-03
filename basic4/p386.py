# json 파일을 파이썬으로 읽어오기
import json

with  open("./basic4/member.json", "r", encoding="utf-8")  as f :
    dict = json.load( f )

    print( dict )
    print( dict['history'] )
    print( dict['history'][0] )
    print( dict['history'][0]["data"] )

    # pc 출력하기
    print( dict )
    print( dict['history'] )
    print( dict['history'][1] )
    print( dict['history'][1]["route"] )  

    # 나이 23 출력하기
    print( dict["age"] ) 

with open( "./basic4/b.json", "r", encoding="utf-8") as f1 :
    dict2 = json.load(f1)

    print(dict2)
    # Home
    print(dict2['contactNumbers'][0]['type'])
    # Football
    print( dict2["favoriteSports"][0])
    
        