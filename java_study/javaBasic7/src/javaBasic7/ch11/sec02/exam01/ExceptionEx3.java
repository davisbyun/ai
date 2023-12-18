package javaBasic7.ch11.sec02.exam01;

public class ExceptionEx3 {

	public static void main(String[] args) throws ArithmeticException {
	try {	
		B b = new B();
		b.b1();
	}catch (ArithmeticException e) {
		System.out.println("분모가 0오류");
	}finally {
		System.out.println("DB 닫기");
		System.out.println("로그오프");
	}
	}

}

class B {
	void b1() throws ArithmeticException {
		b2();
	}

	void b2() throws ArithmeticException  {
		int a = 10;
		a = a / 0;
		
	}

}