package javaBasic3.ch06.sec006;

public class 확인문제6장 {
	생성자연습 a3 = new 생성자연습(100,true);
	생성자연습 c4 = new 생성자연습("이순신");
	생성자연습 a5 = new 생성자연습(true,100);
	public static void main(String arg[]){
		생성자연습 a = new 생성자연습("홍길동");
		System.out.println(a.name);
		메소드 m1 = new 메소드();
		System.out.println(m1.m3(1,2));
	}
}
