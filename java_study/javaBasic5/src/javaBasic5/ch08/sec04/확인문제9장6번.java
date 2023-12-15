package javaBasic5.ch08.sec04;

//6������
public class Ȯ�ι���9��6�� {

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
	public void powerOn(); //�߻�޼ҵ�
	
}

class Cat implements Soundable {

	@Override
	public String sound() {
		return "�߿�";
	}
	
}

class Dog implements Soundable {

	@Override
	public String sound() {
		return "�۸�";
	}
	
}
class TV implements Remocon {

	@Override
	public void powerOn() {
		System.out.println("TV�� �׽��ϴ�.");
	}
	
	
	
}
