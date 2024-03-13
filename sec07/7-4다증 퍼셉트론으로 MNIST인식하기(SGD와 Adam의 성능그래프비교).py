# 7-4 다층 퍼셉트론으로 MNIST 인식하기 (SGD와 Adam의 성능 그래프비교)
import numpy as np
import tensorflow as tf
import tensorflow.keras.datasets as ds
import matplotlib.pyplot as plt

from tensorflow.keras.models import Sequential # 학습순서 순서대로
from tensorflow.keras.layers import Dense # 층 
from tensorflow.keras.optimizers import SGD, Adam # 학습법 


# 손글씨 데이터셋을 불러와서 학습용 데이터셋과 테스트 데이터셋으로 분리 
# 1단계 데이터를 준비한다. 
( x_train, y_train), (x_test, y_test) = ds.mnist.load_data()
x_train = x_train.reshape( 60000, 784)
x_test=x_test.reshape( 10000, 784)
x_train = x_train.astype(np.float32)/255.0
x_test = x_test.astype(np.float32) / 255.0
y_train = tf.keras.utils.to_categorical( y_train, 10)
y_test = tf.keras.utils.to_categorical( y_test, 10 )

# 2단계 모델 선택, 신경망 구조 설계 
mlp_sgd = Sequential()
mlp_sgd.add( Dense(units = 512, activation='tanh', input_shape = (784,)))
mlp_sgd.add( Dense( units=10, activation='softmax'))

# 3단계 학습
mlp_sgd.compile( loss='MSE', optimizer=SGD(learning_rate = 0.01),
             metrics=['accuracy'])
hist_sgd = mlp_sgd.fit( x_train, y_train, batch_size=128, epochs=50, 
                   validation_data=(x_test, y_test), verbose=2)

print('SGD 정확률=', mlp_sgd.evaluate( x_test, y_test, verbose=0)[1]*100 )

# 2단계 모델 선택, 신경망 구조 설계 
mlp_adam = Sequential()
mlp_adam.add( Dense(units = 512, activation='tanh', input_shape = (784,)))
mlp_adam.add( Dense( units=10, activation='softmax'))

# 3단계 학습
mlp_adam.compile( loss='MSE', optimizer=Adam(learning_rate = 0.001),
             metrics=['accuracy'])
hist_adam = mlp_adam.fit( x_train, y_train, batch_size=128, epochs=50, 
               validation_data=(x_test, y_test), verbose=2)

print('Adam 정확률=', mlp_adam.evaluate( x_test, y_test, verbose=0)[1]*100 )

plt.plot( hist_sgd.history['accuracy'],'r--')
plt.plot( hist_sgd.history['val_accuracy'],'r')
plt.plot( hist_adam.history['accuracy'],'b--')
plt.plot( hist_adam.history['val_accuracy'],'b')
plt.title('Comparision of SGD and Adam optimizers')
plt.ylim( ( 0.7, 1.0)  )
plt.xlabel('epochs')  #"학습횟수
plt.ylabel('accuracy') #정확률
plt.legend(['train_sgd', 'val_sgd', 'train_adam', 'val_adam'])
plt.grid()
plt.show()








