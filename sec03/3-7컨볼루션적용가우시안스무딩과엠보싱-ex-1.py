#연습문제 p116 6번 1차원 가우시안 함수, 2차원 가우시안 함수 구하기


import numpy as np
import matplotlib.pyplot as plt
from matplotlib import cm

#2차원 Gaussian 함수
x=np.linspace(-6, 6, num=100)
y=np.linspace(-6, 6, num=100)
x,y = np.meshgrid(x,y)

sigma = 1.0
var = sigma * sigma

z= np.exp(- (x**2 +y**2) /(2.0*var) ) /(2*np.pi*var)

fig = plt.figure()
ax= fig.add_subplot(111, projection = '3d')
ax.plot_surface(x, y, z, cmap=cm.jet)

plt.show()





