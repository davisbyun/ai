import cv2 as cv 
import sys

img = cv.imread('soccer.jpg')
t, bin_img = cv.threshold(img[:,:,1], 0,255, cv.THRESH_BINARY+cv.THRESH_OTSU)
print('오츄알고리즘이 찾은 최적 임계값', t)

cv.imshow('R channel', img[:,:,2])
cv.imshow('R channel bvinarization', bin_img)

cv.waitKey()
cv.destroyWindow()

