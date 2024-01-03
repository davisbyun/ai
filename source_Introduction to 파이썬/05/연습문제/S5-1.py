file_names = ["file1.py", "file2.txt", "file3.pptx", "file4.doc"]

for file_name in file_names :
    arr = file_name.split(".")

    print("%s => 파일명:%s, 확장자:.%s" % (file_name, arr[0], arr[1])) 


