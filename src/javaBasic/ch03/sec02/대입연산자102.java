package javaBasic.ch03.sec02;

public class ���Կ�����102 {

	public static void main(String[] args) {

		int count = 100;
		count += 10; // = count = count +10;
		
		count -= 20; //count = count -20;
		
		//������ ���Կ����ڷ� ���� ������.
		
		count *= 5; //count = count * 5;
		
		count /= 10;//count = count /10;
		
		count %= 5; //boolean b1 = true;
		
		//b1 &= false; //b1 = b1 && false;
		
		//b1 |= true;//b2 = b2 || true;
		
		
		//���׿����� = ���ǿ�����
		//���� ���ǽ� ? ���̸� : �����̸�
		
		int score = 85;
		//90�� �̻��̸� ���л�, �ƴϸ� �����л����� ����ϱ�
		
		String result = score >= 90 ? "���л�" :"�����л�";   //����=? ������ ���̸� ���л� �����̸� �����л�
		System.out.println(result);
		
		//����� 85���� ũ�� �հ谡 1400�̻��̸� "���" �ƴϸ� "����"��� ����� �ֱ�
		double aver = 89;
		int sum = 2000;
		System.out.println((aver > 85.8 && sum >= 1400) ? "���" : "����");
		
		//�̸��� "�����"�̰ų� "�̼���"�̰ų� "�ּ���"�̸� "ģ����! �ȳ�"�̶�� ��� �ƴϸ� "�ȳ��ϼ���"
		
		String name = "������";
		result = (name == "�����" || name == "�̼���" || name == "�ּ���" ) ? "ģ����! �ȳ�" : "�ȳ��ϼ���";
		System.out.println(result);
		
		
		
		
	}

}
