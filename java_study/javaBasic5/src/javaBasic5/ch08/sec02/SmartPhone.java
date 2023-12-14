package javaBasic5.ch08.sec02;

public class SmartPhone implements RemoteControl {

	private int volume;

	@Override
	public void turnOn() {
		System.out.println("핸드폰을 켭니다.");
	}

	@Override
	public void turnOff() {
		System.out.println("핸드폰을 끕니다.");
		defaultM();
	}

	@Override
	public void setVolume(int volum) {
		if(volum > RemoteControl.MAX_VOLUME) {
			this.volume = RemoteControl.MAX_VOLUME;
		}else if(volum < RemoteControl.MIN_VOLUNE) {
			this.volume = RemoteControl.MIN_VOLUNE;
			
		}else {this.volume = volum;	
		}
		System.out.println("현재 스마트폰 볼륨은 : " + this.volume);
	}

}
