package t01.ch01.sec01;

import java.util.Scanner;

public class �л������м� {

	public static void main(String[] args) {
		// p199 9��
		
		Scanner sc = new Scanner(System.in);
		
		int menu = 1; //���ú���
		int studentlCount; //�л���
		int[] score = null;
		int max = 0;
		double avg = 0.0;
		int sum = 0;
		
		while(menu != 5) {		//�޴��� 5�� �ƴϸ� ���� 
			
			System.out.println("----------------------------------------------------");
			System.out.println("1. �л��� | 2. �����Է� | 3. ��������Ʈ | 4. �м� | 5. ���� ");
			System.out.println("----------------------------------------------------");
			System.out.println("����>");
			menu = sc.nextInt();
			
			switch (menu) {
			case 1 : System.out.println("�л���");
					 int studentCount = sc.nextInt();
					 score = new int[studentCount];
					 break;
					 
			case 2 : for(int i = 0; i<score.length; i++) {
					 System.out.println("score["+ i +"] > " );
					 System.out.println("�����Է�");
			 		 score[i] = sc.nextInt();	
			 		 break;
					}
			 		 //�л����� 3�̸� score[0], score[1], score[1]
			 		 //�迭�� �����ϴµ� ��(�л���)�� ������ ������
			 		 
			case 3 :for(int i = 0; i<score.length; i++) {
			  		 System.out.println("score["+ i +"] > " );
			}
	 		 		 
			case 4 : for(int i = 0; i<score.length; i++) {	//�ְ����� ���
				sum = sum + score[i];
				if(max < score[i])
					max= score[i];
			}
				
					avg = sum/ (double)score.length;
					System.out.println("�ְ����� " + max);
					System.out.println("������� " + avg);
				
			case 5 : System.out.println("���α׷�����" );
			default : System.out.println("���ü��� 1~5�߿� �Է����ּ���");	
		}
		
	  }

	}
}
