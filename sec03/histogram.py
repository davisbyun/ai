import cv2 as cv 
import matplotlib.pyplot as plt

img=cv.imread('soccer.jpg')
h=cv.calcHist([img], [2], None, [256], [0,256]) #[1] G, [2] R [0] B
plt.plot(h, color='r', linewidth=1)
