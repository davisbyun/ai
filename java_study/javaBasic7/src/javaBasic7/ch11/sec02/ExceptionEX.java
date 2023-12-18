package javaBasic7.ch11.sec02;

public class ExceptionEX {

	public static void printlength(String data) {
		int result = data.length();
		System.out.println("���ڼ���" + result);
	}
	
	
	public static void main(String[] args) {
		
		/*���� {try~catch
		try { 
			//���� �߻��� �� ���� �ڵ� ���� ���Ѵ�.
		int a = 10;
		a = a/5;
		System.out.println(a);
		
		} catch(���ܸ� ���� ) {
			//���� ���ܰ� �߻����� �� ó���ϴ� �ڵ� �ۼ�
		}
		*/
	try {  //������ �������̸� ���������� ó�� ���� ���� ��ҿ��� ���߰� �� �̻� ...�Ʒ��� ������� �ʴ´�.
		int a = 10;
		a = a/2;
		int[] iArr = {1,2,3};
		System.out.println(iArr[2]);
		
		printlength("this is java");
		printlength("ab"); //���� �ڷᰡ ����.
		
		Class.forName("java.lang.String");
		
		System.out.println(a);
		} catch(ArithmeticException e) {
			System.out.println("�и� 0�̸� �ȵȴ�.");
		} catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("�迭�� �ε��� ������ ������ϴ�.");
		} catch (NullPointerException e) { 
			e.printStackTrace(); //������ ã�ư� �ִ� ��
			System.out.println("���̱� ������ ����� �� �����ϴ�.");
		} catch (ClassNotFoundException e) {
			System.out.println("Ŭ�������� �����ϴ�.");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("��� ������ �θ� Ŭ����");
		} finally {
			// ���� ��� ���� ������ (��, �ʼ�) ó���ؾ� ��
			System.out.println("DB�ݱ�");
			System.out.println("�α׿����ϱ�");
		}
	}
}
