def cm_inch(x):
    result = x * 0.393701
    return result

def kg_pound(x):
    result = x * 2.204623
    return result

print("- 선택 옵션")
print("1. 길이 환산(센티미터 --> 인치)")
print("2. 무게 환산(킬로그램 --> 파운드)")

choice = input("원하는 환산 단위를 선택하세요.(1/2): ")

if choice == "1":
    cm = int(input("센티미터 단위의 길이를 입력하세요 : "))
    inch = cm_inch(cm)
    print("%d 센티미터 --> %.2f 인치" % (cm, inch))

elif choice == "2":
    kg = int(input("킬로그램 단위의 무게를 입력하세요 : "))
    pound = kg_pound(kg)
    print("%d 킬로그램 --> %.2f 파운드" % (kg, pound))
else:
    print("입력 오류!")
