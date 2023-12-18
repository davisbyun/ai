package javaBasic6.ch09.sec05;

public class AnyEx {

	public static void main(String[] args) {

		B b = new B();
		b.bM();
		
		//B클래스의 자식 클래스가 필요함. 왜냐면 bM()을 재정의 해서 사용하려고
		B bb = new B() {
				//익명 자식 클래스
				int b = 20;
		@Override
			void bM() {
				super.bM();
				System.out.println("자식 메소드");
			}	
		};
		
		//부모 클래스를 new하고 바로 뒤에 {}을 써서 자식의 클래스의 내용을 써 주는 것
		bb.bM();
	}
}	




class B {
 void bM() {
	 System.out.println("부모 메소드");
	 
 }	
}