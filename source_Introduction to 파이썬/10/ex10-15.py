import json

with open("member.json", "r", encoding="utf-8") as f :
    dict = json.load(f)

    print(dict)
