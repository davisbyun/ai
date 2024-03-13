import skimage 
import numpy as np
import cv2 as cv
import time

coffee=skimage.data.coffee()

start=time.time()

#      가장 중요한 코드로 응용도가 높고 영역 분할에서 가장 많이 사용함.
#      1단계 slic() 슈퍼화소분할 알고리즘
#      2단계 rag_mean_color() 영상의 그래프 표현(에지 가중치로 영상그래프 구성) 
#      3단계 cut_normalized() 정규화 절단 알고리즘 
#      4단계 mark_boundaries 영역분할 정보를 담은 ncut 맵을 이용하여 영역 경계를 표사하고 marking 객체에 저장

slic=skimage.segmentation.slic(coffee,compactness=20,n_segments=600,start_label=1)
g=skimage.graph.rag_mean_color(coffee,slic,mode='similarity') 
ncut=skimage.graph.cut_normalized(slic,g)	# 정규화 절단
print(coffee.shape,' Coffee 영상을 분할하는데 ',time.time()-start,'초 소요')

marking=skimage.segmentation.mark_boundaries(coffee,ncut)
ncut_coffee=np.uint8(marking*255.0)

cv.imshow('Normalized cut',cv.cvtColor(ncut_coffee,cv.COLOR_RGB2BGR))  

cv.waitKey()
cv.destroyAllWindows()