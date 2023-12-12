package jabaBasic4.ch07.sec02;

public class Teacher extends Student {
	
	String 학과;
	
	public void teaching() {
		System.out.println("가르친다.");
		
		
	}
	public Teacher() {
		super("홍길동",30 ,"컴퓨터공학");  //부모생성자 호출, 첫줄에만 사용가능
		System.out.println("자식클래스 나");
		
}

	public Teacher(String name, int age, String dept, String 학과) {
	this.name = name;
	this.age = age;
	this.dept = dept;
	this.학과 = 학과;
	
}
}
