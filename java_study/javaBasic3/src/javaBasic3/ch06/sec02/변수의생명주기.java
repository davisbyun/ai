package javaBasic3.ch06.sec02;

public class 변수의생명주기 {
	int c=10;
	public static void main(String[] args) {
		int a = 10;
		
		for (int i = 0; i < 10; i++) {
			int j =8;
		}
	}
	
	void method01() {
		int b = 20;
		System.out.println(c);
	}
	void method02() {
		System.out.println(c);
	}
}
