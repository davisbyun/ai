package javaBasic.ch04.sec01;

import java.util.Scanner;

public class ���࿹�� {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int balance = 0;
		
		while(1==1) {
			System.out.println("-----------------------------");
			System.out.println("1.���� | 2.��� | 3.�ܰ� | 4.����");
			System.out.println("-----------------------------");
			System.out.println("����>");
			int menu = sc.nextInt();
			if(menu==4) {
				System.out.println("���α׷� ����");
				break;
			}
			while(1==1) {
				if(menu==1) {
					System.out.println("���ݾ�>");
					int deposit = sc.nextInt();
					balance = balance + deposit;
					System.out.println();
					break;
				}
				else if(menu==2) {
					System.out.println("��ݾ�>");
					int withdraw = sc.nextInt();
					balance = balance - withdraw;
					if(balance<0) {
						System.out.println("�ܰ� 0���� ���� �� �����ϴ�");
						balance = balance + withdraw;
					}
					System.out.println();
					break;
					
				}
				else if(menu==3) {
					System.out.println("�ܰ�>" + balance);
					System.out.println();
					break;
					
				}
				else {
					System.out.println("1~4 �ٽ��Է�");
					System.out.println();
					break;
				}
			}
		}
	}

}
