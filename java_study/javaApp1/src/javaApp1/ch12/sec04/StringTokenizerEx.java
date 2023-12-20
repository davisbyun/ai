package javaApp1.ch12.sec04;

import java.util.StringTokenizer;

public class StringTokenizerEx {

	public static void main(String[] args) {
		String data1 = "홍길동&이수홍,박연수";
		//결과화면 --> 홍길동 이수홍 박연수
		//방법1) split() 함수 사용
		//방법2) StringTokenizer 클래스를 사용
		
		//방법1)
		String [] arr = data1.split("&|,");
		for(int i = 0; i<arr.length; i++ ) {
			System.out.println(arr[i]);
		//향상된 for
//		for(String i : arr) {
//			System.out.println(i);
		}	
		String data2 = "홍길동/이수홍/박연수/이순신/최수진";
		StringTokenizer st = new StringTokenizer(data2, "/");
		//System.out.println(st.nextToken());
		while(st.hasMoreTokens() ) {
			System.out.println(st.nextToken());
		}
		
		String data3 = "사과-배-귤-바나나-포도";
		StringTokenizer st1 = new StringTokenizer(data3, "-");
		while(st1.hasMoreTokens()) {
			System.out.println(st1.nextToken());
		}
		
		String data4 = "자바+파이썬+오라클+테서플로어";
		StringTokenizer st2 = new StringTokenizer(data3, "+");
		while(st2.hasMoreTokens()) {
			System.out.println(st2.nextToken());
		
		}
	}
}

