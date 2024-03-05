import cv2 as cv  #opencv 사용
import sys  # 운영체제 사용

img=cv.imread('soccer.jpg') #파일읽기
cv1=cv.imread('opencv1.png')
cv2=cv.imread('opencv2.jpg')
if img is None:
    sys.exit('파일을 찾을 수 없습니다')
    
cv.imshow('Image display', img)  #화면표시하기  
cv.imshow('Image display', cv1)  #화면표시하기  
cv.imshow('Image display', cv2)  #화면표시하기  
cv.waitKey()  #멈추기
cv.destroyAllWindows()  #닫기



#연습문제
#3
