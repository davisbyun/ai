package javaBasic3.ch06.sec010.exam01;

public class CaluatorExample {

	public static void main(String[] args) {
		System.out.println(Calculator.pi);
		System.out.println(Calculator.minus(1, 2));
		Calculator cal = new Calculator();
		System.out.println(Calculator.mul(1,2));
		System.out.println(Calculator.div(1,2));
	}

}
