#연습문제
#5 (p.073)

import cv2 as cv
import sys

cap=cv.VideoCapture(0, cv.CAP_DSHOW) #카메라와 연결 시도

if not cap.isOpened():
    sys.exit('카메라 연결 실패')

mode = 'c' #연습문제 5 추가 코드

while True:
    ret, frame = cap.read()  #비디오를 구성하는 프레임 획득  
    
    if not ret :
       print('프레임 획득에 실패하여 루프를 나갑니다') 
       break
   
    if mode == 'c' :
        cv.imshow('video display', frame)
        
    elif mode=='g' :
        gray = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)
        cv.imshow('video display', gray)
        
    key=cv.waitKey(1)    
    if key == ord('q'):
        break
    elif key== ord('g'):
        mode='g'        
    elif key == ord('c'):
        mode =='c'
                

cap.release()
cv.destroyAllWindows()    





