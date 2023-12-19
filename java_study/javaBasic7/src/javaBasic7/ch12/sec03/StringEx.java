package javaBasic7.ch12.sec03;

import java.util.Arrays;

public class StringEx {

	public static void main(String[] args) {

		String data = "자바";
		byte[] arr1 = data.getBytes();
		System.out.println(arr1 [1]);
		System.out.println(arr1.length);  //4, 한글의 한글자는 2바이트
		
		String str1 = Arrays.toString(arr1);
		System.out.println(str1);
		
		//String Builder 클래스
		
		data = data + "java";
		System.out.println(data);
		
		StringBuilder sb = new StringBuilder();
		sb.append("자바");
		System.out.println(sb);
		sb.append("java");
		System.out.println(sb);
		sb.insert(0, "a");  //0번 인덱스에 a를 삽입하세요
		System.out.println(sb);
		sb.delete(1, 3);
		System.out.println(sb);
	
	}
	
}
