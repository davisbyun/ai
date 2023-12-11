package javaBasic3.ch06.sec03;

import javaBasic3.ch06.sec04.AA;
import javaBasic3.ch06.sec05.Singleton;

public class 접근제한자 {

	public static void main(String[] args) {
//		AA a = new AA();
////		a.b1();
//		a.c1();
//		System.out.println(a.c);
		Singleton o1 = Singleton.getInstance();
		System.out.println(o1);
	}

}
