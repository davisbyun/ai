package javaBasic3.ch06.sec07;

public class 확인문제6_16 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Printer printer = new Printer();
		printer.println(10); //참조변수명.메소드
		printer.println(true);
		printer.println(5.7);
		printer.println("홍길동");
	
		Printer1.println(10); //클래스명.메소드 static 메소드
		Printer1.println(true);
		Printer1.println(5.7);
		Printer1.println("홍길동");
	}

}
