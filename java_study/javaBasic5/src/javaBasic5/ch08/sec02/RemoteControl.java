package javaBasic5.ch08.sec02;

//������ �߻�޼ҵ�� ����
public interface RemoteControl {

	int MAX_VOLUME = 10; // <-- �����,  final static �������̽��� ����ۿ� �������Ƿ� ��������
	int MIN_VOLUNE = 0;
	
	//�߻� abstract�� ���� ����
	void turnOn();
	void turnOff();
	void setVolume(int volum);
	//void qrRead();
	
	
	//���ϴ� �ڹٰ� ���� �� �Ǹ鼭 �߰��� �޼ҵ��
	//������ �߻�޼��带 �����ϸ� ���� �ڽĿ��� ������ ���� ������ ������ 
	//����Ʈ �޼ҵ� 
	default void defaultM() {
		int sum =0;
		System.out.println("QR�ڵ� �Է� �ޱ� ");
		for(int i = 0; i<10; i++) {
			sum+=privateM(i);
	}
		System.out.println(sum);
	}
	//���� �޼ҵ�
	static void staticM() {
		System.out.println("īī���� �����ޱ� ");
	}
	//private �޼ҵ�
	private int privateM(int i) {
		return i+10;
		
		}
	}

