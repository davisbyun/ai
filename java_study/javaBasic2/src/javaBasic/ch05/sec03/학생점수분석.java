package javaBasic.ch05.sec03;

import java.util.Scanner;

public class �л������м� {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int no = 0;
		int[] score = null;
		int max = 0;
		int sum = 0;
		while(1==1) {
			System.out.println("--------------------------------------------");
			System.out.println("1.�л��� | 2.�����Է� | 3.��������Ʈ | 4.�м� | 5.����");
			System.out.println("--------------------------------------------");
			int menu = sc.nextInt();
			if (menu==5) {
				System.out.println("���α׷� ����");
				break;
			}
			while(1==1) {
				if(menu==1) {
					try {
					System.out.println("�л���>");
					no = sc.nextInt();
					score = new int[no];
					break;
					} 
					catch (Exception e) {
						System.out.println("�ùٸ� �л����� �Է��ϼ���");
						break;
					}
				}
				else if(menu==2) {
					if(no==0) {
						System.out.println("�л����� �Է����ּ���");
						break;
					}
					for (int i = 0; i < score.length; i++) {
						System.out.println("score["+i+"]>");
						score[i] = sc.nextInt();
					}
					break;
				}
				else if(menu==3) {
					for (int i = 0; i < score.length; i++) {
						System.out.println("score["+i+"]>" + " " + score[i]);
					}
					break;
				}
				else if(menu==4) {
					for (int i = 0; i < score.length; i++) {
						if(score[i]>max) {
							max = score[i];
						}
					}
					for (int i = 0; i < score.length; i++) {
						sum = sum + score[i];
					}
					System.out.println("�ְ�����: " + max);
					System.out.println("�������: "+sum/score.length);
					break;
				}
				else {
					System.out.println("�ٽ� �Է����ּ���");
				}
			}
		}
	}

}
