package javaBasic.ch03.sec02;

import java.util.Scanner;

public class 산술연산자 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in); //키보드로 글자를 입력하는 클래스
		//int kor = sc.nextInt();

		//이름은?
		//국어점수는?
		//영어점수는?
		//수학점수는?
		
		//출력 
		//홍길동 100 80 90 
		System.out.print("이름은? ");
		String name = sc.next();
		System.out.println();
		
		System.out.print("국어점수는? ");
		int kor = sc.nextInt();
		System.out.println();
		
		System.out.print("영어점수는? ");
		int eng = sc.nextInt();
		System.out.println();
		
		System.out.print("수학점수는? ");
		int math = sc.nextInt();
		System.out.println();
		
		System.out.println(name + "  "+ kor + "  " + eng + "   " + math );
		
		//합계구하기
		int sum = kor + eng + math;
		
		//합계 - kor
		int sum1 = sum - kor;
		
		//평균
		double aver = sum / 3.0;
		
		//수학점수가 홀수입니까, 짝수입니까? 2의 배수이면 짝수, 아니면 홀수
		//% 구하는 함수
		
		int mathMod = math % 2;
		System.out.println("합계: " + sum + ":  " + "국어점수를 제외한 점수  " + sum1 + ":  " + "평균점수  " + aver + ":홍 " +"수학점수를 2로 나눈 나머지" + mathMod);
		
		
		
		
		
		
		
		
				
//		System.out.println(kor);
//		
//		double rate = sc.nextDouble();
//		System.out.println(rate);
//
//		//ture입력하여 출력
//		
//		boolean ox = sc.nextBoolean();
//		System.out.println(ox);
//		
//		//홍길동 입력 출력
//		String name = sc.next();
//		System.out.println(name);
		
		
	}

}
