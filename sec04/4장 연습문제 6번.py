#연습문제 6번
# 다음은 OpenCV가 제공하는 GrabCut 함수의 API다. 40행의 인수 5는 여섯 번째 매개변수
# iterCount에 해당한다. GrabCut 알고리즘은 사용자의 붓 칠에 따라 물체와 배경을 위한 초기 히스
# 토그램을 만들고, 히스토그램에 따라 물체일 것 같은 화소와 배경일 것 같은 화소를 지정한 다음
# 히스토그램을 갱신하고 같은 과정을 반복한다. iterCount는 반복 횟수를 지정핚다. 아래 영상은
# iterCount를 5와 1로 설정했을 때를 비교한다. 5로 설정하여 5번 반복했을 때 훨씬 좋은 품질이
# 됨을 알 수 있다

import cv2 as cv 
import numpy as np

img=cv.imread('soccer.jpg')	# 영상 읽기
img_show=np.copy(img)		# 붓 칠을 디스플레이할 목적의 영상

mask=np.zeros((img.shape[0],img.shape[1]),np.uint8) 
mask[:,:]=cv.GC_PR_BGD		# 모든 화소를 배경일 것 같음으로 초기화

BrushSiz=9				# 붓의 크기
LColor,RColor=(255,0,0),(0,0,255)	# 파란색(물체)과 빨간색(배경)

def painting(event,x,y,flags,param):
    if event==cv.EVENT_LBUTTONDOWN:   
        cv.circle(img_show,(x,y),BrushSiz,LColor,-1)	# 왼쪽 버튼 클릭하면 파란색
        cv.circle(mask,(x,y),BrushSiz,cv.GC_FGD,-1)
    elif event==cv.EVENT_RBUTTONDOWN: 
        cv.circle(img_show,(x,y),BrushSiz,RColor,-1)	# 오른쪽 버튼 클릭하면 빨간색
        cv.circle(mask,(x,y),BrushSiz,cv.GC_BGD,-1)
    elif event==cv.EVENT_MOUSEMOVE and flags==cv.EVENT_FLAG_LBUTTON:
        cv.circle(img_show,(x,y),BrushSiz,LColor,-1)# 왼쪽 버튼 클릭하고 이동하면 파란색
        cv.circle(mask,(x,y),BrushSiz,cv.GC_FGD,-1)
    elif event==cv.EVENT_MOUSEMOVE and flags==cv.EVENT_FLAG_RBUTTON:
        cv.circle(img_show,(x,y),BrushSiz,RColor,-1)	# 오른쪽 버튼 클릭하고 이동하면 빨간색
        cv.circle(mask,(x,y),BrushSiz,cv.GC_BGD,-1)

    cv.imshow('Painting',img_show)
    
cv.namedWindow('Painting')
cv.setMouseCallback('Painting',painting)

while(True):				# 붓 칠을 끝내려면 'q' 키를 누름
    if cv.waitKey(1)==ord('q'): 
        break

# 여기부터 GrabCut 적용하는 코드
background=np.zeros((1,65),np.float64)	# 배경 히스토그램 0으로 초기화
foreground=np.zeros((1,65),np.float64)	# 물체 히스토그램 0으로 초기화

cv.grabCut(img,mask,None,background,foreground,5,cv.GC_INIT_WITH_MASK)            #------> 1로 변경하는 것이 문제임.
mask2=np.where((mask==cv.GC_BGD)|(mask==cv.GC_PR_BGD),0,1).astype('uint8')
grab=img*mask2[:,:,np.newaxis]
cv.imshow('Grab cut image',grab)  

cv.waitKey()
cv.destroyAllWindows()