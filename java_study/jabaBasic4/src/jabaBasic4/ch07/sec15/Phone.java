package jabaBasic4.ch07.sec15;

public abstract class Phone {

	String owner;

	public Phone() {
	}

	public Phone(String owner) {
		this.owner = owner;
	}
	
	public abstract void turnOn();  //{����} ���� �޼ҵ� = �߻�޼ҵ�
	public abstract void turnOff();	
	
}
