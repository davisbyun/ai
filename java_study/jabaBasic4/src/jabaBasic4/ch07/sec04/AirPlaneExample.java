package jabaBasic4.ch07.sec04;

public class AirplaneExample {

	public static void main(String[] args) {
		 //자식 객체화
		SupersonicAirplane sa = new SupersonicAirplane();
		sa.takeOff();
		sa.fly();
		sa.flyMode = SupersonicAirplane.SUPERSONIC;
		sa.fly();
		sa.flyMode = SupersonicAirplane.NORMAL;
		sa.fly();
		sa.flyMode = SupersonicAirplane.ROUND;
		sa.fly(); //회전 비행합니다.
		sa.flyMode = SupersonicAirplane.SLOW;
		sa.fly(); //천천히 비행합니다.
		sa.land();
	}

}