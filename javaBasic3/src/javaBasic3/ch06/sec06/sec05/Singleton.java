package javaBasic3.ch06.sec06.sec05;

public class Singleton {
	
	private static Singleton singleton = new Singleton(); //�ڱ� �ӿ��� ������ ��ü �����Ͽ� �ּҸ� ����, �ٸ� Ŭ�������� ȣ�� �� ���� �ּ�
	
	private Singleton() {
		//������ new�ϸ� ����Ǵµ� private �ؼ�
		//�ܺ� Ŭ�������� new  ���ϰ� ��.
		
		
	}

	public static Singleton getISingleton() {
		return singleton;
		
	}
}
