package javaBasic.ch04.sec01;

import java.util.Scanner;

public class FC {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("¼·¾¾ È­¾¾ ÀÔ·Â :");
		String a = sc.next();
		System.out.println("¿Âµµ ÀÔ·Â");
		double b = sc.nextDouble();
		if(a.equals("F")) {
			double t = (9.0)/(5.0)*b+32;
			System.out.println(t);
		}
		else if(a.equals("f")) {
			double t = (9.0)/(5.0)*b+32;
			System.out.println(t);
		}
		else if(a.equals("C")) {
			double t = (5.0)/(9.0)*(b+32);
			System.out.println(t);
		}
		else if(a.equals("c")) {
			double t = (5.0)/(9.0)*(b+32);
			System.out.println(t);
		}
		else {
			System.out.println("´Ù½Ã ÀÔ·Â");
		}

	}

}
