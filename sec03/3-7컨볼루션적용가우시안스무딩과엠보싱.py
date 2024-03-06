import cv2 as cv
import numpy as np

img=cv.imread('soccer.jpg')
img=cv.resize(img, dsize=(0,0), fx=0.4, fy=0.4)

gray=cv.cvtColor(img, cv.COLOR_BGR2GRAY)
cv.putText(gray, 'soccer', (10,20), cv.FONT_HERSHEY_SIMPLEX, 0.7, (255,255,255), 2) #cv.putText(img, text, org, fontFace, fontScale, color)
cv.imshow('Original',gray) 

#cv.GaussianBlur(src, ksize, sigmaX) - 영상, 필터의 크기, 표준편차 0.0으로 하면 필터크기를 보고 자동 추정
smooth=np.hstack((cv.GaussianBlur(gray, (5,5),0.0), cv.GaussianBlur(gray, (9,9),0.0), cv.GaussianBlur(gray, (15,15),0.0))) 
cv.imshow('Smooth', smooth) 

#엠보싱 필터를 정의
femboss=np.array([[-1.0, 0.0, 0.0],
		    	 [ 0.0, 0.0, 0.0],
			     [ 0.0, 0.0, 1.0]])

sharpen=np.array([[0.0, -1.0, 0.0],
		    	 [ -1.0, 4.0, -1.0],
			     [ 0.0, -1.0, 0.0]])

smothing=np.array([[0.11, 0.11, 0.11],
		    	 [ 0.11, 0.11, 0.11],
			     [ 0.11, 0.11, 0.11]])


gray16=np.int16(gray)
#(np.clip(a,p,q) a가 p보다 작으면 p를 q보다 크면 q로 바꾸고 그렇지 않으면 원래값 유지
#np.clip(a+255, 0, 255 )이면 0~255 범위로 변환 - 음수가 나오지 않게 함
emboss=np. uint8(np.clip(cv.filter2D(gray16,-1, femboss)+128,0,255))  
emboss_bad=np.uint8(cv.filter2D(gray16,-1, femboss)+128)
emboss_worse=cv.filter2D(gray,-1, femboss)

sharpen10=np. uint8(np.clip(cv.filter2D(gray16,-1, sharpen)+128,0,255))  
smothing10=np. uint8(np.clip(cv.filter2D(gray16,-1, smothing)+128,0,255))  

cv.imshow('Emboss', emboss) 
cv.imshow('Emboss_bad', emboss_bad) 
cv.imshow('Emboss_worse', emboss_worse)
cv.imshow('sharpen10', sharpen10) 
cv.imshow('smothing10', smothing10) 

cv.waitKey()
cv.destroyAllWindows()



