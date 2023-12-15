package javaBasic5.ch08.sec04;

//6번문제
public class 확인문제9장6번 {

	static void printsound(Soundable soundable) {
		System.out.println(soundable.sound());
	}
	public static void main(String[] args) {
		Remocon r = new TV();
		r.powerOn();
		
		printsound(new Cat());
		printsound(new Dog());
	
	}

}

interface Soundable{
	public String sound();
}



interface Remocon {
	public void powerOn(); //추상메소드
	
}

class Cat implements Soundable {

	@Override
	public String sound() {
		return "야옹";
	}
	
}

class Dog implements Soundable {

	@Override
	public String sound() {
		return "멍멍";
	}
	
}
class TV implements Remocon {

	@Override
	public void powerOn() {
		System.out.println("TV를 켰습니다.");
	}
	
	
	
}
