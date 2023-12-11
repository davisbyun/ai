package javaBasic.ch05.sec03;

import java.util.Scanner;

public class 학생점수분석 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int no = 0;
		int[] score = null;
		int max = 0;
		int sum = 0;
		while(1==1) {
			System.out.println("--------------------------------------------");
			System.out.println("1.학생수 | 2.점수입력 | 3.점수리스트 | 4.분석 | 5.종료");
			System.out.println("--------------------------------------------");
			int menu = sc.nextInt();
			if (menu==5) {
				System.out.println("프로그램 종료");
				break;
			}
			while(1==1) {
				if(menu==1) {
					try {
					System.out.println("학생수>");
					no = sc.nextInt();
					score = new int[no];
					break;
					} 
					catch (Exception e) {
						System.out.println("올바른 학생수를 입력하세요");
						break;
					}
				}
				else if(menu==2) {
					if(no==0) {
						System.out.println("학생수를 입력해주세요");
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
					System.out.println("최고점수: " + max);
					System.out.println("평균점수: "+sum/score.length);
					break;
				}
				else {
					System.out.println("다시 입력해주세요");
				}
			}
		}
	}

}
