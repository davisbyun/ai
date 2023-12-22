#C6-3

admin_info = { "id":"admin", "password":"12345"    }
input_id = input("아이디를 입력하세요: ")
input_pass = input("비밀번호를 입력하세요: ")

if input_id == admin_info["id"] and input_pass == admin_info["password"]    :
  print("정보에 접근 권한이 있습니다.")
else :
  print("정보에 접근 권한이 없습니다.")

#C6-4

words = {"꽃":"flower", "나비":"butterfly","학교":"school", "자동차":"car", "비행기":"airplane"}

print("영어단어 맞추기 게임")
for kor in words :
  input_word = input("%s,'에 해당하는 영어단어를 입력해주세요. " %kor)
  if (input_word == words[kor]) :
    print("정답입니다.")
  else :
    print("틀렸습니다.")  


             