package jabaBasic4.ch07.sec15;
//p.326
public class PhoneExample {

	public static void main(String[] args) {
		
		Play play = new Play();
		SmartPhone s = new SmartPhone();
		play.playing(s);
		play.stop(s);
		
		Iphone iphone = new Iphone();
		play.playing(iphone);
		play.stop(iphone);
		
		
		// Phone phone = new Phone();  //추상클래스는 객체화 할 수 없다. 
		
		

	}

}
