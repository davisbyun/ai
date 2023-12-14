package jabaBasic4.ch07.sec15;


public class SmartPhone extends Phone {

	//스마트 폰을 켭니다.
	void smartTurnOn() {
		System.out.println("스마트폰을 켭니다.");
	}
	
	//스마트 폰을 끕니다. 
	void smartTurnOff() {
		System.out.println("스마트폰을 끕니다.");
	}

	@Override
	public void turnOn() {
		System.out.println("스마트폰을 켭니다.");
	}

	@Override
	public void turnOff() {
		System.out.println("스마트폰을 끕니다.");
	}
	}
