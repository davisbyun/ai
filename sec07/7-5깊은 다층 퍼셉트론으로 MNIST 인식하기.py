# 7-4 다층 퍼셉트론으로 MNIST 인식하기 (SGD와 Adam의 성능 그래프비교)
import numpy as np
import tensorflow as tf
import tensorflow.keras.datasets as ds
import matplotlib.pyplot as plt

from tensorflow.keras.models import Sequential # 학습순서 순서대로
from tensorflow.keras.layers import Dense # 층 
from tensorflow.keras.optimizers import Adam # 학습법 


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
dmlp = Sequential()
dmlp.add( Dense(units = 1024, activation='relu', input_shape = (784,)))
dmlp.add( Dense(units = 512, activation='relu' ))
dmlp.add( Dense(units = 512, activation='relu'))
dmlp.add( Dense( units=10, activation='softmax'))

# 3단계 학습
dmlp.compile( loss='categorical_crossentropy', 
             optimizer=Adam(learning_rate = 0.001),
             metrics=['accuracy'])

hist = dmlp.fit( x_train, y_train, batch_size=128, epochs=50, 
               validation_data=(x_test, y_test), verbose=2)
# 4단계 예측단계  정확률 
print('Adam 정확률=', dmlp.evaluate( x_test, y_test, verbose=0)[1]*100 )

dmlp.save( 'dmlp_trained.h5')

plt.plot( hist.history['accuracy'],'r--')
plt.plot( hist.history['val_accuracy'],'r')

plt.title('Accuracy graph')

plt.xlabel('epochs')  #"학습횟수
plt.ylabel('accuracy') #정확률
plt.legend(['train', 'test'])
plt.grid()
plt.show()

plt.plot( hist.history['loss'])
plt.plot( hist.history['val_loss'])
plt.title('Loss graph')
plt.xlabel('epochs')  #"학습횟수
plt.ylabel('loss') #손실
plt.legend(['train', 'test'])
plt.grid()
plt.show()









