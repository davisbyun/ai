package javaBasic7.ch12.sec03;

import java.util.Arrays;

public class StringEx {

	public static void main(String[] args) {

		String data = "�ڹ�";
		byte[] arr1 = data.getBytes();
		System.out.println(arr1 [1]);
		System.out.println(arr1.length);  //4, �ѱ��� �ѱ��ڴ� 2����Ʈ
		
		String str1 = Arrays.toString(arr1);
		System.out.println(str1);
		
		//String Builder Ŭ����
		
		data = data + "java";
		System.out.println(data);
		
		StringBuilder sb = new StringBuilder();
		sb.append("�ڹ�");
		System.out.println(sb);
		sb.append("java");
		System.out.println(sb);
		sb.insert(0, "a");  //0�� �ε����� a�� �����ϼ���
		System.out.println(sb);
		sb.delete(1, 3);
		System.out.println(sb);
	
	}
	
}
