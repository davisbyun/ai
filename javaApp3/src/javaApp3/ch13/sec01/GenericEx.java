package javaApp3.ch13.sec01;

public class GenericEx {

	public static void main(String[] args) {
		// 제네릭이란? 나중에 형을 정하는 것
		Box<Integer> intBox = new Box<Integer>();
		intBox.content = 100;
		// intBox.content = "홍길동"; 해당 박스에 원하지 않은 자료 들어가는 것 방지
		
		Box<String> strBox = new Box<String>();
		strBox.content = "홍길동";
		// strBox.content = 12.5;
		
		BoxChild<Integer, String> bc = new BoxChild<Integer, String>();
		bc.content = 10;
		bc.kind = "aaa";

		InterImpl<Double> iti = new InterImpl<Double>();
		InterImpl<Boolean> iti2 = new InterImpl<Boolean>();
	}

}

class Box<T> {
	T content; //내용을 담을 변수 정수, 문자열, 객체 ....
}

class BoxChild<T, K>  extends Box<T>{
	K kind;
}

interface Inter<A>{
	A method1();
}

class InterImpl<A> implements Inter<A> {

	@Override
	public A method1() {
		// TODO Auto-generated method stub
		return null;
	}
	
}