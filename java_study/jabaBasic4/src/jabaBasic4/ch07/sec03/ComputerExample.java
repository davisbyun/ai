package jabaBasic4.ch07.sec03;

public class ComputerExample {

	public static void main(String[] args) {
		
		Calculator ca1 = new Calculator();
		
		ca1.areaCircle(10); //부모 메소드 호출
		
		Computer com = new Computer();
		System.out.println(com.areaCircle(10));
		
	}

}
