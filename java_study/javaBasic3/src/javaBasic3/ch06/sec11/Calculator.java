package javaBasic3.ch06.sec11;

public class Calculator {

	//�޼ҵ�� ����~ �Ѵ�. ���� 
	//���� [ ���������� ] ���� Ÿ��  �޼ҵ��([�Ű�����....]) {} 
	//    [���������� ]  ... ������
	
	void powerOn() {
		System.out.println("�������մϴ�");
	}
	void powerOfF() {
		System.out.println("������ ���ϴ�.");
	}
	
	int plus(int x, int y) {
		int result = x+y;   //result�� �����ֱ�� �� ��. �Ʒ��� result�� �ٸ� ����
		return result; //return�� �޼ҵ带 ȣ���� ���� ���� result ���� �ǵ��� �־��.
	}
	
	double divide(int x, int y) {
	double result = (double) x / (double) y;
	return result;
	
	
	}
	public int plus(int x, int y, int z) {
		int result = x+y+z;
		return result; 
	}
	
	//234 int sum(int ... 
}
