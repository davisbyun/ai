package javaBasic5.ch08.sec03;

public class 확인문장9장2번 {

	//4)1,2,3,4 모두
	public static void main(String[] args) {

	Driver d = new Driver();
	A1 a = new B1();
	C1 c = new C1();
	D1 d1 = new D1();
	E1 e = new E1();
	
}
}


class Driver1 {
	void method(A a) {
	}
}


interface A1 {
	
}

class B1 implements A1 {
	
}

class C1 implements A1 {
	
}

class D1 extends C1 {
	
}

class E1 extends C1 {
	
}



