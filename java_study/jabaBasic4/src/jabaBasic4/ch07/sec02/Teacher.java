package jabaBasic4.ch07.sec02;

public class Teacher extends Student {
	
	String �а�;
	
	public void teaching() {
		System.out.println("����ģ��.");
		
		
	}
	public Teacher() {
		super("ȫ�浿",30 ,"��ǻ�Ͱ���");  //�θ������ ȣ��, ù�ٿ��� ��밡��
		System.out.println("�ڽ�Ŭ���� ��");
		
}

	public Teacher(String name, int age, String dept, String �а�) {
	this.name = name;
	this.age = age;
	this.dept = dept;
	this.�а� = �а�;
	
}
}
