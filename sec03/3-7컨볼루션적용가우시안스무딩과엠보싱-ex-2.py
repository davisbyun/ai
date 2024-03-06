# 연습문제 7 p.116

# 원리: 가우시안 스무딩은 [그림 3-17(a)]의 오른쪽에 있는 5*5 필터와 같은 가우시안 필터로 컨볼
# 루션을 수행함. 메디안 필터는 윈도우 안에 포함된 화소 값을 정련한 다음 가운데 위치한 값을
# 취함. 예를 들어 3*3 메디안 필터의 경우 현재 윈도우 안의 화소 값이 [[3,2,12],[4,2,11],[5,3,10]]과
# 같다면, 이들을 정련하면 [2,2,3,3,4,5,10,11,12]이므로 가운데 위치한 4를 취해 해당 화소에 기록함
# 효과: 가우시안 스무딩은 가중 평균을 취하는 셈이므로 물체 경계, 즉 에지가 뭉개지는 효과를 피
# 할 수 없지만, 메디안은 중앙값을 취하므로 에지를 보존하는 효과가 있음. 위 프로그램 실행 결과
# 에서 메디안 필터를 적용한 영상은 배경과 물체의 대비가 가우시안 필터의 결과에 비해 우수함을
# 확인할 수 있음

import cv2 as cv
import numpy as np

img=cv.imread('soccer.jpg')
img=cv.resize(img, dsize=(0,0), fx=0.4, fy=0.4)

gray=cv.cvtColor(img, cv.COLOR_BGR2GRAY)
cv.putText(gray, 'soccer', (10,20), cv.FONT_HERSHEY_SIMPLEX, 0.7, (255,255,255), 2) #cv.putText(img, text, org, fontFace, fontScale, color)
cv.imshow('Original',gray) 

#cv.GaussianBlur(src, ksize, sigmaX) - 영상, 필터의 크기, 표준편차 0.0으로 하면 필터크기를 보고 자동 추정
smooth=np.hstack((cv.GaussianBlur(gray, (5,5),0.0), cv.GaussianBlur(gray, (9,9),0.0), cv.GaussianBlur(gray, (15,15),0.0))) 
median_smooth=np.hstack((cv.medianBlur(gray, 5), cv.medianBlur(gray, 9), cv.medianBlur(gray, 15)) )

                        
cv.imshow('GaussianBlur Smooth', smooth) 
cv.imshow('median Smooth', median_smooth) 


cv.waitKey()
cv.destroyAllWindows()



