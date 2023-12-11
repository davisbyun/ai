package javaBasic3.ch06.sec05;

public class Singleton {
	
	private static Singleton singleton = new Singleton();
	
	private Singleton() {
		//생성자 new하면 실행되는 부분
	}
	
	public static Singleton getInstance() {
		return singleton;
	}
}
