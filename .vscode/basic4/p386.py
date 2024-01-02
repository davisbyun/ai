#json 파일을 파이썬으로 읽어오기
import json
""" 
with open(".vscode/basic4/member.json","r", encoding="utf-8") as f:
    dict = json.load(f)

    print(dict)

 """

with open("basic4/b.json" , "r", encoding="utf-8") as f1 :
  dict2 = json.load(f1)
print(dict2)

print(dict2 ['contactNumbers'][0]["type"])
print(dict2 ['favoriteSports'][0] )