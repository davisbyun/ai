# 7-2 퍼셉트론으로 MNST인식하기 SGD 옵티마이저 282page
import numpy as np
import tensorflow as tf
import tensorflow.keras.datasets as ds

from tensorflow.keras.models import Sequential # 학습순서 순서대로
from tensorflow.keras.layers import Dense # 층 
from tensorflow.keras.optimizers import SGD # 학습법 경사하강법

# 손글씨 데이터셋을 불러와서 학습용 데이터셋과 테스트 데이터셋으로 분리 
( x_train, y_train), (x_test, y_test) = ds.mnist.load_data()
print( 'x_train.shape 원래 모습 60000, 28, 28 ==> ', x_train.shape )
x_train = x_train.reshape( 60000, 784)
x_test=x_test.reshape( 10000, 784)
print( 'x_train reshape한 것 60000 784 ==> ', x_train.shape )
print( 'x_train 값은 ==>', x_train)
x_train = x_train.astype(np.float32)/255.0
print( 'x_train 실수형으로 바꾼 값은 ==>', x_train)

x_test = x_test.astype(np.float32) / 255.0
y_train = tf.keras.utils.to_categorical( y_train, 10)
y_test = tf.keras.utils.to_categorical( y_test, 10 )

mlp = Sequential()
mlp.add( Dense(units = 512, activation='tanh', input_shape = (784,)))
mlp.add( Dense( units=10, activation='softmax'))

mlp.compile( loss='MSE', optimizer=SGD(learning_rate = 0.1),
             metrics=['accuracy'])
mlp.fit( x_train, y_train, batch_size=128, epochs=50, 
         validation_data=(x_test, y_test), verbose=2)

res = mlp.evaluate(x_test, y_test, verbose=0)
print('정확률', res[1]*100)





