package jabaBasic4.ch07.sec03;

//조상클래스
public class Calculator {
	
	@Override
	public double areaCircle(double r)  {  
		System.out.println("Calculator 객체의 areaCircle() 실행 ");
		return 3.14159 * r* r ; 
	}
}
