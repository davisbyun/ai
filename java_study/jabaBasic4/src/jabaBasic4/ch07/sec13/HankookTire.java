package jabaBasic4.ch07.sec13;

//�ڽ�Ŭ���� = ����Ŭ���� = ���γ���(�ѱ�Ÿ�̾�)
public class HankookTire extends Tire {

	@Override
	public void roll() {
		super.roll();
		
		System.out.println("�ѱ�Ÿ�̾ �������ϴ�.");
		System.out.println("MySQL���α׷����� �����ͺ��̽��� �����մϴ�.");
	}
}
