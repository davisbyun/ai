package jabaBasic4.ch07.sec05;

public class Parent {

	public String nation;
	
	public Parent() {
		
		this("대한민국");  //자기 클래스에서 다른 생성자 호출
		System.out.println("Parent() call");
		
		
	}
	
	public Parent(String nation) {
		this.nation = nation;
		System.out.println("Parent(String nation) call");
		
	}
	
		
	
}
