package jabaBasic4.ch07.sec02;

public class Student extends Person {
	
	String dept ;
	
	public void study() {
		System.out.println("�����Ѵ�. ");
	
	}
	public Student() {
		super(); //�θ� ������ ȣ��
		System.out.println("�θ�Ŭ���� �ƹ��� Ŭ����");
	}
	public Student (String �̸�, int ����, String ����) {
		this.�̸� = �̸�;
		this.���� = ����;
		this.dept = dept;
		this.�а� = �а�;
			
  }
}

	

