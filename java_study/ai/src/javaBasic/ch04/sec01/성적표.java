package javaBasic.ch04.sec01;

import java.util.Scanner;

public class ����ǥ {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String name = null;
		int score = 0;
		while(1==1) {
			System.out.println("------------------------------");
			System.out.println("1.�л��� | 2.���� | 3.��� | 4.����");
			System.out.println("------------------------------");
			System.out.println("����>");
			int menu = sc.nextInt();
			if(menu==4) {
				System.out.println("���α׷� ����");
				break;
			}
			while(1==1) {
				if(menu==1) {
					System.out.println("�л���>");
					name = sc.next();
					break;
				}
				if(menu==2) {
					System.out.println("����>");
					score = sc.nextInt();
					break;
				}
				if(menu==3) {
					System.out.println(name + " " + score);
					break;
				}
				else {
					System.out.println("1~4���� �ٽ� �Է�");
					break;
				}
			}
		}
	}

}
