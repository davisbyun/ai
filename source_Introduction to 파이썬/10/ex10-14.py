import json
 
member = {
    "id": "swhong",
    "name": "홍성우",
    "age": 23,
    "history": [
        {"date": "2021-03-15", "route": "mobile"},
        {"date": "2020-06-23", "route": "pc"}
    ]
}

with open("member.json", "w", encoding="utf-8") as f :
    json.dump(member, f, ensure_ascii=False, indent=4)
