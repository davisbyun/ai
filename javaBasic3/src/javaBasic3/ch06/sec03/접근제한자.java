package javaBasic3.ch06.sec03;

import javaBasic3.ch06.sec04.AA;
import javaBasic3.ch06.sec06.sec05.Singleton;

public class ���������� {

	public static void main(String[] args) {
	
		Singleton o1 = Singleton.getISingleton();
		Singleton o2 = Singleton.getISingleton();
		
		System.out.println(o1);
		
		A aAdd = new A(); //��üȭ 
		
		// System.out.println(aAdd.a);  ���� private�� �ٸ� Ŭ�������� ���� 
		System.out.println(aAdd.b); //���� ��Ű�� sec03, ���������ڰ� defualt �� ���� ��Ű���� ����
		System.out.println(aAdd.c); //public���μ� �����ϴ�.
		
		// aAdd.a1();  //���� private
		aAdd.b1();
		aAdd.c1();

		AA aaAdd = new AA();
		//System.out.println(aaAdd.a); // private ����
		System.out.println(aaAdd.b);   //�ٸ� ��Ű���� �ҷ��ͼ� ���� javaBasic3.ch06.sec04
		System.out.println(aaAdd.c);   // public ����
		
		aaAdd.a1(); // private ����
		aaAdd.b1(); // �ٸ� ��Ű���� �ҷ��ͼ� ���� javaBasic3.ch06.sec04
		aaAdd.c1(); // public ����
		
		
		//���� ������ ���� �Ϲ������� �ʵ� ������ priavte �� �ַ� ����, �޼���� public�� �ַ� �� 
	}

}
