package javaBasic.ch05.sec03;

import java.util.Scanner;

public class ���ڿ����� {

	public static void main(String[] args) {
//		String title = "�ڹ������α׷���";
//		String title2 = new String("�ڹ����α׷���");
//		
//		System.out.println(title2.length());
//		System.out.println(title2.charAt(6));
//		title2 = title2.replace("�ڹ�", "JAVA");
//		System.out.println(title2);
//		title2 = title2.substring(4, 8);
//		System.out.println(title2);
//		title = title.substring(0, 2);
//		System.out.println(title);
//		System.out.println(title.indexOf("��"));
//		System.out.println(title.indexOf("��", 5));
		
//		String names = "ȫ�浿, �̼���, �ֹο�";
//		String[] nameArr = names.split(",");
//		for(int i=0; i<nameArr.length; i=i+1 ) {
//			System.out.println(nameArr[i]);
//		}
		String fruits = "���-��-��-�ٳ���";
		String[] fruit = fruits.split("-");
//		for (String f : fruit) {
//			System.out.println(f);
//		}
		Scanner sc = new Scanner(System.in);
		System.out.println("���� ���� ��Ƿ���?");
		String orders = sc.next();
		boolean a = false;
		for (int i = 0; i < fruit.length; i++) {
			if (fruit[i].equals(orders)) { 
				System.out.println("�ֽ��ϴ�");
				a = true;
				break;
			}
		}
		if(a==true) {
			
		}
		else {
			System.out.println("�����ϴ�");			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
