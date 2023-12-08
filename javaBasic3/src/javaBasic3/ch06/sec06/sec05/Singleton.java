package javaBasic3.ch06.sec06.sec05;

public class Singleton {
	
	private static Singleton singleton = new Singleton(); //자기 속에서 스스로 객체 생성하여 주소를 생성, 다른 클래스에서 호출 시 같은 주소
	
	private Singleton() {
		//생성자 new하면 실행되는데 private 해서
		//외부 클래스에서 new  못하게 함.
		
		
	}

	public static Singleton getISingleton() {
		return singleton;
		
	}
}
