package javaBasic3;

public class 클래스개념 {

	public static void main(String[] args) {
//		Student st1 = new Student("230101", "홍길동", "AI", 100, "010-123-1234");
//		Teacher t1 = new Teacher("A32", "정현희", "컴공", 1000000, "전임", 20);
//		System.out.println(st1.get학번());
//		System.out.println(t1.get코드());
//		System.out.println(st1.get학과());
//		System.out.println(t1.get이름());
//		System.out.println(t1.get구분());
//		System.out.println(st1.get점수());
//		System.out.println(t1.get시수());
//		Student st2 = new Student();
//		Teacher tc2 = new Teacher();
//		st2.set학번("2201");
//		st2.set이름("이순신");
//		st2.set학과("경영학과");
//		st2.set점수(85);
//		st2.set전화번호("010-234-2345");
//		
//		tc2.set코드("B101");
//		tc2.set이름("박희연");
//		tc2.set전공("피아노");
//		tc2.set급여(2000000);
//		tc2.set구분("시간강사");
//		tc2.set시수(30);
//		
//		System.out.println(st2.get학번());
//		System.out.println(tc2.get코드());
		
		자동차판매현황 car = new 자동차판매현황("싼타페", 15000000, 20000000, 36);
		car.setPrice(25000000);
		자동차판매현황 car2 = new 자동차판매현황("코란도", 5000000, 19000000, 24);
		
//		System.out.println(car.getTotal());
//		System.out.println(car.getMonthly());
//		System.out.println(car2.getName());
		System.out.println(car.getName() + " " + car.getTotal() + " " + car.getDelivery() + " " + car.getPrice() + " " + car.getMonths() + " " + car.getMonthly() );
//		System.out.println(car.getTotal()+car2.getTotal());
		System.out.println(car.getTotal());
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
