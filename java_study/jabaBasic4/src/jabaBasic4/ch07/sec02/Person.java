package jabaBasic4.ch07.sec02;

public class Person {

	String name;
	int age;
	
	public Person() {
		System.out.println("���� �ҸӴ� �θ� Ŭ�����Դϴ�.");
	}
	
	public void eat() {
		System.out.println("�Դ´�.");
	}
	public void sleep() {
		System.out.println("�ܴ�.");
	}

	public Person(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}
	
}
