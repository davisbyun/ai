#딕셔너리를 json 의 스트링으로
 
""" import json

member ={
      "id" : "swhong",
      "name" : "홍성우",
      " age " : 23,
      "history" : [
          {"data" :"2021-03-15", "route ":"mobile"},
          {"data" : "2020-06-23", "route ":"mobile"} ]
          }
string = json.dumps(member,ensure_ascii-False, indent=4)
print(string)
print((tpye)string) """


import json

k ={
      "id" : "lee",
      "name" : "이순신",
      " age " : 23,
      "history" : [
          {"data" :"2021-03-15", "route ":"mobile"},
          {"data" : "2020-06-23", "route ":"mobile"} ]
} 
with open("./basic4/member.json" , "w" , encoding="utf-8") as f:
        json.dumpO(k, f, ensure_ascii=False, indent = 4)
