package javaBasic5.ch08.sec02;

//역할을 추상메소드로 구현
public interface RemoteControl {

	int MAX_VOLUME = 10; // <-- 상수임,  final static 인터페이스는 상수밖에 못들어오므로 생략가능
	int MIN_VOLUNE = 0;
	
	//추상 abstract는 생략 가능
	void turnOn();
	void turnOff();
	void setVolume(int volum);
	//void qrRead();
	
	
	//이하는 자바가 버전 업 되면서 추가된 메소드들
	//조상이 추상메서드를 수정하면 이하 자식에서 에러가 나기 때문에 보완함 
	//디폴트 메소드 
	default void defaultM() {
		int sum =0;
		System.out.println("QR코드 입력 받기 ");
		for(int i = 0; i<10; i++) {
			sum+=privateM(i);
	}
		System.out.println(sum);
	}
	//정적 메소드
	static void staticM() {
		System.out.println("카카오톡 인증받기 ");
	}
	//private 메소드
	private int privateM(int i) {
		return i+10;
		
		}
	}

