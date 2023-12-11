package javaBasic3;

public class Student {
	String 학번;
	String 이름;
	String 학과;
	int 점수;
	String 전화번호;
	
	public String get학번() {
		return 학번;
	}
	public void set학번(String 학번) {
		this.학번 = 학번;
	}
	public String get이름() {
		return 이름;
	}
	public void set이름(String 이름) {
		this.이름 = 이름;
	}
	public String get학과() {
		return 학과;
	}
	public void set학과(String 학과) {
		this.학과 = 학과;
	}
	public int get점수() {
		return 점수;
	}
	public void set점수(int 점수) {
		this.점수 = 점수;
	}
	public String get전화번호() {
		return 전화번호;
	}
	public void set전화번호(String 전화번호) {
		this.전화번호 = 전화번호;
	}
	
	
	public Student(String 학번, String 이름, String 학과, int 점수, String 전화번호) {
		this.학번 = 학번;
		this.이름 = 이름;
		this.학과 = 학과;
		this.점수 = 점수;
		this.전화번호 = 전화번호;
		
	}
	public Student() {
		// TODO Auto-generated constructor stub
	}
	int 점수계산() {
		
		return 0;
	}
	void 성적출력하기(){
		
	}
	
	void 입력하기() {
		
	}
	
	String 장학금대상자() {
		return "홍길동";
	}
	
	boolean 합격여부() {
		return true;
	}
}
