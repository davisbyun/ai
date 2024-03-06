#연습문제 p116 10번
#아래 실험을 통해 my_cvtGray1과 my_cvtGray2의 속도 차이를 설명하시오 .
# 속도 향상을 위핚 여러 기법을 동원핚다. 세 가지 기법을 제시핚다.
# ① 이중 for 문을 사용하는 my_cvtGray1은 각 요소를 개별적으로 처리한다. 파이썬은 데이터 형
# 을 동적으로 바인딩하는 언어이기 때문에 개별 요소마다 데이터 형을 확인(type checking)하
# 고 확인된 형에 따라 연산을 실제 수행한 함수를 배정(function dispatch)하는 과정을 거친다.
# 이런 갂접 비용으로 인해 my_cvtGray1은 느리다. 반면 배열 연산을 사용하는 my_cvtGray2 
# 함수는 배열의 모든 요소는 같은 데이터 형이라는 사실에 따라, 연산을 시작하기 전에 데이
# 터 형 확인과 함수 배정을 수행해 놓고 모든 요소에 일괄적으로 적용한다. numpy는 이런 효
# 율적인 처리를 universal function(ufunc)를 통해 구현한다.
# ② 배열의 요소가 같은 바이트 수를 차지하며 연속 메모리 공간에 저장되어 있다는 사실을 이용
# 하여 요소 접근을 효율적으로 수행하여 속도 향상을 꾀한다. 예를 들어 요소가 4바이트 정수
# 라면 다음 요소를 접근할 때는 현재 요소 주소에 4를 더하면 된다.
# ③ 캐시를 사용하여 접근 시간을 줄인다. 주기억 장치보다 빠른 캐시에 여러 요소를 핚꺼번에
# 담아두고 캐시에서 요소를 가져다 연산함으로써 속도 향상을 꾀한다

import cv2 as cv
import numpy as np
import time

def my_cvtGray1(bgr_img):
   g=np.zeros([bgr_img.shape[0],bgr_img.shape[1]])
   for r in range(bgr_img.shape[0]):
      for c in range(bgr_img.shape[1]):
          g[r,c]=0.114*bgr_img[r,c,0]+0.587*bgr_img[r,c,1]+0.299*bgr_img[r,c,2]
   return np.uint8(g)

def my_cvtGray2 (bgr_img):
   g=np.zeros([bgr_img.shape[0],bgr_img.shape[1]])
   g=0.114*bgr_img[:,:,0] +0.587*bgr_img[:,:,1]+0.299*bgr_img[:,:,2]
   return np.uint8(g)

img=cv.imread('D:/ai/study/computer_vision_study/sec03/girl_laughing.jpg')

start=time.time()
my_cvtGray1(img)
print('My time1: ', time.time()-start)

start=time.time()
my_cvtGray2(img)
print('My time2: ', time.time()-start) 

start=time.time()
cv.cvtColor(img, cv.COLOR_BGR2GRAY)
print('OpenCV time:', time.time()-start)
