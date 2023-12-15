package javaBasic6.ch09.sec01;

public class AExample {

	public static void main(String[] args) {

		A a = new A();
		a.aM();
		A.sa =2000;
		A.saM();
		
		A.B ab = a.new B(); //A.B -->A클래스에 속해 있는 B클래스 --속 안에 있는 클래스는 A의 주소를 가지고 
		ab.b =300;
		ab.bM();
		
	}

}


class A {
	
	int a = 10;
	void aM() {
		System.out.println(a);
		//b=b+20; 내부 클래스의 변수를 사용할 수 없다. 
		//bM(); 내부 클래스의 변수를 사용할 수 없다.
	}
	
	static int sa = 200; //정적 맴버 - 번역할 때 미리 스텍 메모리에 올린다.
	static void saM() {
		System.out.println(sa);
		//System.out.println(b); // 메모리에 올라가는 시점이 빠르기 때문에 에러  
		//System.out.println(a); // 메모리에 올라가는 시점이 빠르기 때문에 에러, new를 해야하는 것은 못쓴다.
		//aM();
		//bM();
	}
	
	
	class B{ 
		//a= a+100; 에러 메소드 안에 더해라고 명령해야 하는데 클래스에 명령했기 때문에 에러
		//aM(); 에러 외부 맴버 사용할 수 없다.
		
		int b = 20;
		void bM() {
			a = a +100; //내부 클래스에서 외부 클래스 필드를 사용할 수 있다.
			aM(); //내부 클래스에서 외부 클래스의 메소드를 호출할 수 있다.
			System.out.println(b);
			
		}
		
		//static int sb = 200; //A클래스가 new가 되기 전
		//static void sbM() {
	}			
	
		}
	
