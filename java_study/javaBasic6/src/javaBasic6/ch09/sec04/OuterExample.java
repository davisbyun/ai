package javaBasic6.ch09.sec04;

public class OuterExample {

	public static void main(String[] args) {

		//���� Ŭ������ ���� ��üȭ�ϼ���
		Outter o = new Outter();
		//iaM() ȣ���Ϸ���
		//1.���ΰ�üȭ�Ѵ�. 2.�޼ҵ�ȣ���Ѵ�.
		Outter.Inner i = o.new Inner();
		i.iaM();
		
	}

}

class Outter {
	
	int a = 10;
	void aM() {
		//�ܺ�(�ٱ�)�� �ɹ��� ���� Ŭ������ �ɹ��� �� �� ����. 
		
	}
	static int sa = 20;
	static void saM() {}
	
	
			
	
	class Inner {
		int ia = 100;
		void iaM() {
			//���� Ŭ������ �ٱ�(�ܺ�)�� ��� �ɹ��� �� �� �� �ִ�. 
			ia = ia + 20;
			a = a+20;
			Outter.sa = Outter.sa +100;
			Outter.saM();
		}		
	//static int sia =10;  ���ο� static�� �ָ� ����
	//static void siaM() {}
	}
}