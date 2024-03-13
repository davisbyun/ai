import cv2 as cv

img=cv.imread('mot_color70.jpg') # 영상 읽기
gray=cv.cvtColor(img,cv.COLOR_BGR2GRAY)

sift = cv.SIFT_create(nfeatures=0, nOctaveLayers=3, contrastThreshold=0.04, edgeThreshold=10, sigma=1.6) #SIFT 특징점을 추출
kp,des=sift.detectAndCompute(gray,None)  #특징점과 기술자 구함

gray=cv.drawKeypoints(gray,kp,None,flags=cv.DRAW_MATCHES_FLAGS_DRAW_RICH_KEYPOINTS)
cv.imshow('sift', gray)

k=cv.waitKey()
cv.destroyAllWindows()