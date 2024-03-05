import cv2 as cv
import sys

img=cv.imread('girl_laughing.jpg')

if img is None: 
   sys.exit('파일을 찾을 수 없습니다')

cv.rectangle(img,(830,30),(1000,200),(0,0,255),  2)   
      #직사각형 좌상끝,   우하끝,   색상BGR ,   선의 두께 
#cv.circle(img,(900,129), 100, (0,255,0),2)      
cv.putText(img,'laugh',(830,24), cv.FONT_HERSHEY_SIMPLEX, 1, (255,0,0),2)
cv.imshow('Draw', img)
cv.waitKey()
cv.destroyAllWindows()

