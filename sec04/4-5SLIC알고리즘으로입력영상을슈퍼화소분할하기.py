import skimage
import numpy as np
import cv2 as cv

img=skimage.data.coffee()
cv.imshow('Coffee image',cv.cvtColor(img,cv.COLOR_RGB2BGR)) #skimage 는 RGB형식, OpenCv는 BGR방식으로 저장, cvtColor 함수로 BGR로 변환하여 출력

slic1=skimage.segmentation.slic(img,compactness=20,n_segments=300)  #img=분할영상,compactness=슈퍼화소모양조절(값이 클수록 네모에 가까워짐), segments=슈퍼화소갯수
sp_img1=skimage.segmentation.mark_boundaries(img,slic1)
sp_img1=np.uint8(sp_img1*255.0)

slic2=skimage.segmentation.slic(img,compactness=40,n_segments=600)
sp_img2=skimage.segmentation.mark_boundaries(img,slic2)
sp_img2=np.uint8(sp_img2*255.0)

cv.imshow('Super pixels (compact 20)',cv.cvtColor(sp_img1,cv.COLOR_RGB2BGR))
cv.imshow('Super pixels (compact 40)',cv.cvtColor(sp_img2,cv.COLOR_RGB2BGR))

cv.waitKey()
cv.destroyAllWindows()