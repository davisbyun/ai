import cv2 as cv   #소벨에지 검출하기

img=cv.imread('soccer.jpg')
gray=cv.cvtColor(img,cv.COLOR_BGR2GRAY)  #컬러영상 -> 명암영상(그래이스케일)로 변경

grad_x=cv.Sobel(gray,cv.CV_32F,1,0,ksize=3)	# 소벨 연산자 적용 (1,0)은 x방향 (0,1)은 y방향으로 연산 x,y크기는 3X3 임
grad_y=cv.Sobel(gray,cv.CV_32F,0,1,ksize=3)

sobel_x=cv.convertScaleAbs(grad_x)	# 절대값을 취해 양수 영상으로 변환 (0보다 작은 값은 0, 255보다 큰 값은 255로 정한다.) - 8비트형인 CV8(numpy의 unit8과 같음)
sobel_y=cv.convertScaleAbs(grad_y)

#sobel_x와 sobel_y 에 0.5를 곱해서 0을 더함
edge_strength=cv.addWeighted(sobel_x,0.5,sobel_y,0.5,0)	# 에지 강도 계산

cv.imshow('Original',gray)
cv.imshow('sobelx',sobel_x)
cv.imshow('sobely',sobel_y)
cv.imshow('edge strength',edge_strength)

cv.waitKey()
cv.destroyAllWindows()


