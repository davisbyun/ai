package jabaBasic4.ch07.sec01;

public class SmartPhoneExample {

	public static void main(String[] args) {

		Phone p = new Phone();
		p.bell();
		p.sendVoice("�����!");
		p.receiveVoice("�����. �ʵ� �����?");
		
		SmartPhone sp = new SmartPhone();
		sp.sendVoice("���� ���� �ž�?");
		sp.receiveVoice("������ �����Ұž�");
		
		sp.hanUp();
		
		SmartPhone sp2 = SmartPhone("������", "���");
		System.out.println(sp2.model);
		
		sp2.setWifi(true);
		
		if(sp.wifi) {
			System.out.println("�������̰� �˴ϴ�.");
		}else {
			System.out.println("�������̰� �ȵ˴ϴ�.");
		}
		System.out.println(sp2.model + "�� �������̰� �˴ϴ�.");
		
		//��� �ڵ����� �������̰� �ȵ˴ϴ�. 
		System.out.println(sp2.color + "�� �������̰� �ȵ˴ϴ�.");
		
		//�������� ����̰� ���� �︳�ϴ�.
		
		System.out.println(sp2.model +"��"+ sp2.color +"�̰�" );
		
		//�������� �޽����� �Խ��ϴ�. "�ڱ�:�ڵ��� ���? //
		
		
		//�θ� Ŭ�������� wifi �ʵ�(�ڽ��� �ʵ�) ����ϱ�
		/*
		�θ� Ŭ���������� �ڽĸɹ��� ����� �� ����.
		p.wifi=true;
		p.setwifi(true);
		p.internet();
		*/
		
		
		
		
		
		
		
	}

}
