package javaBasic6.ch09.sec02;

public class SAExample {

	public static void main(String[] args) {
		
		AA a1= new AA();
		System.out.println(a1.aa);
		System.out.println(AA.sa);
		System.out.println(AA.BB.bb);
		
		//BB라는 클래스 new
		AA.BB aabb = new AA.BB();
		System.out.println(aabb.ibb);
		aabb.bbM();
		
	}

}


class AA {
	
	int aa = 20;
	void aaM() {
		
	}
	
	static int sa = 10;
	static void saM() {
		
	}
	
	static class BB{
		static int bb = 20;
		static void sbbM() {
		
			int ibb = 30;
		}
		
		void ibbM() {
			ibb = ibb +40;
			bbM();
		}
		
			//aa = aa+20;
			//aaM();
		
			void bbM() {
			AA.saM();
			AA.sa = 100;
		}
	
	}
}