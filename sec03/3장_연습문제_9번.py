#3장 연습문제 9번 p.116

import cv2 as cv

def draw(event, x, y, flags, param):
    global x1, y1, x2, y2  #전역변수 선언
    
    if event == cv.EVENT_LBUTTONDOWN :
        x1, y1 = x, y
    elif event == cv.EVENT_LBUTTONUP :
        x2, y2 = x, y
        cv.rectangle(img, (x1,y1),(x2,y2), (0,0,255), 2)    
    cv.imshow('Drawing', img)
    
img=cv.imread('rose.png')
cv.namedWindow('Drawing')  #윈도우 창- 마우스 이벤트가 처리되는 창의 이름
cv.imshow('Drawing',img)

cv.setMouseCallback('Drawing', draw)

while(True) :
    if cv.waitKey(1) ==ord('q' ):
        break

patch = img[  y1:y2  , x1:x2 , : ]

img = cv.rectangle(img, (x1,y1),(x2,y2) ,(255,0,0) ,2)

patch1=cv.resize(patch, dsize=(0,0), fx=5, fy=5, interpolation=cv.INTER_NEAREST) 
patch2=cv.resize(patch, dsize=(0,0), fx=5, fy=5, interpolation=cv.INTER_LINEAR) 
patch3=cv.resize(patch, dsize=(0,0), fx=5, fy=5, interpolation=cv.INTER_CUBIC)

cv.imshow('Original', img)
cv.imshow('Resize nearest',patch1) 
cv.imshow('Resize bilinear',patch2)
cv.imshow('Resize bicubic',patch3)

cv.waitKey()
cv.destroyAllWindows()
