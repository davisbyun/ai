import skimage
import numpy as np
import cv2 as cv

orig=skimage.data.horse()  #skimage가 제공하는 horse 영상을 읽어 orig객체에 저장
img=255-np.uint8(orig)*255 #말영역은 255 (False), 배경영역은 0 (True)인 영상으로 변환  orig 의 값은 True, False 임
cv.imshow('Horse',img)

contours,hierarchy=cv.findContours(img,cv.RETR_EXTERNAL,cv.CHAIN_APPROX_NONE)

img2=cv.cvtColor(img,cv.COLOR_GRAY2BGR)		# 컬러 디스플레이용 영상
cv.drawContours(img2,contours,-1,(255,0,255),2)  #경계선 구함-경계선을 분홍으로 변경
cv.imshow('Horse with contour',img2)

contour=contours[0]
m=cv.moments(contour)				# 몇 가지 특징 
area=cv.contourArea(contour)
cx,cy=m['m10']/m['m00'],m['m01']/m['m00']  #중점 p515 식 참조
perimeter=cv.arcLength(contour,True) #둘레
roundness=(4.0*np.pi*area)/(perimeter*perimeter) #둥근 정도
print('면적=',area,'\n중점=(',cx,',',cy,')','\n둘레=',perimeter,'\n둥근 정도=',roundness)

img3=cv.cvtColor(img,cv.COLOR_GRAY2BGR)		# 컬러 디스플레이용 영상

contour_approx=cv.approxPolyDP(contour,8,True)	# 경계선을 직선으로 근사 알고리즘 적용
cv.drawContours(img3,[contour_approx],-1,(0,255,0),2)

hull=cv.convexHull(contour)			# 볼록 헐
hull=hull.reshape(1,hull.shape[0],hull.shape[2])
cv.drawContours(img3,hull,-1,(0,0,255),2)

cv.imshow('Horse with line segments and convex hull',img3)

cv.waitKey()
cv.destroyAllWindows()