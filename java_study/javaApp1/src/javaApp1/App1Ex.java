package javaApp1;

import java.lang.module.ModuleDescriptor;
import java.sql.Time;
import java.util.Date;
import java.util.Scanner;
import java.util.StringTokenizer;

public class App1Ex {

	public static void main(String[] args) {
		
		Scanner sc =new Scanner(System.in);
				
		String a = "abcde"; 
		int aHshCode = a.hashCode();
		System.out.println(aHshCode); //�ֱ����ġ�� �ּ� ��ȯ
		double pi = Math.PI;
		System.out.println(pi);
		double e = Math.E;
		
		double cos45 = Math.cos(45.0);
		System.out.println(cos45);
		
		Date date = new Date();
		int date1 = date.getDate();
		System.out.println(date1);
		long time1 = date.getTime();
		System.out.println(time1);
		long date2 = Date.parse("2023/12/19");
		System.out.println(date2);
		//DateFormat.parse("2021")
		String text = "ab/cd/ef";
		StringTokenizer st = new StringTokenizer("ab/cd/ef", "/");
		int count = st.countTokens();
		System.out.println(count);
		String token1 = st.nextToken();
		System.out.println(token1);
		
		// ModuleDescriptor md = new ModuleDescriptor(); //������ ���� new�� �� ����.
		
		//p.496
		// byte �⺻��
		//Byte b = 10; Ŭ����
		
		
		
		
		
		
	}

}

//class A extends Math {
	
