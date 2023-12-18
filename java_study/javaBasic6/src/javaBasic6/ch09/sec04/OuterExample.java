package javaBasic6.ch09.sec04;

public class OuterExample {

	public static void main(String[] args) {

		//밖의 클래스를 먼저 객체화하세요
		Outter o = new Outter();
		//iaM() 호출하려먼
		//1.내부객체화한다. 2.메소드호출한다.
		Outter.Inner i = o.new Inner();
		i.iaM();
		
	}

}

class Outter {
	
	int a = 10;
	void aM() {
		//외부(바깥)의 맴버는 안쪽 클래스의 맴버를 쓸 수 없다. 
		
	}
	static int sa = 20;
	static void saM() {}
	
	
			
	
	class Inner {
		int ia = 100;
		void iaM() {
			//내부 클래스는 바깥(외부)의 모든 맴버를 다 쓸 수 있다. 
			ia = ia + 20;
			a = a+20;
			Outter.sa = Outter.sa +100;
			Outter.saM();
		}		
	//static int sia =10;  내부에 static을 주면 에러
	//static void siaM() {}
	}
}