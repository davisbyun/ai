package javaApp1.ch12.sec01;

public class ObjectEx extends Object {

	public static void main(String[] args) {
		//Object�� �޼ҵ�� ��� Ŭ�������� �� �� �� �ִ�. �������� �� �ִ�.
		
		Member obj1 = new Member("blue");
		Member obj2 = new Member("blue");
		Member obj3 = new Member("red");
		
		//obj1, obj2 �ּҸ� ��
		
		if (obj1==obj2) {
			System.out.println("����.");
			
		}else {
			System.out.println("�ٸ���.");
		}
		
		//obj1�� �ּ��� ���� obj2�� �ּ��� ���� ������ ��
		
		if (obj1.equals(obj2)) {
			System.out.println("����.");
			
		}else {
			System.out.println("�ٸ���.");
		
		if (obj1.equals(obj3)) {
				System.out.println("����.");
				
		}else {
				System.out.println("�ٸ���.");	
			
		}
	}

}

class Member {
	public String id ;
	public String pwd ;
	public String name ;
	
	//id�� ���� pwd�� ������ ���� ��� �� ���̴�.
	
	public Member(String id) {
		this.id = id;
		equals(id);
		
	}		
}	
		
	}
