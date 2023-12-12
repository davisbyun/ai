package jabaBasic4.ch07.sec02;

public class Student extends Person {
	
	String dept ;
	
	public void study() {
		System.out.println("공부한다. ");
	
	}
	public Student() {
		super(); //부모 생성자 호출
		System.out.println("부모클래스 아버지 클래스");
	}
	public Student (String 이름, int 나이, String 전공) {
		this.이름 = 이름;
		this.나이 = 나이;
		this.dept = dept;
		this.학과 = 학과;
			
  }
}

	

