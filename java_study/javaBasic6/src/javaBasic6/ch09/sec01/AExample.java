package javaBasic6.ch09.sec01;

public class AExample {

	public static void main(String[] args) {

		A a = new A();
		a.aM();
		A.sa =2000;
		A.saM();
		
		A.B ab = a.new B(); //A.B -->AŬ������ ���� �ִ� BŬ���� --�� �ȿ� �ִ� Ŭ������ A�� �ּҸ� ������ 
		ab.b =300;
		ab.bM();
		
	}

}


class A {
	
	int a = 10;
	void aM() {
		System.out.println(a);
		//b=b+20; ���� Ŭ������ ������ ����� �� ����. 
		//bM(); ���� Ŭ������ ������ ����� �� ����.
	}
	
	static int sa = 200; //���� �ɹ� - ������ �� �̸� ���� �޸𸮿� �ø���.
	static void saM() {
		System.out.println(sa);
		//System.out.println(b); // �޸𸮿� �ö󰡴� ������ ������ ������ ����  
		//System.out.println(a); // �޸𸮿� �ö󰡴� ������ ������ ������ ����, new�� �ؾ��ϴ� ���� ������.
		//aM();
		//bM();
	}
	
	
	class B{ 
		//a= a+100; ���� �޼ҵ� �ȿ� ���ض�� ����ؾ� �ϴµ� Ŭ������ ����߱� ������ ����
		//aM(); ���� �ܺ� �ɹ� ����� �� ����.
		
		int b = 20;
		void bM() {
			a = a +100; //���� Ŭ�������� �ܺ� Ŭ���� �ʵ带 ����� �� �ִ�.
			aM(); //���� Ŭ�������� �ܺ� Ŭ������ �޼ҵ带 ȣ���� �� �ִ�.
			System.out.println(b);
			
		}
		
		//static int sb = 200; //AŬ������ new�� �Ǳ� ��
		//static void sbM() {
	}			
	
		}
	
