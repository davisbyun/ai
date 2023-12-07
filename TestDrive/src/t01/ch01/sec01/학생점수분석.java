package t01.ch01.sec01;

import java.util.Scanner;

public class 학생점수분석 {

	public static void main(String[] args) {
		// p199 9번
		
		Scanner sc = new Scanner(System.in);
		
		int menu = 1; //선택변수
		int studentlCount; //학생수
		int[] score = null;
		int max = 0;
		double avg = 0.0;
		int sum = 0;
		
		while(menu != 5) {		//메뉴가 5가 아니면 종료 
			
			System.out.println("----------------------------------------------------");
			System.out.println("1. 학생수 | 2. 점수입력 | 3. 점수리스트 | 4. 분석 | 5. 종료 ");
			System.out.println("----------------------------------------------------");
			System.out.println("선택>");
			menu = sc.nextInt();
			
			switch (menu) {
			case 1 : System.out.println("학생수");
					 int studentCount = sc.nextInt();
					 score = new int[studentCount];
					 break;
					 
			case 2 : for(int i = 0; i<score.length; i++) {
					 System.out.println("score["+ i +"] > " );
					 System.out.println("점수입력");
			 		 score[i] = sc.nextInt();	
			 		 break;
					}
			 		 //학생수가 3이면 score[0], score[1], score[1]
			 		 //배열을 선언하는데 열(학생수)의 갯수가 가변적
			 		 
			case 3 :for(int i = 0; i<score.length; i++) {
			  		 System.out.println("score["+ i +"] > " );
			}
	 		 		 
			case 4 : for(int i = 0; i<score.length; i++) {	//최고점수 평균
				sum = sum + score[i];
				if(max < score[i])
					max= score[i];
			}
				
					avg = sum/ (double)score.length;
					System.out.println("최고점수 " + max);
					System.out.println("평균점수 " + avg);
				
			case 5 : System.out.println("프로그램종료" );
			default : System.out.println("선택수는 1~5중에 입력해주세요");	
		}
		
	  }

	}
}
