package javaBasic3.ch06.sec02;

public class 실행 {
	
	static{
		System.out.println("정적 블록 임");
	}
	
	{ 
		System.out.println("인스턴트 블록 부분임");

		
	}
	public 실행() {
		// TODO Auto-generated constructor stub
		System.out.println("생성자");
		
		
		//메인(실행되는 순서.java 에서 실행을 호출할 때 위 순서대로 진행됨 (정적 -> 인스턴트 -> 생성자)
		
	}
}


