package javaBasic3.ch06.sec10;

public class CarExample {

	public static void main(String[] args) {

		Car myCar2 = new Car();
			
		System.out.println("ȸ��� :" + myCar2.company);    //���� �ʱ�ġ�� �ڵ� ���� - null
		System.out.println("�𵨸� :" + myCar2.model);   //���� �ʱ�ġ�� �ڵ� ���� - false
		System.out.println("���� :" + myCar2.color);   //���� �ʱ�ġ�� �ڵ� ���� - 0
		System.out.println("�ְ�ӵ� :" + myCar2.maxSpeed);
		System.out.println("����ӵ� :" + myCar2.speed);
		
		myCar2.speed =60;
		System.out.println("������ �ӵ�");
		
		//�����ڷ� �ʵ忡 ���� �ֱ� 
		Car sCar = new Car("�Ｚ�ڵ���", "SM5", "Ⱥ��", 370, 0);
		
		//�ʵ庯��
		sCar.speed = 100;
		
		//Car carA = new Car();
		//System.out.println("ȸ��� :" + CarA.company);    //���� �ʱ�ġ�� �ڵ� ���� - null
		//System.out.println("�𵨸� :" + CarA.model);   //���� �ʱ�ġ�� �ڵ� ���� - false
		//System.out.println("���� :" + CarA.color);   //���� �ʱ�ġ�� �ڵ� ���� - 0
		//System.out.println("�ְ�ӵ� :" + CarA.maxSpeed);
		//System.out.println("����ӵ� :" + CarA.speed);
		
		Car car3 = new Car();
		car3.setCompany("�����ڵ���");
		car3.setModel("BMW");
		car3.setColor(null);
		
		
		System.out.println(car3.getCompany());
		System.out.println(car3.getModel());
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
