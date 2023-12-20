package javaApp1.ch12.sec04;

import java.util.Calendar;

public class CalendarExampe {

	public static void main(String[] args) {
		
		
		Calendar now = Calendar.getInstance(); 		// 달력을 사용할 수 있는 메소드
		int a1 = now.get(Calendar.YEAR); 			//상수명 #지금기준 2023
		int a2 = now.get(1); 						//상수의 값 #지금기준 2023
		System.out.println(a1 + " " + a2);
		int a3 = now.get(Calendar.MONTH ) + 1 ; 	//상수명  월은 0월부터 11월이므로 1을 더함
		int a4 = now.get(2) +1 ; 					//상수의 값 #지금기준 12
		System.out.println(a3 + " " + a4); 
		int a5 = now.get(Calendar.DAY_OF_MONTH ); 	//상수명 #지금기준 오늘날짜  
		int a6 = now.get(5); 						//상수의 값 #지금기준 오늘날짜
		System.out.println(a5 + " " + a6);
		
		int a7 = now.get(Calendar.DAY_OF_WEEK); 	//상수명 #지금기준 주의 날수 순서  
		int a8 = now.get(7); 						//상수의 값 #지금기준 
		System.out.println(a7 + " " + a7);
		
		int a9 = now.get(Calendar.AM_PM); 				//상수명 #지금기준 오전 0 오후 1  
		int a10 = now.get(9); 						//상수의 값 #지금기준 
		System.out.println(a9 + " " + a10);
		
		if(a9 == Calendar.AM) {
			System.out.println("오전");
				
		}else {
			System.out.println("오후");
					
		}
		int a13 = now.get(Calendar.HOUR);
		int a14 = now.get(12);
		
		
		System.out.println(now.get(Calendar.YEAR)+ "년", + now.get(Calendar.MONTH) + "월")  ;
		
		
		
		
		}
	
	

}
