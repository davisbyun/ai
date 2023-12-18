package javaBasic6.ch09.sec06;

public class Home {

	private RemoteControl rc = new RemoteControl() {
	
		@Override
		public void turnOff() {
			System.out.println("TV를 켭니다.");
		}

		@Override
		public void turnOn() {
		}
	};
		
		public void use1() {
			
			rc.turnOn();
			rc.turnOff();
		}
		
		
		public void turnOn() {
			System.out.println("TV를 끕니다.");
		 	}
			
		
		//메소드(로컬 변수 이용)
		
		public void use2() {
			
			RemoteControl rc = new RemoteControl() {
				
				@Override
				public void turnOn() {
					System.out.println("에어컨을 켭니다.");
				}
				
				@Override
				public void turnOff() {
					System.out.println("에어컨을 끕니다.");
				}
			};
			rc.turnOn();
			rc.turnOff();
					
		}

		public void use3(RemoteControl rc) {
			rc.turnOn();
			rc.turnOff();
		}
	}	
	

		
	

