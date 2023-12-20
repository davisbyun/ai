package javaApp1.ch12.sec04;

import java.util.StringTokenizer;

public class StringTokenizerEx {

	public static void main(String[] args) {
		String data1 = "ȫ�浿&�̼�ȫ,�ڿ���";
		//���ȭ�� --> ȫ�浿 �̼�ȫ �ڿ���
		//���1) split() �Լ� ���
		//���2) StringTokenizer Ŭ������ ���
		
		//���1)
		String [] arr = data1.split("&|,");
		for(int i = 0; i<arr.length; i++ ) {
			System.out.println(arr[i]);
		//���� for
//		for(String i : arr) {
//			System.out.println(i);
		}	
		String data2 = "ȫ�浿/�̼�ȫ/�ڿ���/�̼���/�ּ���";
		StringTokenizer st = new StringTokenizer(data2, "/");
		//System.out.println(st.nextToken());
		while(st.hasMoreTokens() ) {
			System.out.println(st.nextToken());
		}
		
		String data3 = "���-��-��-�ٳ���-����";
		StringTokenizer st1 = new StringTokenizer(data3, "-");
		while(st1.hasMoreTokens()) {
			System.out.println(st1.nextToken());
		}
		
		String data4 = "�ڹ�+���̽�+����Ŭ+�׼��÷ξ�";
		StringTokenizer st2 = new StringTokenizer(data3, "+");
		while(st2.hasMoreTokens()) {
			System.out.println(st2.nextToken());
		
		}
	}
}

