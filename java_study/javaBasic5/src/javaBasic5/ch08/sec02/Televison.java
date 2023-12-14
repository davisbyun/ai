package javaBasic5.ch08.sec02;

public class Televison implements RemoteControl {

	private int volume;
	
	
	@Override
	public void turnOn() {
		System.out.println("TV�� �մϴ�.");
	}

	@Override
	public void turnOff() {
		System.out.println("TV�� ���ϴ�.");
	}

	@Override
	public void setVolume(int volum) {
		if(volum > RemoteControl.MAX_VOLUME) {
			this.volume = RemoteControl.MAX_VOLUME;
		}else if(volum < RemoteControl.MIN_VOLUNE) {
			this.volume = RemoteControl.MIN_VOLUNE;
			
		}else {this.volume = volum;	
		}
		System.out.println("���� TV������ : " + this.volume);
	}

}
