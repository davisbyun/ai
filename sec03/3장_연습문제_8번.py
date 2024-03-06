#연습문제 8번
import cv2 as cv
import numpy as np
import matplotlib.pyplot as plt
import time


def My_equalizeHist(gray):
    h=np.zeros([256])
    for j in range(gray.shape[0]):
         for i in range(gray.shape[1]):
             h[gray[j][i]]+=1
             h1=h/(gray.shape[0]*gray.shape[1])
             h2=h1.cumsum()
             mapping=np.round(h2*255)
 
    for j in range(gray.shape[0]):
        for i in range(gray.shape[1]):
            gray[j][i]=mapping[gray[j][i]] 
 
    return gray

img=cv.imread('mistyroad.jpg') 
gray=cv.cvtColor(img,cv.COLOR_BGR2GRAY) # 명암 영상으로 변환
plt.imshow(gray,cmap='gray'), plt.xticks([]), plt.yticks([]), plt.show()
h=cv.calcHist([gray],[0],None,[256],[0,256]) # 히스토그램을 구해 출력
plt.plot(h,color='r',linewidth=1), plt.show()

start=time.time()
equal=cv.equalizeHist(gray) # 히스토그램을 평활화하고 출력
print('내가짠평활화프로그램 전==> ', time.time()-start)
plt.imshow(equal,cmap='gray'), plt.xticks([]), plt.yticks([]), plt.show()
h=cv.calcHist([equal],[0],None,[256],[0,256]) # 히스토그램을 구해 출력
plt.plot(h,color='r',linewidth=1), plt.show()
start=time.time()
my_equal=My_equalizeHist(gray) # 내가 짠 프로그램
print('내가짠평활화프로그램 후==> ',time.time()-start)
plt.imshow(my_equal,cmap='gray'), plt.xticks([]), plt.yticks([]), plt.show()
h=cv.calcHist([my_equal],[0],None,[256],[0,256]) # 히스토그램을 구해 출력
plt.plot(h,color='r',linewidth=1), plt.show()

cv.waitKey()
cv.destroyAllWindows()