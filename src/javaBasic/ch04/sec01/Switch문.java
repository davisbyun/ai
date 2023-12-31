package javaBasic.ch04.sec01;

import java.util.Scanner;

public class Switch문 {

	public static void main(String[] args) {
		// 'A'락 입력하면 Apple라고 출력
		// 'B'락 입력하면 Bear라고 출력
		// 'C'락 입력하면 Cat라고 출력
		
		//키보드입력
		Scanner sc = new Scanner(System.in);
		System.out.println("영어 첫글자 일력하기(A~C)");
		String word = sc.next();
		System.out.println(word);
		
//		if (word.equals("A")) {
//			System.out.println("Apple");
//		}
//		else if (word.equals("B")) {
//			System.out.println("Bear");
//		}
//		else if (word.equals("C")) {
//			System.out.println("Cat");
//		}
		
		//switch문
		
		switch(word) {
		case "A" : System.out.println("Apple"); break;
		case "B" : System.out.println("Bear"); break;
		case "C" : System.out.println("Cat"); break;
		default : System.out.println("입력하신 글자는 A,B,C가 아닙니다.");
		
		}
		//break문장은 입력된 블럭 밖 다음 위치로 나감
		//number = 100이면 "백의자리", 10이면 "십의자리" 1이면 "일의자리"
		
		int number = 100;
		switch(number) {
		case 100 : System.out.println("백의자리"); break;
		case 10 : System.out.println("십의자리"); break;
		case 1 : System.out.println("일의자리"); break;
		
		}
		
		//if문
		
		if (number == 100) {
			System.out.println("백의자리");
		} else if(number == 10) {
			System.out.println("십의자리");
		} else if(number == 1) {
			System.out.println("일의자리");
		}
		
		
		
		}
	
}
