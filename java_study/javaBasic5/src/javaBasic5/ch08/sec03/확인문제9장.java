package javaBasic5.ch08.sec03;

public class 확인문제9장 {
//1)1,	2)3,	3)4,	
	public static void main(String[] args) {
		
	//	Aipml a = new Aimpl();
		Driver d =  new Driver();
		d.a = new Aimpl();
//		d.drive(a);
		
		BB bb = new BB();
		B b = new BB();	//자동형변환
		BB bb2 = (BB) b; //강제형변환 - 큰타입에서 작은 타입으로 내릴 때 사용
		b.aM();
		//b.bM(); //사용못함
		
		bb2.aM();
		bb2.bM(); //사용가능
	}

}

//1 인터페이스는 new 할 수 없고, implement로 class를 만들고 그 크래스로 객체화해야 함.
//A a = new A(); 불가
//

interface A {
static final int a = 10;
//abstract void aM() {} 
default void dM() {}
static void sM() {}

}
class Driver {
	A a;
//	void drive() {
//		a.aM();
	}


class B implements A {
	
	int a = 10;
	void aM() {
		System.out.println(a);
	}
}

class BB extends B {

	int b =20;
	void bM() {
		System.out.println(b);
		
	}
}



class Aimpl implements A {   //구현클래스
	
	//@Override
	//public void aM() {
		//System.out.println(a);
//	}
	//@Override
	public void dM() {
		A.super.dM();
	}
	
}