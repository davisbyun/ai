package javaBasic5.ch08.sec03;

public class Ȯ�ι���9�� {
//1)1,	2)3,	3)4,	
	public static void main(String[] args) {
		
	//	Aipml a = new Aimpl();
		Driver d =  new Driver();
		d.a = new Aimpl();
//		d.drive(a);
		
		BB bb = new BB();
		B b = new BB();	//�ڵ�����ȯ
		BB bb2 = (BB) b; //��������ȯ - ūŸ�Կ��� ���� Ÿ������ ���� �� ���
		b.aM();
		//b.bM(); //������
		
		bb2.aM();
		bb2.bM(); //��밡��
	}

}

//1 �������̽��� new �� �� ����, implement�� class�� ����� �� ũ������ ��üȭ�ؾ� ��.
//A a = new A(); �Ұ�
//

interface A {
static final int a = 10;
//abstract void aM() {} 
default void dM() {}
static void sM() {}

}
class Driver {
	A a;
//	void drive() {
//		a.aM();
	}


class B implements A {
	
	int a = 10;
	void aM() {
		System.out.println(a);
	}
}

class BB extends B {

	int b =20;
	void bM() {
		System.out.println(b);
		
	}
}



class Aimpl implements A {   //����Ŭ����
	
	//@Override
	//public void aM() {
		//System.out.println(a);
//	}
	//@Override
	public void dM() {
		A.super.dM();
	}
	
}