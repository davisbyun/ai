import cv2 as cv 
import numpy as np
from tensorflow.keras.applications.resnet50 import ResNet50,preprocess_input,decode_predictions
from tensorflow.keras.applications.inception_v3 import Inceptionv3,preprocess_input,decode_predictions


#model=ResNet50(weights='imagenet')
model=InceptionV3(weights='imagenet')


img=cv.imread('rabbit.jpg') 
x=np.reshape(cv.resize(img,(299,299)),(1,299,299,3))   
x=preprocess_input(x)

preds=model.predict(x)
top5=decode_predictions(preds,top=5)[0]
print('예측 결과:',top5)

for i in range(5):
    cv.putText(img,top5[i][1]+':'+str(top5[i][2]),(10,20+i*20),cv.FONT_HERSHEY_SIMPLEX,0.5,(0,0,255),1)

cv.imshow('Recognition result',img)

cv.waitKey()
cv.destroyAllWindows()