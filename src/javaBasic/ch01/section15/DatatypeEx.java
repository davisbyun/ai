package javaBasic.ch01.section15;

public class DatatypeEx {

	public static void main(String [] args) {
		// TODO Auto-generated method stub
		/* 자료형 - 기본형(정수형 byte, short, int, long, 실수형 float, double 논리형 boolean 문자형 char) 
		 * 참조형
		p.39
		 */
		byte b1 = 127;   				//-128~127
		System.out.println(b1);

		short s1 = 32767; 				//-32768~32767
		System.out.println(s1);
		
		int i1 = -2147483648; 			// -214748648~214748647
		System.out.println(i1);
		
					
		
		byte b2 = 10;				//+연산자는 int형으로 처리함, byte(1byte), int(4byte) = int형임
		byte b3 = 20;
		//byte b23 = b2 + b3; 		//에러
		int b24 = b2 + b3;
		System.out.println(b24);
		
		
		
		
		
		byte f1 = 20;
		short d1 = 30;
		int sum33 = f1 + d1 ;
		System.out.println(sum33);
		
		
		float g1 = 3.14f;
		float q1 = 3.1234567f; 	//소수점 7자리까지는 출력
		System.out.println(g1 + "  "+ q1);
		
		
		double d22 = 3.12345678901234;  //소수점 15자리까지 출력 (16자리는 반올림)
		System.out.println(d22);
		
		//실수형 float (4byte), double (8byte)-실수의 기본형
		
		
		float f3 = 10.23f;
		int f4 = 2;
		float multf3f4 = f3*f4;
		System.out.println(multf3f4);
		
		double multf3f4d = f3*f4;
		System.out.println(multf3f4d);
		
		double z1 = 3.14;
		double z2 = 12.65;
		double zmul = z1 * z2;
		System.out.println(zmul);
		
//		float zmul = z1*z2;   // 에러 double (8byte)에 float (4byte)를 연결한 것이 문제
//		
//		double resulz1z2 = z1/z2;  //float --> double 형변
		
		
		int ii1 = 10;
		short ss1 = 20;
		
		float ff1 = ii1;   //int형이 float형으로 변경  - 실수형으로 형변환 
		
		
		//실수형 --> 정수형 --> 데이터 손실, 데이터를 버려야 함
		//형변환 = 강제형변환 down cast 연산 큰타입 --> 작은 타입으로 바뀜
		//형식 --> 정수형 변수명 = (정수형 타입) 실수형 변수
		
		double d10 = 3.14;
		int change10 = (int)d10;   //소숫점 이하를 손실  강제 형변환
		System.out.println(d10 + "  " + change10);
	
		
		float f111 = 10.25f;
		byte changef10 = (byte) f111;
		
		int i10 = 3000;
		short chi10 = (short) i10;
		
		
		//정수형으로 국어점수 수학점수 영어점수를 변수에 담으시오.
		
		 int kor = 80;
		 int math = 90;
		 int eng = 83;
		 
		 int sum = kor + math + eng;
		 
//		 double average = (kor + math + eng) / 3 ;  //84.3333이 왜 안나오나요?
//		 double average = (kor + math + eng) / (double) 3 ;  //84.3333 출력
		 double average = sum / 3.0 ;  //84.3333 출력
		 double average1 = (double)(kor + math + eng) / 3 ;  //84.3333 출력
		 
		//수학점수의 거듭제곱 90**2
//		 int matDouble = mat*mat;
		 
		 
		 char ch1 = 'a' ;
		 System.out.println((int) ch1);
		 System.out.println((char) ch1 + 3); 
		 
		 System.out.printf("%c", ch1 + 3);
		 
		 System.out.println(ch1 + 1 - 10);
		 System.out.println("합계는  " + sum);
		 System.out.println("평균은  " + average);
		 System.out.println("평균은  " + average1);
//		 System.out.println("수학의 거드제곱 " + matDouble);
		 
		 //korea 출력
		 System.out.printf("%c%c%c%c%c", 75, 111, 114, 101, 97);
		 
		 
		 
		 
		 
		 
		 
		 
		
		
		
		
		
		
		
		
		
		
		
				
				
				
	}

}
