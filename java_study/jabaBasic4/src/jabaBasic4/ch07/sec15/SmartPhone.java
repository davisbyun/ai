package jabaBasic4.ch07.sec15;


public class SmartPhone extends Phone {

	//����Ʈ ���� �մϴ�.
	void smartTurnOn() {
		System.out.println("����Ʈ���� �մϴ�.");
	}
	
	//����Ʈ ���� ���ϴ�. 
	void smartTurnOff() {
		System.out.println("����Ʈ���� ���ϴ�.");
	}

	@Override
	public void turnOn() {
		System.out.println("����Ʈ���� �մϴ�.");
	}

	@Override
	public void turnOff() {
		System.out.println("����Ʈ���� ���ϴ�.");
	}
	}
