package javaBasic3;

public class Ŭ�������� {

	public static void main(String[] args) {
		
		//��ü�������� ���� ���� �־��ֱ� 
		Student st1 = new Student("230101", "ȫ�浿", "AI", 100, "010-123-1234" );

		Teacher t1 = new Teacher("A32", "������", "�İ�", 1000000, "����", 20);
		
		// "230101" ����ϱ�
		System.out.println( st1.get�й�() );
		//"AI"
		System.out.println( st1.get����() );
		//"������"
		System.out.println( t1.get�̸�() );
		//"����"
		System.out.println( t1.get����() );
		//  100
		System.out.println( st1.get����() );
		// 20
		System.out.println( t1.get�ü�() );
		
		//�ʿ��� ������ �ֱ�
        //�� ��ü �����ϱ�
		Student st2 = new Student();
		Teacher tc2 = new Teacher();
		
		//�� �ֱ�
		st2.set�й�("2201");
		st2.set�̸�("�̼���");
		st2.set�а�("�濵�а�");
		st2.set����(85);
		st2.set��ȭ��ȣ("010-234-2345");
		
		tc2.set�ڵ�("B101");
		tc2.set�̸�("����");
		tc2.set����("�ǾƳ�");
		tc2.set�޿�(2000000);
		tc2.set����("�ð�����");
		tc2.set�ü�(30);
		
		System.out.println( st2.get�й�() + " " + st2.get�̸�() + " " +st2.get�а�());
		
		//�����ڷ� ���� �ֱ� 
		�ڵ����Ǹ���Ȳ car1 = new �ڵ����Ǹ���Ȳ("��Ÿ��", 350000000, 15000000, 20000000, 36, 555555);
		
		//�� ��ü�� �����ϱ�
		�ڵ����Ǹ���Ȳ car2 = new �ڵ����Ǹ���Ȳ();
		
		//��ü�� ���� �־��ֱ� 
		car2.set������("�ڶ���");
		car2.set�����Ѿ�(24000000);
		car2.set�ε���(5000000);
		car2.set�Һο���(19000000);
		car2.set��Ȳ�Ⱓ(24);
		car2.set�����Ա�(791666);
		
		//����ϱ�
		System.out.println("      �ڵ��� �Ǹ� ��Ȳ ");
		System.out.println();
		System.out.println("������  �����Ѿ�  �ε���  �Һο���  ��ȯ�Ⱓ  �����Ա�");
		System.out.println(car1.get������() + " " + car1.get�����Ѿ�() + " " + car1.get�ε���() + " " + car1.get�Һο���() + " " + car1.get��Ȳ�Ⱓ() + " " + car1.get�����Ա�());
		System.out.println(car2.get������() + " " + car2.get�����Ѿ�() + " " + car2.get�ε���() + " " + car2.get�Һο���() + " " + car2.get��Ȳ�Ⱓ() + " " + car2.get�����Ա�());
		
		System.out.println("���� �Ѿ��� �հ� " + (  car1.get�����Ѿ�() +  car2.get�����Ѿ�()  )    );
        System.out.println("�����Ա��� �Ѿ��� " + ( car1.get�����Ա�() + car2.get�����Ա�()     )     );
		
        // ��Ÿ�а� �����Ѿ� 40,0000,000���� ������ �ƴٸ�
        car1.set�����Ѿ�(40000000);
        System.out.println(car1.get������() + " " + car1.get�����Ѿ�() + " " + car1.get�ε���() + " " + car1.get�Һο���() + " " + car1.get��Ȳ�Ⱓ() + " " + car1.get�����Ա�());
	}

}