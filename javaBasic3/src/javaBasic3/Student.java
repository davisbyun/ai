package javaBasic3;


//학교에 대한 것을 만들기
public class Student {
	
	String 학번;
	String 이름;
	String 학과;
	int 점수;
	String 전화번호;
	
	
   //Student st1 = new Student("230101", "홍길동", "AI", 100, "010-123-1234" );
	
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

	//생성자 == 클래스 이름과 똑같고 객체화(힙메모리에 올라갈)될때 자동으로 실행된다.  
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

	//점수계산하기
	int 점수계산() {
		
		return 0;
	}
	
	void 성적출력하기(){
		
	}
	
	void 입력하기(){
		
	}
   
	String 장학금대상자(){
		return "홍길동";
	}
	
	boolean 합격여부구하기(){
	   return true;	
	}
	
}


//package javaBasic3;
//
////학교에 대한 것들을 만들어준다.
//public class Student {
//
//	
//	//Field
//	
//	String 학번;
//	String 이름;
//	String 학과;
//	int 점수;
//	String 전화번호;
//	
//	
//	//Constructor (생성자)
//		public Student(String 학번, String 이름, String 학과, int 점수, String 전화번호) {
//			// 생성자 == 클래스 이름과 똑같고 객체화 (힙메모리에 올라갈 때) 될 때 자동으로 실해된다.
//			//Student s1 = new Student("230101","홍길동","AI",100,"010-123-1234");
//			//Field 에 있는 급여로 지정하고 싶다. this.는 맴버필드의 변수를 지정하고 싶는 표현
//			
//			this.학번 = 학번;
//			this.이름 = 이름;
//			this.학과 = 학과;
//			this.점수 = 점수;
//			this.전화번호 = 전화번호;
//			
//		}
//		
//	//Method
//		
//		public Student() {
//			// TODO Auto-generated constructor stub
//		}
//
//		//점수계산하기
//		int 점수계산() { return 0; }
//		public String get학번() {
//			return 학번;
//		}
//
//		public void set학번(String 학번) {
//			this.학번 = 학번;
//		}
//
//		public String get이름() {
//			return 이름;
//		}
//
//		public void set이름(String 이름) {
//			this.이름 = 이름;
//		}
//
//		public String get학과() {
//			return 학과;
//		}
//
//		public void set학과(String 학과) {
//			this.학과 = 학과;
//		}
//
//		public int get점수() {
//			return 점수;
//		}
//
//		public void set점수(int 점수) {
//			this.점수 = 점수;
//		}
//
//		public String get전화번호() {
//			return 전화번호;
//		}
//
//		public void set전화번호(String 전화번호) {
//			this.전화번호 = 전화번호;
//		}
//
//		//성적출력하기
//		void 성적출력하기() {}  //void 반환값을 요구하지 않는다.
//		//입력하기
//		void 입력하기() {}
//		String 장학금대상() { return "홍길동"; }
//		//합격 여부 구하기
//		boolean 합격여부구하기 () {   return true;  } 
//		
//	
//	
//	}
//
//
