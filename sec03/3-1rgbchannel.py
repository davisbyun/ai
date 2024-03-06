import cv2 as cv
import sys 

img = cv.imread('soccer.jpg')

if img is None :
    sys.exit()
    
cv.imshow('original_RGB', img)    
cv.imshow('upper left half', img[0:img.shape[0]//2,0:img.shape[1]//2, :1]) # (행, 열, 채널-쉼표기준 - 948/2 , 1434/2 , :1  ==> 0:474, 0:717, :1) 
cv.imshow('Center half', img[img.shape[0]//4:3*img.shape[0]//4, img.shape[1]//4:3*img.shape[1]//4, :]) # (행, 열, 채널-쉼표기준)

cv.imshow('R channel', img[:, :, 2])
cv.imshow('G channel', img[:, :, 1])
cv.imshow('B channel', img[:, :, 0])

cv.waitKey()
cv.destroyWindow()
