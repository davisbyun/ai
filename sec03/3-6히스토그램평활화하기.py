import cv2 as cv
import matplotlib.pyplot as plt

img=cv.imread('D:/ai/study/computer_vision_study/sec03/mistyroad.jpg')
gray=cv.cvtColor(img, cv.COLOR_BGR2GRAY) #컬러를 gray 로 변경하고 변수할당

#명암 영상으로 변환하고 출력
plt.imshow(gray,cmap='gray'), plt.xticks([]), plt.yticks([]), plt.show()
h=cv.calcHist([gray], [0],None, [256], [0,256]) #히스토그램을 구해 출력 cv.calcHist(images, channels, mask, histSize, ranges)
plt.plot(h,color='r', linewidth=1), plt.show()

equal=cv.equalizeHist(gray)  #히스토그램을 평활화하고 출력
plt.imshow(equal,cmap='gray'), plt.xticks([]), plt.yticks([]), plt.show()
h=cv.calcHist([equal],[0], None, [256], [0,256]) #cv.calcHist(images, channels, mask, histSize, ranges)

plt.plot(h,color='r', linewidth=1), plt.show()

