package javaApp1.ch12.sec04;

import java.util.Calendar;

public class CalendarExampe {

	public static void main(String[] args) {
		
		
		Calendar now = Calendar.getInstance(); 		// �޷��� ����� �� �ִ� �޼ҵ�
		int a1 = now.get(Calendar.YEAR); 			//����� #���ݱ��� 2023
		int a2 = now.get(1); 						//����� �� #���ݱ��� 2023
		System.out.println(a1 + " " + a2);
		int a3 = now.get(Calendar.MONTH ) + 1 ; 	//�����  ���� 0������ 11���̹Ƿ� 1�� ����
		int a4 = now.get(2) +1 ; 					//����� �� #���ݱ��� 12
		System.out.println(a3 + " " + a4); 
		int a5 = now.get(Calendar.DAY_OF_MONTH ); 	//����� #���ݱ��� ���ó�¥  
		int a6 = now.get(5); 						//����� �� #���ݱ��� ���ó�¥
		System.out.println(a5 + " " + a6);
		
		int a7 = now.get(Calendar.DAY_OF_WEEK); 	//����� #���ݱ��� ���� ���� ����  
		int a8 = now.get(7); 						//����� �� #���ݱ��� 
		System.out.println(a7 + " " + a7);
		
		int a9 = now.get(Calendar.AM_PM); 				//����� #���ݱ��� ���� 0 ���� 1  
		int a10 = now.get(9); 						//����� �� #���ݱ��� 
		System.out.println(a9 + " " + a10);
		
		if(a9 == Calendar.AM) {
			System.out.println("����");
				
		}else {
			System.out.println("����");
					
		}
		int a13 = now.get(Calendar.HOUR);
		int a14 = now.get(12);
		
		
		System.out.println(now.get(Calendar.YEAR)+ "��", + now.get(Calendar.MONTH) + "��")  ;
		
		
		
		
		}
	
	

}
