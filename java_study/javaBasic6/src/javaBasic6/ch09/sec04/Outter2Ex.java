package javaBasic6.ch09.sec04;

public class Outter2Ex {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}

class A {
	
	int ia = 10;
	void iaM() {};
	static int sia = 20;
	static void siaM() { };
	
	static class B{
		int ib=20;
		void ibM() {
			//ia = ia +20;
			//iaM();
			A.sia = A.sia + 20;
			A.siaM();
		};
		static int sib=20;
		static void sibM() {
			//ia = ia +20;
			//iaM();
			A.sia = A.sia + 20;
			A.siaM();
		};
	}
}



//package javaBasic6.ch09.sec04;
//
//public class Oitter2Ex {
//
//	public static void main(String[] args) {
//
//	}
//
//}
//
//class A{
//	
//	int ia = 10;
//	void iaM() { };
//	static int sia = 20;
//	static void siaM() {};
//	
//		
//	
//	static class B{
//		//���� �ɹ�Ŭ������ �ܺ� AŬ������ �ν��Ͻ� �ɹ� ������
//		int ib = 20;
//		void ibM() {
//			//ia = ia + 20;
//			//iaM();
//			A.sia = A.sia+20;
//			A.siaM();
//		};
//		static int sib = 20;
//		static void sibM() {};
//			//ia = ia + 20;
//			//iaM();
//			A.sia = A.sia+20;
//			A.siaM();
//	}
//}