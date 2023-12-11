package javaBasic3.ch06.sec010.exam03;

public class ClassName250 {
	static final int a =100;
	int field;
	public void method() {
		
		System.out.println(a);
	}
	
	static int field2;
	static void method2() {
		
	}
	
	static {
//		field = 10;
//		method();
		field2 = 20;
		method2();
	}
	
	static void method3() {
//		field = 10;
//		method();
		field2 = 20;
		method2();
		
	}
	
	{
		field = 10;
		method();
		field2 = 20;
		method2();		
	}
	
}
