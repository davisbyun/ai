package javaBasic6.ch09.sec05;

public class AnyEx {

	public static void main(String[] args) {

		B b = new B();
		b.bM();
		
		//BŬ������ �ڽ� Ŭ������ �ʿ���. �ֳĸ� bM()�� ������ �ؼ� ����Ϸ���
		B bb = new B() {
				//�͸� �ڽ� Ŭ����
				int b = 20;
		@Override
			void bM() {
				super.bM();
				System.out.println("�ڽ� �޼ҵ�");
			}	
		};
		
		//�θ� Ŭ������ new�ϰ� �ٷ� �ڿ� {}�� �Ἥ �ڽ��� Ŭ������ ������ �� �ִ� ��
		bb.bM();
	}
}	




class B {
 void bM() {
	 System.out.println("�θ� �޼ҵ�");
	 
 }	
}