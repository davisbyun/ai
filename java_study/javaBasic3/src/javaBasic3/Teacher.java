package javaBasic3;

public class Teacher {
	String 코드;
	String 이름;
	String 전공;
	int 급여;
	String 구분;
	int 시수;	
	
	public String get코드() {
		return 코드;
	}

	public void set코드(String 코드) {
		this.코드 = 코드;
	}

	public String get이름() {
		return 이름;
	}

	public void set이름(String 이름) {
		this.이름 = 이름;
	}

	public String get전공() {
		return 전공;
	}

	public void set전공(String 전공) {
		this.전공 = 전공;
	}

	public int get급여() {
		return 급여;
	}

	public void set급여(int 급여) {
		this.급여 = 급여;
	}

	public String get구분() {
		return 구분;
	}

	public void set구분(String 구분) {
		this.구분 = 구분;
	}

	public int get시수() {
		return 시수;
	}

	public void set시수(int 시수) {
		this.시수 = 시수;
	}

	public Teacher(String 교사코드, String 성함, String 전공명, int 급여, String 구분, int 시수) {
		코드 = 교사코드;
		이름 = 성함;
		전공 = 전공명;
		this.급여 = 급여;
		this.구분 = 구분;
		this.시수 =시수;
	}

	public Teacher() {
		// TODO Auto-generated constructor stub
	}

	int[] 성적처리하기() {
		return null;
	}
	
	String[] 레포트검사하기() {
		String[] report = {"1","1","1"};
		return report;
	}
	
	void 수업하기() {
		
	}
	
	void 휴강하기() {
		
	}
	
	
	
}
