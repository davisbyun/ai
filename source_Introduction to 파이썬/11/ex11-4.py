class Members :
    def set_info(self, name) :
        self.name = name

    def show_info(self) :
        print("이름 :", self.name)

member1 = Members()
member1.set_info("홍지수")
member1.show_info()

member2 = Members()
member2.set_info("안지영")
member2.show_info()

        
    
