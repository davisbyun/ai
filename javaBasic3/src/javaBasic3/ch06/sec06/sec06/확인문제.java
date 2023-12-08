package javaBasic3.ch06.sec06.sec06;

public class 확인문제 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//1)3,2)4,3)1,4)4,5)1,6)3,7)1,8)2,9)2,10)4,11)3,12)필드맴버/생성자/메서드
		//1)3,2)4,3)4,4)3,5)1,6)4,7)2,8)2,9)2,10)3,11)3 12)필드맴버/생성자/메서드 //me
		
		생성자연습 c1 = new 생성자연습("홍길동"); 
		생성자연습 c2 = new 생성자연습();
		생성자연습 c3 = new 생성자연습(100,true);
		생성자연습 c4 = new 생성자연습("이순신");
		생성자연습 c5 = new 생성자연습(true,100);
		
		메소드 m1 = new 메소드();
		
		m1.m3(1,2);
		m1.m3(1,2,3,4);
		
		//정적 필드와 메소드는 객체 생성하지 않아도 쓸 수 있다.
		메소드.a =100;
		메소드.sm1();
		System.out.println(메소드.PI);
		
		
		
//		m1.m3(1,2);
//		m1.m3((1,2,3,4);
	}

}
