package javaBasic3.ch06.sec10;

public class CarExample {

	public static void main(String[] args) {

		Car myCar2 = new Car();
			
		System.out.println("회사명 :" + myCar2.company);    //힙은 초기치를 자동 세팅 - null
		System.out.println("모델명 :" + myCar2.model);   //힙은 초기치를 자동 세팅 - false
		System.out.println("색깔 :" + myCar2.color);   //힙은 초기치를 자동 세팅 - 0
		System.out.println("최고속도 :" + myCar2.maxSpeed);
		System.out.println("현재속도 :" + myCar2.speed);
		
		myCar2.speed =60;
		System.out.println("수정된 속도");
		
		//생성자로 필드에 값을 넣기 
		Car sCar = new Car("삼성자동자", "SM5", "횐색", 370, 0);
		
		//필드변경
		sCar.speed = 100;
		
		//Car carA = new Car();
		//System.out.println("회사명 :" + CarA.company);    //힙은 초기치를 자동 세팅 - null
		//System.out.println("모델명 :" + CarA.model);   //힙은 초기치를 자동 세팅 - false
		//System.out.println("색깔 :" + CarA.color);   //힙은 초기치를 자동 세팅 - 0
		//System.out.println("최고속도 :" + CarA.maxSpeed);
		//System.out.println("현재속도 :" + CarA.speed);
		
		Car car3 = new Car();
		car3.setCompany("독일자동차");
		car3.setModel("BMW");
		car3.setColor(null);
		
		
		System.out.println(car3.getCompany());
		System.out.println(car3.getModel());
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
