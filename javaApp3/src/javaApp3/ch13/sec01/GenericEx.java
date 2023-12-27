package javaApp3.ch13.sec01;

public class GenericEx {

	public static void main(String[] args) {
		// 제네릭이란 나중에 형을 정하는 것, 해당 박스에 원하지 않는 타입의 자료가 들어가는 것을 방지

		Box<Integer> intBox = new Box<Integer>();
		intBox.content = 100;
		
		Box<String> strBox = new Box<String>();
		strBox.content = "홍길동";
		//strBox.content = 12.5; 다른 타입의 자료가 들어가는 것을 방지 에러남...
		
		BoxChild<Integer, String> bc = new BoxChild<Integer, String>();
		bc.content = 10;
		bc.kind = "aaa";
		
		InterImpl<Double> iti = InterImpl<Double>();
		InterImpl<Boolean> iti = InterImpl<Boolean>();
		
	}

}

class Box <T>{
	T content; //내용을 담을 변수 정수, 문자열, 객체 ......
	
}

class BoxChild<T, K> extends Box<T> {   //자식이 상속할 때는 부모에 있는 제네릭을 자식이 그대로 써 줘야함. 
	K kind ;

}

interface Inter<A> {
	A method1();
	
}

class InterImpl<A> implements Inter<A> {

	@Override
	public A method1() {
		// TODO Auto-generated method stub
		return null;
	}
}