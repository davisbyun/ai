import cv2 as cv                 #캐니 에지 실험하기 1.거짓긍정을 줄이기 위해, 2.ㅓ없는 에지를 그려주는 것

img=cv.imread('soccer.jpg')	# 영상 읽기

gray=cv.cvtColor(img,cv.COLOR_BGR2GRAY)

canny1=cv.Canny(gray,50,150)	# Tlow=50, Thigh=150으로 설정 Thigh는 Tlow의 2~3배의 값을 사용하는 것을 권고
canny2=cv.Canny(gray,100,200)	# Tlow=100, Thigh=200으로 설정
canny3=cv.Canny(gray,80,240)

cv.imshow('Original',gray)
cv.imshow('Canny1',canny1)
cv.imshow('Canny2',canny2)
cv.imshow('Canny3',canny3)

cv.waitKey()
cv.destroyAllWindows()

