package jabaBasic4.ch07.sec04;

public class AirPlaneExample {

	public static void main(String[] args) {
		
		//�ڽ�Ŭ���� ��üȭ
		
		SuperSonicAirPlane sa = SuperSonicAirPlane();
		sa.takeOff();
		sa.fly();
		sa.flyMode = SuperSonicAirPlane.SUPERSONIC;
		sa.fly();
		sa.flyMode = SuperSonicAirPlane.NORMAL;
		sa.fly();
		sa.flyMode = SuperSonicAirPlane.ROUND;
		sa.fly();
		sa.flyMode = SuperSonicAirPlane.SLOW;
		
		
	}

}
