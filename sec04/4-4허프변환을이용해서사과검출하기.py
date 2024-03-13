import cv2 as cv 

img=cv.imread('apples.jpg')
gray=cv.cvtColor(img,cv.COLOR_BGR2GRAY)

apples=cv.HoughCircles(gray,cv.HOUGH_GRADIENT,1,200,param1=150,param2=20,minRadius=50,maxRadius=120)  
#HoughCircle : gray에서 원을 검출해서 중심과 반지름을 지정한 원을 반출

for i in apples[0]: 
    cv.circle(img,(int(i[0]),int(i[1])),int(i[2]),(255,0,0),2)  #행, 열 중심점, 반지름, 색깔, width

cv.imshow('Apple detection',img)  

cv.waitKey()
cv.destroyAllWindows()

