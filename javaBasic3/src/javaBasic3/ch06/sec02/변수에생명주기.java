package javaBasic3.ch06.sec02;

public class 변수에생명주기 {
	
	int c= 10; // 전역변수

			   // 변수의 생명주기(만들어진 곳 {})	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int a = 10;  //변수 태어나기 생성 main() 안에서만 쓸 수 있다. 생성된 곳의 {} 안에서만 가능
		//System.out.println(c);
		
		for(int i=0; i<10; i++) {
			int j = 8;
			System.out.println(i);
			System.out.println(j);
		}
//		System.out.println(i);
//		System.out.println(j);
	}				
		
	void method01() {
		int b  = 20;
	}
		//System.out.println(a); //변수선언이 안됨
		//System.out.println(c);
	
	
	void method02() {
	
		//System.out.println(a); //변수선언이 안됨
		System.out.println(c);
}
}