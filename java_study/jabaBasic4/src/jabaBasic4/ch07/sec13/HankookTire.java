package jabaBasic4.ch07.sec13;

//자식클래스 = 하위클래스 = 세부내용(한국타이어)
public class HankookTire extends Tire {

	@Override
	public void roll() {
		super.roll();
		
		System.out.println("한국타이어가 굴러갑니다.");
		System.out.println("MySQL프로그램으로 데이터베이스를 연결합니다.");
	}
}
