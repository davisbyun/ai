package javaBasic.ch03.sec02;

public class 논리연산자 {

	public static void main(String[] args) {
		boolean b1 = true;
		boolean b2 = false;
		
		System.out.println(b1 && b2);   // && 그리고 - 둘 다 참일 때만 참 = false
		System.out.println(b1 || b2);   // || 또는 - 둘 중 하나만 참일 때 참 = true
		System.out.println(b1 ^ b2);    // 참 거짓이면 참 = true
		System.out.println(!b1);		// 부정 반대  = false
		
		
		//비트연산자
		
		byte b3 = 10;
		byte b4 = 7;
		
		System.out.println(b3 & b4);   // & 그리고 - 0 거짓 1참 답은 2
		System.out.println(b3 | b4);   // | 또는 - 둘중 1개가 1이면 1
		
		
				
		
	}

}
