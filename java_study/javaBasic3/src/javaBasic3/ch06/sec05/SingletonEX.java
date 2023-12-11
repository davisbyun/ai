package javaBasic3.ch06.sec05;

public class SingletonEX {

	public static void main(String[] args) {
		Singleton a = Singleton.getInstance();
		Singleton b = Singleton.getInstance();
		
		System.out.println(a);
		System.out.println(b);
	}

}
