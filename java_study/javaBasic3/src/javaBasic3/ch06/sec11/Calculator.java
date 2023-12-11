package javaBasic3.ch06.sec11;

public class Calculator {

	//메소드는 동작~ 한다. 행위 
	//형식 [ 접근제한자 ] 리턴 타입  메소드명([매개변수....]) {} 
	//    [생략가능함 ]  ... 여러개
	
	void powerOn() {
		System.out.println("전원을켭니다");
	}
	void powerOfF() {
		System.out.println("전원을 끕니다.");
	}
	
	int plus(int x, int y) {
		int result = x+y;   //result의 생명주기는 블럭 안. 아래의 result와 다른 변수
		return result; //return은 메소드를 호출한 곳을 변수 result 값을 되돌려 주어라.
	}
	
	double divide(int x, int y) {
	double result = (double) x / (double) y;
	return result;
	
	
	}
	public int plus(int x, int y, int z) {
		int result = x+y+z;
		return result; 
	}
	
	//234 int sum(int ... 
}
