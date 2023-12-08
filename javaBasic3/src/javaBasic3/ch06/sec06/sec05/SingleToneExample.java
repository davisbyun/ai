package javaBasic3.ch06.sec06.sec05;

public class SingleToneExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Singleton o1 = Singleton.getISingleton();
		Singleton o2 = Singleton.getISingleton();
		
		System.out.println(o1);
		System.out.println(o2);
		
		
	}

}
