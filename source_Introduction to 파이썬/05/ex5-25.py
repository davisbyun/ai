phone_list1 = ["010-3654-2637", "010-3984-5377", "010-3554-0973"]
print(phone_list1)

phone_list2 = []
for number in phone_list1 :
    x = number.replace("-", "")

    phone_list2.append(x)
    
print(phone_list2)
    
