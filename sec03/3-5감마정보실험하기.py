import cv2 as cv
import numpy as np

img=cv.imread('D:/ai/study/computer_vision_study/soccer.jpg')
img=cv.resize(img,dsize=(0,0), fx=0.25, fy=0.25)

def gamma(f, gamma=1.0): #외부에서 감마값이 들어오지 않으면 1.0을 기본 값으로 한다.
     f1=f/255.0
     return np.uint8 (255*(f1**gamma))

gc=np.hstack((gamma(img, 0.5), gamma(img, 0.75), gamma(img,1.0), gamma(img, 2.0), gamma(img, 3.0)))
cv.imshow('gamma',gc)

cv.waitKey()
cv.destroyAllWindows()
