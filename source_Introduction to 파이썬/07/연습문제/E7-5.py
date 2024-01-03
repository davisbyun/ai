def add(x, y):
    return x + y

def subtract(x, y):
    return x - y

def multiply(x, y):
    return x * y

def divide(x, y):
    return x / y

print("- 선택 옵션")
print("1. 더하기")
print("2. 빼기")
print("3. 곱하기")
print("4. 나누기")

choice = input("원하는 연산을 선택하세요(1/2/3/4): ")
num1 = int(input("첫 번째 숫자를 입력하세요 : "))
num2 = int(input("두 번째 숫자를 입력하세요 : "))
print()

if choice == "1":
    print(num1, "+", num2, "=", add(num1, num2))

elif choice == "2":
    print(num1, "-", num2, "=", subtract(num1, num2))

elif choice == "3":
    print(num1, "x", num2, "=", multiply(num1, num2))

elif choice == "4":
    print(num1, "/", num2, "=", divide(num1, num2))
else:
    print("입력 오류!")
