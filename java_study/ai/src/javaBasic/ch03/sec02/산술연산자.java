package javaBasic.ch03.sec02;

import java.util.Scanner;

public class ��������� {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
//		int kor = sc.nextInt();
//		System.out.println(kor);
//		double rate = sc.nextDouble();
//		System.out.println(rate);
//		
//		boolean truth = sc.nextBoolean();
//		System.out.println(truth);
//		String name = sc.next();
//		System.out.println(name);
		System.out.print("�̸���? : ");
		String name = sc.next();
		System.out.println();
		System.out.print("���� ������? : ");
		int kor = sc.nextInt();
		System.out.println();
		System.out.print("���� ������? : ");
		int eng = sc.nextInt();
		System.out.println();
		System.out.print("���� ������? : ");
		int mat = sc.nextInt();
		System.out.println();
		System.out.println(name + " " + kor + " " + eng + " " + mat);
		int sum = kor + eng + mat;
		System.out.println(sum);
		double avg = sum / 3.0; 
		System.out.println(avg);
		int matMod = mat%2;
		System.out.println(matMod);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
