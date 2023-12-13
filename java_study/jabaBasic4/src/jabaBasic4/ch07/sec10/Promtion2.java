package jabaBasic4.ch07.sec10;

public class Promtion2 {

	public static void main(String[] args) {

		E e = new E();
		B e1 = new E();
		A e2 = new E();
		
		//G梓端 持失
		
		C e3 = new G();
		
		//H梓端 持失 
		D e4 = new H();
	}

}

class A {}

class B extends A {}

class C extends A {}

class D extends A {}

class E extends B {}

class F extends B {}

class G extends C {}

class H extends D {}

class I extends E {}

