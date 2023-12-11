package javaBasic3.ch06.sec11;

public class CalculatorExample {

	public static void main(String[] args) {
		
		Calculator calculator = new Calculator();
		
		//전원키시오
		calculator.powerOn(); //메소드 호출
		calculator.powerOfF();
		
		calculator.powerOn();
		int result = calculator.plus(300, 500);
		result = calculator.plus(-50, -100);
		result = calculator.plus(100, 200, 300);

	}

}
