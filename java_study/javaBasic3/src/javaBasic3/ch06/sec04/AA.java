package javaBasic3.ch06.sec04;

public class AA {
	private int a = 10; // 객체 내부에서만 사용
	int b = 20;
	public int c = 30;
	
	private void a1() {
		a=a+100;
		b=b+100;
		c=c+100;
	}
	
	void b1() {
		a=a+100;
		b=b+100;
		c=c+100;
	}
	
	public void c1() {
		a=a+100;		
		b=b+100;
		c=c+100;
	}
}
