package javaBasic3.ch06.sec03;

import javaBasic3.ch06.sec04.AA;
import javaBasic3.ch06.sec06.sec05.Singleton;

public class 접근제한자 {

	public static void main(String[] args) {
	
		Singleton o1 = Singleton.getISingleton();
		Singleton o2 = Singleton.getISingleton();
		
		System.out.println(o1);
		
		A aAdd = new A(); //객체화 
		
		// System.out.println(aAdd.a);  에러 private는 다른 클래스에서 못씀 
		System.out.println(aAdd.b); //같은 페키지 sec03, 접근제한자가 defualt 는 같은 패키지는 가능
		System.out.println(aAdd.c); //public으로서 가능하다.
		
		// aAdd.a1();  //에러 private
		aAdd.b1();
		aAdd.c1();

		AA aaAdd = new AA();
		//System.out.println(aaAdd.a); // private 오류
		System.out.println(aaAdd.b);   //다른 페키지를 불러와서 오류 javaBasic3.ch06.sec04
		System.out.println(aaAdd.c);   // public 정상
		
		aaAdd.a1(); // private 오류
		aaAdd.b1(); // 다른 페키지를 불러와서 오류 javaBasic3.ch06.sec04
		aaAdd.c1(); // public 정상
		
		
		//실제 개발할 때는 일반적으로 필드 변수는 priavte 를 주로 쓰고, 메서드는 public을 주로 씀 
	}

}
