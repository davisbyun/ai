package jabaBasic4.ch07.sec08;

import jabaBasic4.ch07.sec07.A;

public class D extends A {
	private String field1;

	public D() {
	super();
	}
	
	public void method1 () {

		this.field1 ="value"; //�ٸ� ��Ű���� �ִ� AŬ������ �θ��� �ʵ带 �� �� �ִ�.
		this.method1();
//		A a = new A();
//		a.field = "value";
//		a.method();
}
}
