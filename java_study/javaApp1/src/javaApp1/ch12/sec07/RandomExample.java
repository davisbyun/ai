package javaApp1.ch12.sec07;

import java.util.Arrays;
import java.util.Random;

public class RandomExample {

	public static void main(String[] args) {
		//선택번호
		int[] selectNumber = new int[6];
		Random random = new Random(3);
		System.out.println("선택번호 : ");
		for(int i = 0; i<6; i++) {
			selectNumber[i] = random.nextInt(45) + 1; //(0~44)+1 --> 1~45
			System.out.println(selectNumber[i] + " ");
		}
		System.out.println();
		
		//당첨번호
		int[] winningNumber = new int[6];
		random = new Random(3);
		System.out.println("당첨번호 : " + " ");
		for(int i = 0; i<6; i++) {
		selectNumber[i] = random.nextInt(45) + 1; 
		System.out.println(selectNumber[i] + " ");
		}
		System.out.println();
		
		//당첨여부
		Arrays.sort(selectNumber);  //클래스명.method는 static으로 선언된 메소드임.
		Arrays.sort(winningNumber);
		boolean result = Arrays.equals(selectNumber, winningNumber);
		System.out.println("당첨여부 : " + " ");
		if (result) {
			System.out.println("1등에 당첨되었습니다.");
		}else {
			System.out.println("당첨되지 않았습니다.");
		}
	}
}


