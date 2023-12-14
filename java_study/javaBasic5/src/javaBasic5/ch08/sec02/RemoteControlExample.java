package javaBasic5.ch08.sec02;

public class RemoteControlExample {

	public static void main(String[] args) {
		RemoteControl rc;
		rc = new Televison();  //인터페이스는 힙ㅁ[모리에 안올라감
		
		rc.turnOn();
		rc.setVolume(5);
		rc.turnOff();
		
		rc = new SmartPhone();
		rc.turnOn();
		rc.setVolume(5);
		rc.turnOff();
		
		rc.defaultM();
		RemoteControl.staticM();
	
	}
	

}
