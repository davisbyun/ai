package javaApp1.ch12.sec04;

public class WarpperEx {

	public static void main(String[] args) {
		//p524
		//�ڷ��� �⺻�� : byte, char, int, boolean, float, double, ������ : Ŭ������ ������, String
		//�⺻���� Ŭ������ �ƴϹǷ� �̸� ������� �޼ҵ尡 ����. �׷��� �⺻�� �ڷ����� Ŭ������ ����� �� �� �ִ�.(=����Ŭ���� Wrapper Class - �⺻�� ù�ڸ� �빮�ڷ� ǥ���� ����)
		//�ڽ� �⺻�� --> ��ü,  ��ڽ� ��ü -->�⺻��
		
		Integer a = 10;  //a��� ������ Ŭ������ ������ ������ ����
		Integer a1 = new Integer(10);
		String as = a.toString(0);  //���� 10��  ���� 10���� ����
		
		double da = a.doubleValue(); //���� 10�� �Ǽ��� 10.0���� ����
		System.out.println(da);
		System.out.println(a.MAX_VALUE); 
		System.out.println(a.MIN_VALUE);
		System.out.println(a.SIZE);
		
		//3.14 "3.14"
		//double���� �ִ밪
		
		//double���� �������?
		
		//10.1, 5.4 �ִ밪 ����ϱ�
		
		
		
		
		
		
	}

}
