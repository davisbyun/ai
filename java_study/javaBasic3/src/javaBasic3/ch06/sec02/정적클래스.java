package javaBasic3.ch06.sec02;

public class ����Ŭ���� {

	static int st =10;
	int it =100;
	public static void main(String[] args) {
		����Ŭ���� i1 = new ����Ŭ����();
//		m1();
		System.out.println(i1.it);
		m1(i1);
	}

	
	static void m1(����Ŭ���� i1) {
		System.out.println("���� �޼ҵ��Դϴ�");
		System.out.println(i1.it);
	}
	
	public ����Ŭ����() {
		System.out.println("�ν��Ͻ� �޼ҵ��Դϴ�");
	}
	void m2() {
		System.out.println("�ν��Ͻ� �޼ҵ��Դϴ�");
	}
	
	

}
