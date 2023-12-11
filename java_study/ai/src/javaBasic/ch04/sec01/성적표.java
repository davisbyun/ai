package javaBasic.ch04.sec01;

import java.util.Scanner;

public class 성적표 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String name = null;
		int score = 0;
		while(1==1) {
			System.out.println("------------------------------");
			System.out.println("1.학생명 | 2.점수 | 3.출력 | 4.종료");
			System.out.println("------------------------------");
			System.out.println("선택>");
			int menu = sc.nextInt();
			if(menu==4) {
				System.out.println("프로그램 종료");
				break;
			}
			while(1==1) {
				if(menu==1) {
					System.out.println("학생명>");
					name = sc.next();
					break;
				}
				if(menu==2) {
					System.out.println("점수>");
					score = sc.nextInt();
					break;
				}
				if(menu==3) {
					System.out.println(name + " " + score);
					break;
				}
				else {
					System.out.println("1~4까지 다시 입력");
					break;
				}
			}
		}
	}

}
