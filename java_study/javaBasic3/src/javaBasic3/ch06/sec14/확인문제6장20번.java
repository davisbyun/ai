package javaBasic3.ch06.sec14;

import java.util.Scanner;

public class 확인문제6장20번 {

	public static void main(String[] args) {

		BankApplication ba = new BankApplication();
		
		Scanner sc = new Scanner(System.in);
		String menu = "0";
		
		while (!menu.equals("5")) {
			System.out.println("----------------");
			System.out.println("1. 계좌생성 2. 계좌목록 3.예금 4.출금 5.종료");
			System.out.println("선택>");
			
			menu = sc.nextLine();
			
			switch (menu) {
			
			case "1" : ba.계좌생성(); break;
			case "2" : ba.계좌목록(); break;
			case "3" : ba.예금(); break;
			case "4" : ba.출금(); break;
			case "5" : System.out.println("프로그램종료"); break;
			
			}
		}
	
		
		
	}

}
