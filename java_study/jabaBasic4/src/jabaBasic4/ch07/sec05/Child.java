package jabaBasic4.ch07.sec05;

public class Child extends Parent {

	public String name;
	
	public Child() {
		
		this("ȫ�浿");
		System.out.println("Child() call");
		
	}
		
	public Child(String name) {
		
		this.name = name;
		System.out.println("Child(String name) call");
	}
	
	
	
}
