# 6-1 PyQT로 간단한 GUI 만들기
from PyQt5.QtWidgets import *
import sys
import winsound

class BeepSound(QMainWindow) :
    # 생성자 39줄의 app.exec_()실행되면 생성자로 와서 자동수행됨
    def __init__(self) :
        super().__init__() # QMainWindow 부모클래스 생성자 호출,  상속
        self.setWindowTitle('삑 소리 내기')
        self.setGeometry(200,200, 500, 100)
                       # x좌표, y좌표, 너비, 높이
        shortBeepButton = QPushButton('짧게 삑', self)
        longBeepButton = QPushButton('길게 삑', self)          
        quitButton = QPushButton('나가기', self)
        self.label = QLabel('환영합니다!', self)
        # self는 클래스의 멤버라는 뜻 
        shortBeepButton.setGeometry(10,10,100,30)
        longBeepButton.setGeometry(110,10,100,30)
        quitButton.setGeometry(210,10,100,30)
        self.label.setGeometry(10,40,500,70)
        
        shortBeepButton.clicked.connect( self.shortBeepFunction )
        longBeepButton.clicked.connect( self.longBeepFunction )
        quitButton.clicked.connect( self.quitFunction )
        
    def shortBeepFunction(self) :
        self.label.setText('주파수 1000으로 0.5초 동안 삑 소리를 냅니다.')
        winsound.Beep( 1000, 500 )
        
    def longBeepFunction(self) :
        self.label.setText('주파수 1000으로 3초 동안 삑 소리를 냅니다.')
        winsound.Beep( 1000, 3000 )    
        
    def quitFunction( self ) :
        self.close()
        
app = QApplication(sys.argv)
win = BeepSound()
win.show()
app.exec_()        
    
        