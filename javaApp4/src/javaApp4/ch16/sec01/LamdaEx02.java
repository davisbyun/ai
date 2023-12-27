package javaApp4.ch16.sec01;

public class LamdaEx02 {

	public static void main(String[] args) {
		//"����" ---> ������б� "��õ" =--> ��õ���б�

		//Colleage<String> s1 = ( name ) -> {return name + "���б�"; };
		//Colleage<String> s1 = ( name ) -> name + "���б�"; // ����
		Colleage<String> s1 = name -> name + "���б�"; // �Ű������� ���� 1���� ()�� ������ �� ����
		System.out.println(s1.cName("����"));
		System.out.println(s1.cName("��õ"));
		
		//��� �缼��, �� �缼��.
		Colleage<String> s2 = a -> a + "�缼��"; // �Ű������� ���� 1���� ()�� ������ �� ����
		System.out.println(s2.cName("���"));
		System.out.println(s2.cName("��"));
		
		//3000�� �̻��̸� 3000+10000, �̸��̸� 2000-5000
		
		Colleage<Integer> s3 = price -> {
			if( price >= 3000 ) return price + 10000;
			else return price - 5000; 
		};
		
		System.out.println(s3.cName(2000));   //cName�� �������̽��� �߻�޼ҵ�
		System.out.println(s3.cName(5000));
		
		
	}

}

interface Colleage <T> {
	T cName(T name);
	
}
