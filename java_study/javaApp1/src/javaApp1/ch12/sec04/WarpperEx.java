package javaApp1.ch12.sec04;

public class WarpperEx {

	public static void main(String[] args) {
		//p524
		//자료형 기본형 : byte, char, int, boolean, float, double, 참조형 : 클래스의 변수들, String
		//기본형은 클래스가 아니므로 미리 만들어진 메소드가 없다. 그래서 기본형 자료형을 클래스로 만들어 둔 게 있다.(=포장클래스 Wrapper Class - 기본형 첫자를 대문자로 표기해 구별)
		//박싱 기본형 --> 객체,  언박싱 객체 -->기본형
		
		Integer a = 10;  //a라는 변수는 클래스의 변수라서 참조형 변수
		Integer a1 = new Integer(10);
		String as = a.toString(0);  //숫자 10을  문자 10으로 변경
		
		double da = a.doubleValue(); //숫자 10을 실수로 10.0으로 변경
		System.out.println(da);
		System.out.println(a.MAX_VALUE); 
		System.out.println(a.MIN_VALUE);
		System.out.println(a.SIZE);
		
		//3.14 "3.14"
		//double형의 최대값
		
		//double형의 사이즈는?
		
		//10.1, 5.4 최대값 출력하기
		
		
		
		
		
		
	}

}
