package javaApp5.ch17.sec02;

import java.util.ArrayList;
import java.util.List;

public class StreamEx02 {

	public static void main(String[] args) {
		// 목표 : 중간 스트림 처리하는 방법 익히기
		//스트림처리 순서 : 스트림 컬렉션 또는 배열 --> 오리지널스트림 --> 중간단계(필터, 매핑) --> 최종처리 (중간단계는 생략가능)
		
//		List<String> list = new ArrayList<String>(); //컬렉션
//		list.add("사과");
//		list.add("배");
//		list.add("바나나");
//		list.add("사과");
//		list.add("사과");
//		
//		list.stream()
//			.filter(t-> ( t.equals("사과")) 
//			.forEach(p-> System.out.println(p));
//		
//			//중복 제거
//		list.stream()
//			.filter(t-> ( t.equals("사과")) 
//			.distinct()		
//			.forEach(p->System.out.println((p+"~~"));	
			
		//매핑 : 다른 것으로 바꾸기 	
		List<Student> stlist = new ArrayList<Student>();
		stlist.add( new Student ("홍길동1", 85, "010-123-1234", 0.5)   );
		stlist.add( new Student ("홍길동2", 92, "010-123-1235", 1.2)   );
		stlist.add( new Student ("홍길동3", 87, "010-123-1236", 0.8)   );
		stlist.add( new Student ("홍길동4", 95, "010-123-1237", 0.4)   );
		
		//스트림 만들기 주소를 넣어서 점수 출력하기
		stlist.stream()
			  .mapToInt( s->s.getScore() )
			  .forEach(p-> System.out.println(p));
		
		//스트림 만들기 주소를 넣어서 전화번호를 출력하기
				stlist.stream()
					  .map ( t-> t.getPhone() )
					  .forEach(p-> System.out.println(p));
		
		//스트림 만들기 주소를 넣어서 이름을 출력하기
		stlist.stream()
			  .map ( t-> t.getName() )
			  .forEach(p-> System.out.println(p));
		
		//스트림 만들기 주소를 넣어서 시력을 출력하기
				stlist.stream()
					  .mapToDouble( t-> t.getSight() )
					  .forEach(p-> System.out.println(p));
				
			
			
	}

}
class Student {
	
	private String name;
	private int score;
	private String phone;
	private double sight;
	public Student(String name, int score, String phone, double sight) {
		super();
		this.name = name;
		this.score = score;
		this.phone = phone;
		this.sight = sight;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public double getSight() {
		return sight;
	}
	public void setSight(double sight) {
		this.sight = sight;
	}
	
	
}