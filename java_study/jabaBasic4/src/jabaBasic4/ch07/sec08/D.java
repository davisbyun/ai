package jabaBasic4.ch07.sec08;

import jabaBasic4.ch07.sec07.A;

public class D extends A {
	private String field1;

	public D() {
	super();
	}
	
	public void method1 () {

		this.field1 ="value"; //다른 패키지에 있는 A클래스의 부모의 필드를 쓸 수 있다.
		this.method1();
//		A a = new A();
//		a.field = "value";
//		a.method();
}
}
