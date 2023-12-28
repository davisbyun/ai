package javaApp4.ch16.sec03;

public class LamdaEx04 {

   public static void main(String[] args) {
      // 706 �޼ҵ� ����
      Person person = new Person();
      //���2 �͸�����ü �ڵ� 
//      Calcuable calcuable = new Calcuable() {
//         
//         @Override
//         public double calc(double x, double y) {
//            Computer.staticMethod(x, y);
//            return 0;
//         }
//      };
      // ���3 ���ٽ����� ���� 
      
      // Calcuable calcuable=(double x, double y)->{   Computer.staticMethod(x, y); return 0; };
      // Calcuable calcuable=(x,  y)->Computer.staticMethod(x, y);
   
      // ���4 �޼ҵ� ����
      Calcuable calcuable= Computer::staticMethod;
   //  �������̽�    ����     = Ŭ������::Ŭ�����ȿ� �ִ� �޼ҵ��
   //  �������̽��� �߻�޼ҵ�� �Է��Ͽ� Ŭ�����ȿ� �ִ� �޼ҵ带 ����(���) ����ض�    
      person.action(  calcuable );
      
      Computer computer = new Computer();
      // ���2 �͸� ���� ��ü - ���� computer.instanceMethod() ȣ���϶� 
//      Calcuable calcuable1 = new Calcuable() {
//         
//         @Override
//         public double calc(double x, double y) {
//            return computer.instanceMethod(x, y); //���� computer.instanceMethod() ȣ���϶� 
//         }
//      };
      // ���2 ���ٽ�
      // Calcuable calcuable1 = (double x, double y)-> { return computer.instanceMethod(x, y);  };
      // Calcuable calcuable1 = ( x,  y) ->  computer.instanceMethod(x, y); 
      // x, y ���� ���� ȭ��ǥ �ڿ� ������ ����ȴ�
      // ���3 �޼ҵ� ����
      Calcuable calcuable1 = computer::instanceMethod;
      
      person.action(  calcuable1 );
   }

}
// @ ������̼� �ٷ� �Ʒ��� �ִ� ��ü�� �Ӽ��� �����ϴ� �� 
@FunctionalInterface
interface Calcuable {
   double calc( double x, double y); //�߻�޼ҵ�
}

class Person {
   public void action(Calcuable calcuable) {
      double result = calcuable.calc(10, 4);
      System.out.println("��� : " + result );
   }
}
class Computer{
   public static double staticMethod(double x, double y) {
      return x + y;
   }
   public double instanceMethod( double x, double y) {
      return x * y ;
   }
}


/*
package javaApp4.ch16.sec03;

public class LamdaEx04 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Person person = new Person();
		//���2 �͸��� ��ü ũ��
		Calcuable calcuable = new Calcuable() {  //Calcuable�� �������̽� �͸�����ü
			
			@Override
			public double clac(double x, double y) {
				Computer.staticMethod(x, y);   //static Ŭ������ Ŭ������.�޼ҵ�� �ҷ���
				return 0;
			}
		};
		//���3 ���ٽ����� ����
		//Calcuable calcuable = (double x, double y) -> { Computer.staticMethod(x, y); return 0;}
		//Calcuable calcuable = (x, y) -> Computer.staticMethod(x, y);
		//���4 �޼ҵ� ����
		Calcuable calcuable = computer::staticMethod;
		//�������̽��� ������      Ŭ������		Ŭ���� �ȿ� �ִ� �޼ҵ��
		//�������̽��� �߻� �޼ҵ�� �Է��Ͽ� Ŭ���� �ȿ� �ִ� �޼ҵ带 ����(���) ����϶�.
		person.action(calcuable);
		
		
		Computer computer = new Computer();
		//���2 �͸� ���� ��ü - 
//		Calcuable calcuable1 = new Calcuable() {
//			
//			@Override
//			public double clac(double x, double y) {
//				return computer.instanceMethod(x, y); 
//				
//			}
//		};				
		//���2 ���ٽ�
		//Calcuable calcuable1 = (double x, double y) -> { return computer.instanceMethod(x, y);} ;
		//Calcuable calcuable1 = ( x, y) ->computer.instanceMethod(x, y);
		//���3 �޼ҵ� ����
		Calcuable calcuable1 = computer::instanceMethod;
		
		person.action(calcuable1);
		
		
	}

}
//@������̼� �ٷ� �Ʒ��� �ִ� ��ü�� �Ӽ��� �����ϴ� ��
@FunctionalInterface
interface Calcuable {
	double clac(double x, double y); //�߻�޼ҵ�
}

class Person {
	public void action(Calcuable calcuable ) {
		double result = calcuable.clac(10, 4);
		System.out.println("��� : " + result );
		
	}
}

class Computer {
	public static double staticMethod(double x, double y) {
	return x + y;
	}

	public double instanceMethod(double x, double y) {
	return x * y;	
	}
}
*/


