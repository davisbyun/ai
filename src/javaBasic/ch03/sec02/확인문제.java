package javaBasic.ch03.sec02;

public class Ȯ�ι��� {

	public static void main(String[] args) {
		
		int x = 10;
		int y = 20;
		int z = (++x) + (y--);   //11 - 20 = 31 
		
		System.out.println(z);
		
		
		int score = 85;
		String result = (!(score>90)) ? "��" : "��";   //�� !����  !!����
		System.out.println(result);
		
		int pencils = 534;
		int student = 30;
		
		int penperstu = (pencils / student );
		System.out.println(penperstu);
		
		int penperstud = (pencils % student );
			System.out.println(penperstud);

		int value = 365;
		double r1 = value / 100;
		int r2 = (int)(r1);
		int r3 = r2* 100;
		
		System.out.println((int)(value/100.0)*100);
		
		//5�� ����
		
		int lengthTop = 5;
		int lengthBottom = 10;
		int height = 7;
		double area = (lengthTop + lengthBottom)*height/2.0;
		System.out.println(area);
		
		//p107 5�� ���� : 4
		
		// 6��
		int x1 = 10;
		int y1 = 5;
		
		System.out.println(  (x1>7) && (y1<=5) );   		//true && ture --> true
		System.out.println( (x%3 == 2) || (y%2) == 1    ); 	//false || true --> true
		
		//������ ������ ���� ù���ڴ� ������ �ҹ���
		//������ ������ ���� �ǹ��ִ� ����(�ܾ��)
		
		
		//7�� ����
		//NaN = Not a Number -->���ڰ� �Ƹ��� ���� ����
		
		double x2 = 5.0;
		double y2 = 0.0;
		double z2 = 5 % y2;
		
		if( Double.isNaN(z2)      ) {
			System.out.println("0.0���� ���� �� �����ϴ�.");
			}
		else {
			double result2 = z + 10;
			System.out.println("���" + result2);
		}
		
		
		
		
		
		
		
		
		
	}

}
