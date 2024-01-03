class Scores :
    def __init__(self, name, kor, eng, math) : 
        self.name = name
        self.kor = kor
        self.eng = eng
        self.math = math
    
    def get_avg(self) :
        sm = self.kor + self.eng + self.math
        avg = sm/3.0
        return avg

s1 = Scores("김성윤", 85, 90, 83)

print("이름 : %s" % s1.name)
print("국어 : %d, 영어 : %d, 수학 : %d" % (s1.kor, s1.eng, s1.math))
print("평균 : %.1f" % s1.get_avg())
