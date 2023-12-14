package jabaBasic4.ch07.sec15;

public abstract class Phone {

	String owner;

	public Phone() {
	}

	public Phone(String owner) {
		this.owner = owner;
	}
	
	public abstract void turnOn();  //{내용} 없는 메소드 = 추상메소드
	public abstract void turnOff();	
	
}
