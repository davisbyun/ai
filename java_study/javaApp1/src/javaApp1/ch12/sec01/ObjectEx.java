package javaApp1.ch12.sec01;

public class ObjectEx extends Object {

	public static void main(String[] args) {
		//Object의 메소드는 모든 클래스들이 다 쓸 수 있다. 재정의할 수 있다.
		
		Member obj1 = new Member("blue");
		Member obj2 = new Member("blue");
		Member obj3 = new Member("red");
		
		//obj1, obj2 주소만 비교
		
		if (obj1==obj2) {
			System.out.println("같다.");
			
		}else {
			System.out.println("다르다.");
		}
		
		//obj1의 주소의 값과 obj2의 주소의 값이 같은지 비교
		
		if (obj1.equals(obj2)) {
			System.out.println("같다.");
			
		}else {
			System.out.println("다르다.");
		
		if (obj1.equals(obj3)) {
				System.out.println("같다.");
				
		}else {
				System.out.println("다르다.");	
			
		}
	}

}

class Member {
	public String id ;
	public String pwd ;
	public String name ;
	
	//id가 같고 pwd가 같으면 같은 사람 할 것이다.
	
	public Member(String id) {
		this.id = id;
		equals(id);
		
	}		
}	
		
	}
