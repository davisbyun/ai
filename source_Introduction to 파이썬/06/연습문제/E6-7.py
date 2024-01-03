# 정답 : 강아지/고양이/이구아나/
person = {"name":"홍길동", "age":30, "family":5, "children":["선미","성진","소영"],
          "pets":["강아지", "고양이", "이구아나"]}

for key in person :
    if key == "pets" :
        for name in person[key] :
            print(name, end="/")



 
