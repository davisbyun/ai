package javaBasic6.ch09.sec05;

public class Any2Ex {

	public static void main(String[] args) {
		 CImpl ci = new CImpl();
		 ci.cM();
		 
		 C ci2 = new CImpl(); //������
		 ci2.cM();

		 //�͸�����ü 
		 C ci3 = new C() {
							@Override
							public void cM() {
								System.out.println("�͸���Ŭ������ �޼ҵ�");
							}
							 
						 };//�������̽��� new�� �� ����. new ��ü() { ���� @Override  }; -�͸�ü ����
		ci3.cM();				 
	}

}

interface C{
	abstract void cM(); //�߻�޼ҵ� 
}

class CImpl implements C {

	@Override
	public void cM() {
		System.out.println(" ����Ŭ���� (�ڽ�) �޼ҵ�  ");
		
	}
	
}


//package javaBasic6.ch09.sec05;
//
//public class Any2Ex {
//
//	public static void main(String[] args) {
//
//		CImpl ci = new CImpl();
//		ci.cM();
//		
//		C ci2 = new CImpl();
//		ci2.cM();
//		
//		//�͸�����ü {}; ���� = �͸�Ŭ���� - �͸� Ŭ���� �ڿ��� �����ݷ�(;)�� ����
//		C ci3 = new C() {
//			
//						@Override
//						public void cM() {
//							System.out.println("�͸� ����Ŭ������ �޼ҵ�");
//						}
//						
//					    }; //�������̽��� new�� �� ����. new ��üȭ(){ ���� }; ������ ��� �͸� �ڽ� ��ü��. �������̽��� new�� ������ �ִٸ� �͸� ����Ŭ�����ΰ��� �ǽ��� ��.
//		ci3.cM();
//	}
//
//}
//
//interface C {
//	abstract void cM(); //�߻�޼ҵ�
//	
//}
//
//class CIpml implements C {
//
//	@Override
//	public void cM() {
//	}
//
//	public CIpml() {
//	  System.out.println("����Ŭ����(�ڽ�) �޼ҵ�" );
//	}
//
//	
//}