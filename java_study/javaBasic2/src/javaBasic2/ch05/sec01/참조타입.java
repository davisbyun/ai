package javaBasic2.ch05.sec01;

import java.util.Scanner;

public class ����Ÿ�� {

	public static void main(String[] args) {
		int n =10;
		Scanner sc = new Scanner(System.in);
		System.out.println(n);
		Student st = new Student();
		Teacher tr = new Teacher();
		Person per = new Person();
		Guide guide = new Guide();
		
		st.kor = 80;
		int kor = st.kor;
		
		System.out.println(kor);
	}

}
