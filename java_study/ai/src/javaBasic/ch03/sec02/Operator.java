package javaBasic.ch03.sec02;

public class Operator {

	public static void main(String[] args) {
		int number =10;
//		number = number+1;
		++number;
		System.out.println(number);
//		number = number-1;
		--number;
		System.out.println(number);
		
		int number1 = 100;
		number1 = number1 + 1;
		System.out.println(number1);
		
		int number2 = number1;
		System.out.println(number2);
		
		int number3 = 1000;
		number3++;
		int number4 = number3;
		System.out.println(number3);
		System.out.println(number4);
		
		int number5 = 20;
		int number6 = number5++;
		System.out.println(number5);
		System.out.println(number6);
		
		int number9 = 2000;
		System.out.println(++number9);
		System.out.println(number9);
	}

}
