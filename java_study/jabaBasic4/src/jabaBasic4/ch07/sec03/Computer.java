package jabaBasic4.ch07.sec03;

//자식클래스 = Calculator
public class Computer extends Calculator {

		public double areaCircle(double r) {      //부모와 공통으로 절대 수정불가
		System.out.println("Computer 객체의 areaCircle() 샐행");
		return 2*3.14*r; //원둘레 구하기
		
	}
}
