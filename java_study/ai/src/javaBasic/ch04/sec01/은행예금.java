package javaBasic.ch04.sec01;

import java.util.Scanner;

public class 은행예금 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int balance = 0;
		
		while(1==1) {
			System.out.println("-----------------------------");
			System.out.println("1.예금 | 2.출금 | 3.잔고 | 4.종료");
			System.out.println("-----------------------------");
			System.out.println("선택>");
			int menu = sc.nextInt();
			if(menu==4) {
				System.out.println("프로그램 종료");
				break;
			}
			while(1==1) {
				if(menu==1) {
					System.out.println("예금액>");
					int deposit = sc.nextInt();
					balance = balance + deposit;
					System.out.println();
					break;
				}
				else if(menu==2) {
					System.out.println("출금액>");
					int withdraw = sc.nextInt();
					balance = balance - withdraw;
					if(balance<0) {
						System.out.println("잔고가 0보다 작을 수 없습니다");
						balance = balance + withdraw;
					}
					System.out.println();
					break;
					
				}
				else if(menu==3) {
					System.out.println("잔고>" + balance);
					System.out.println();
					break;
					
				}
				else {
					System.out.println("1~4 다시입력");
					System.out.println();
					break;
				}
			}
		}
	}

}
