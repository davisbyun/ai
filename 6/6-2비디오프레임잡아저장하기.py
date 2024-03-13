# 6-2 OpenCv에 PyQt의 GUI 붙이기(비디오에서 프레임을 잡아 저장하기)
from PyQt5.QtWidgets import *
import sys
import cv2 as cv

class Video(QMainWindow) :
    # 생성자 39줄의 app.exec_()실행되면 생성자로 와서 자동수행됨
    def __init__(self) :
        super().__init__() # QMainWindow 부모클래스 생성자 호출,  상속
        self.setWindowTitle('비디오에서 프레임 수집')
        self.setGeometry(200,200, 500, 100)
                       # x좌표, y좌표, 너비, 높이
        videoButton = QPushButton('비디오켜기', self)
        captureButton = QPushButton('프레임잡기', self)          
        saveButton = QPushButton('프레임저장', self) 
        quitButton = QPushButton('나가기', self)
        
        # self는 클래스의 멤버라는 뜻 
        videoButton.setGeometry(10,10,100,30)
        captureButton.setGeometry(110,10,100,30)
        saveButton.setGeometry( 210, 10, 100, 30)
        quitButton.setGeometry(310,10,100,30)
                
        videoButton.clicked.connect( self.videoFunction )
        captureButton.clicked.connect( self.captureFunction )
        saveButton.clicked.connect( self.saveFunction )
        quitButton.clicked.connect( self.quitFunction )
        
    def videoFunction(self) :
        self.cap = cv.VideoCapture(0, cv.CAP_DSHOW)
        if not self.cap.isOpened():
            self.close()
            
        while True:
            ret,self.frame = self.cap.read()
            if not ret:
                break
            cv.imshow( 'Video display', self.frame)
            cv.waitKey(1)
            
    def captureFunction(self) :
        self.captureFrame = self.frame
        cv.imshow( 'Capture Frame', self.captureFrame )    
        
    def saveFunction( self ) :
        fname = QFileDialog.getSaveFileName(self, '파일 저장', './')
        cv.imwrite( fname[0], self.captureFrame)    
    def quitFunction( self ) :
        self.cap.release()
        cv.destroyAllWindows()
        self.close()
        
app = QApplication(sys.argv)
win = Video()
win.show()
app.exec_()        
    
        