package javaBasic7.ch11.sec02;

public class ExceptionEx2Ex {

	public static void main(String[] args) {

		try {
			A a = new A();
			a.a1(); 
		} catch(ArithmeticException e) {
			System.out.println(e.getMessage() + "�и� 0 ����");
		} catch(ArrayIndexOutOfBoundsException e) {
			System.out.println(e.getMessage() + "�迭�� �ε��� ����");
		} catch(NullPointerException e) {
			System.out.println(e.getMessage() + "������Ʈ ����.");
		} finally {
			System.out.println("DB�ݱ�");
			System.out.println("�α׿����ϱ�");
		}
	}
}

class A {
	void a1() throws ArithmeticException, ArrayIndexOutOfBoundsException, NullPointerException {
		a2();
	}
	void a2() throws ArithmeticException, ArrayIndexOutOfBoundsException, NullPointerException {
		a3();
		printlength("java");
		printlength(null);
	}
	static void printlength(String data) {
		int result = data.length();
		System.out.println("���ڼ���" + result);
	}

	void a3() throws ArithmeticException, ArrayIndexOutOfBoundsException {
		a4();
		double[] dArr = {1.1, 2.2, 3.3};
		System.out.println(dArr[2]); //���ܹ߻�
	}	
	void a4() throws ArithmeticException { //�ڱ⸦ ȣ���� ������ ���ܸ� ���� ȣ��������...
		int a = 10;
		a = a / 2; //���ܹ߻�
		System.out.println(a);
	}	
}