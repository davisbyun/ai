#파일 삭제하기
import os

if os.path.exists("./basic3/new_file.txt") :
    os.remove("./basic3/new_file.txt")
else :
    print("삭제하려는 파일이 없어요")    
#폴더 삭제하기
if os.path.exists("./basic3/mm") :
    os.rename("./basic3/mm", ".basic3/mm_new")
    print("이미 폴더가 있어요")
else :
    os.mkdir("./basic3/mm")        