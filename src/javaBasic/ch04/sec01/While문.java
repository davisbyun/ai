package javaBasic.ch04.sec01;

public class While문 {

	public static void main(String[] args) {
		//반복문
		//형식 while(조건){참이면 수행할 문장}
		//1~100까지 출력하기
		//숫자변수 만들어 1출력하기 --> 변수 +1  
		int number = 1;
		
		while( number < 100  ) { 
			number++; 
			System.out.println(number); 
			}		
		
		//10,20,30...100
		
		int number2 = 10;
		while ( number2 <= 100  ) {
			System.out.println(number2);
			number2 += 10;
		}
		
		//100, 90, 80, 70... -10, -20
		
		int number3 = 100;
		while (number3 >= -30) {
			System.out.println(number3);
			number3 -= 10; 
		}
		
		//1~20까지 5의 배수를 빼고 출력해주세요.
		int number4 = 0;
		while( number4 <= 20  ) { 
			number4++; 
			if(number4 % 5 != 0) {  System.out.println(number4); }
			//continue는 반복문은 계속하되 단 아래문장은 건너뛰어라 
			else {continue;}
		
		//1부터 100까지 합계	
			
		int number5 = 1;
		int sum = 0;
		while(number5 <= 100) { 
			sum += number5;
			System.out.println(number5 + "   \t"+ sum);	
			number5++;
		    }
		
		//1~100까지 중에서 합계가 3000이 넘으면.. ..하고 숫자와 합계를 찍으시오.
		
		int number6 = 1;
		int sum6 = 0;
		while(number6 <= 100) {
			sum6 += number6;
			if(sum6 >= 3000) break;
			number6++;
		}
		
		System.out.println(number6 + "   \t" + sum6 );
			
		//1~100
		//1	2	3	4	5	6	7	...	100
		//1	3	6	10	15	21	28		
		//출력화면
		//1	1
		//2	3
		//3	6
		//4	10
		
		int number7 = 1;
		
				
				
		
		}		
	}
}
