package jabaBasic4.ch07.sec01;

public class SmartPhone extends Phone {

	public boolean wifi;

	public SmartPhone(boolean wifi) {
		super();
		this.wifi = wifi;
	}

	public SmartPhone(String model, String color) {
		this.model = model; //�θ��ʵ� �ȿ� �ִ´�.
		this.color = color; //
	}
	
	public SmartPhone() {
		// TODO Auto-generated constructor stub
	}
	
	public void setWifi(boolean wifi) {
		this.wifi = wifi;
	}
	
	public void internet() {
		System.out.println("���ͳ��� �����մϴ�.");
		
	}
	
}
