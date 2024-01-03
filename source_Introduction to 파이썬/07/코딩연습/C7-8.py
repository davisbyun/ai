def get_item(userid) :
   game_items = {"kim":"총", "lee":"대포", "choi":"전투기", "hwang":"병사"}

   for key in game_items :
      if userid == key :
         item = game_items[key]

   return item

user1 = "kim"
user2 = "hwang"

print("%s의 게임 아이템 : %s" % (user1, get_item(user1)))
print("%s의 게임 아이템 : %s" % (user2, get_item(user2)))


