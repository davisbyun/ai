dans = (2, 3, 4, 5, 6, 7, 8, 9)

print("구구단표")
print("=" * 30)

for dan in dans :
    print(str(dan) + "단")

    for i in range(1, 10) :
        print("%d x %d = %d" % (dan, i, dan*i))
    print("-" * 30)
