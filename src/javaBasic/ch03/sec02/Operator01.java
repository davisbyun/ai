package javaBasic.ch03.sec02;

public class Operator01 {

	public static void main(String[] args) {
		int number = 10;
		//number = number + 1; -->number++과 같음
		//number++;
		++number;
		System.out.println(number);
		
		//number = number - 1; -->number--와 같음 
		//number--;
		--number;
		System.out.println(number);		
		
		int number1 = 100;
		number1++;
		System.out.println(number1);	
		
		int number2 = number1;
		System.out.println(number2);
		
		int number3 = 1000;
		number3++;
		int number4 = number3;
		System.out.println(number3);
		System.out.println(number4);
		
		int number5 = 20;
		int number6 = number5++;   		//1번 number6 = number5 --> 2번 number5 = number5+1
		System.out.println(number5);	//21
		System.out.println(number6);	//20
		
		
		int number7 = 200;
		int number8 = ++number7;   		//1번 number7 = number7+1 --> 2번 number8 = number7
		System.out.println(number7);	//1001
		System.out.println(number8);	//1001
		
		int number9 = 2000;
		System.out.println(number9++);	//2000
		System.out.println(number9);	//2001	
		
		int number10 = 2000;
		System.out.println(++number10);	//2001
		System.out.println(number10);	//2001	

	}

}
