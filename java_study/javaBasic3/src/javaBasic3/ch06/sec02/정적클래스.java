package javaBasic3.ch06.sec02;

public class 정적클래스 {

	static int st =10;
	int it =100;
	public static void main(String[] args) {
		정적클래스 i1 = new 정적클래스();
//		m1();
		System.out.println(i1.it);
		m1(i1);
	}

	
	static void m1(정적클래스 i1) {
		System.out.println("정적 메소드입니다");
		System.out.println(i1.it);
	}
	
	public 정적클래스() {
		System.out.println("인스턴스 메소드입니다");
	}
	void m2() {
		System.out.println("인스턴스 메소드입니다");
	}
	
	

}
