package javaBasic.ch05.sec03;

import java.util.Scanner;

public class 문자열추출 {

	public static void main(String[] args) {
//		String title = "자바프래로그래밍";
//		String title2 = new String("자바프로그래밍");
//		
//		System.out.println(title2.length());
//		System.out.println(title2.charAt(6));
//		title2 = title2.replace("자바", "JAVA");
//		System.out.println(title2);
//		title2 = title2.substring(4, 8);
//		System.out.println(title2);
//		title = title.substring(0, 2);
//		System.out.println(title);
//		System.out.println(title.indexOf("밍"));
//		System.out.println(title.indexOf("래", 5));
		
//		String names = "홍길동, 이순신, 최민영";
//		String[] nameArr = names.split(",");
//		for(int i=0; i<nameArr.length; i=i+1 ) {
//			System.out.println(nameArr[i]);
//		}
		String fruits = "사과-배-귤-바나나";
		String[] fruit = fruits.split("-");
//		for (String f : fruit) {
//			System.out.println(f);
//		}
		Scanner sc = new Scanner(System.in);
		System.out.println("무슨 과일 사실래요?");
		String orders = sc.next();
		boolean a = false;
		for (int i = 0; i < fruit.length; i++) {
			if (fruit[i].equals(orders)) { 
				System.out.println("있습니다");
				a = true;
				break;
			}
		}
		if(a==true) {
			
		}
		else {
			System.out.println("없습니다");			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
