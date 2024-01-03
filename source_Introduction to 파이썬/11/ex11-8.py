class Members :
    total = 0

    def __init__(self, name, phone) :
        self.name = name
        self.phone = phone
        Members.total = Members.total + 1
        
    def show_info(self) :
        print("이름 : %s, 전화번호 : %s" % (self.name, self.phone))

m1 = Members("홍성지", "010-3359-3763")
m2 = Members("강동욱", "010-1019-4767")
m3 = Members("신진서", "010-9018-0298")

m1.show_info()
m2.show_info()
m3.show_info()

print("총 회원 수 :", Members.total)

        
    
