package javaBasic6.ch09.sec02;

public class SAExample {

	public static void main(String[] args) {
		AA a1 = new AA();
		System.out.println(  a1.aa );
		
		System.out.println(  AA.sa );
		System.out.println( AA.BB.bb  );
		
		//BB 클래스 new 해라
		AA.BB  aabb = new AA.BB();
		System.out.println( aabb.ibb );
		aabb.bbM();
		aabb.ibbM();
	}

}

class AA{
	
	int aa = 20; //new 사용할 수 있는 메소드
	void aaM() {
		
	}
	static int sa=10;
	static void saM() {
		
	}
	
	
	static class BB{
		
		static int bb=20;
		static void sbbM() {
		    
		}
		
		int ibb=30;
		
		void ibbM() {
			ibb = ibb + 40;
			bbM();
		}
		
		void bbM() {
			// aa = aa + 20; //외부 클래스의 인스턴스 멤버 못씀
			// aaM();
			AA.sa = 100;
			AA.saM();
		}
		
	}
}