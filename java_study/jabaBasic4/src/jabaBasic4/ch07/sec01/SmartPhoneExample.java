package jabaBasic4.ch07.sec01;

public class SmartPhoneExample {

	public static void main(String[] args) {

		Phone p = new Phone();
		p.bell();
		p.sendVoice("잘잤어!");
		p.receiveVoice("잘잤어. 너도 잘잤어?");
		
		SmartPhone sp = new SmartPhone();
		sp.sendVoice("오늘 뭐할 거야?");
		sp.receiveVoice("오늘은 공부할거야");
		
		sp.hanUp();
		
		SmartPhone sp2 = SmartPhone("아이폰", "흰색");
		System.out.println(sp2.model);
		
		sp2.setWifi(true);
		
		if(sp.wifi) {
			System.out.println("와이파이가 됩니다.");
		}else {
			System.out.println("와이파이가 안됩니다.");
		}
		System.out.println(sp2.model + "은 와이파이가 됩니다.");
		
		//흰색 핸드폰은 와이파이가 안됩니다. 
		System.out.println(sp2.color + "은 와이파이가 안됩니다.");
		
		//아이폰은 흰색이고 벨이 울립니다.
		
		System.out.println(sp2.model +"은"+ sp2.color +"이고" );
		
		//아이폰의 메시지가 왔습니다. "자기:핸드폰 샀어? //
		
		
		//부모 클래스에서 wifi 필드(자식의 필드) 사용하기
		/*
		부모 클래스에서는 자식맴버를 사용할 수 없다.
		p.wifi=true;
		p.setwifi(true);
		p.internet();
		*/
		
		
		
		
		
		
		
	}

}
