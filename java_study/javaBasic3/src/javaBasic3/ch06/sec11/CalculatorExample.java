package javaBasic3.ch06.sec11;

public class CalculatorExample {

	public static void main(String[] args) {
		
		Calculator calculator = new Calculator();
		
		//����Ű�ÿ�
		calculator.powerOn(); //�޼ҵ� ȣ��
		calculator.powerOfF();
		
		calculator.powerOn();
		int result = calculator.plus(300, 500);
		result = calculator.plus(-50, -100);
		result = calculator.plus(100, 200, 300);

	}

}
