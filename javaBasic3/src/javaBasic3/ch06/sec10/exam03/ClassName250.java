package javaBasic3.ch06.sec10.exam03;

public class ClassName250 {
	
	//상수 -->final (바뀌지 않는 값)
	static final int A = 100;
	static final double PI = 3.141592;
	static final double RATE = 0.025;
	
	//변수 -->가변적
	int a = 10;
	
	//인스턴트 맴버들
	
	int field;  //---new필요
	void method(){
		a=a+100;
		System.out.println(A+20);
		// A=1000; 상수로 선언되어 10-->1000으로 변경불가 
		
	};
		 
		
	static int field2;
	static void method2() {};
	
	static {
		
	}
	
	static void method3() {
		//field = 10; 오류 --메모리에 올라가는 시점이 다르다. 
		//method(); 오류
		field2 = 20;
		method2();
		
	}
	
	{
	    field = 10;  
		method(); 
		field2 = 20;
		method2();	
		
	}
	
	void method4() {
	
	    field = 10;  
		method(); 
		field2 = 20;
		method2();	

}
}
