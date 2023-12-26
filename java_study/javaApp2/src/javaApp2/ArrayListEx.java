package javaApp2;

import java.util.ArrayList;

public class ArrayListEx {

	public static void main(String[] args) {
		// ListƯ¡ ������ �ִ�. �ߺ����� �ִ�.
		int[] iarr = {1,2};
		for (int i : iarr) {
			System.out.println( i ); 
		}
		for ( int i=0; i< iarr.length; i++) {
			System.out.println( iarr[i] );
		}
        // 3, 4�߰��ϰ� �ʹ� -- �ȵȴ�.
		//{1,2,3,4}
		
		//List�� ����Ŭ������ ArraysList�� �̿�
		ArrayList<Integer> arrList =new ArrayList<Integer>();
		// <E> ���׸� �ڷ��� ���� �̸� �����ϴ� ��
		arrList.add(1);
		arrList.add(2);
		System.out.println( arrList.size()); // ArrayList�ȿ� ��� ��Ұ� �ִ����� ��ȯ
		// 3, 4 �߰��ϱ�
		arrList.add(3);
		arrList.add(4);
		// 0�� �ε����� -7�� �ֱ� 
		arrList.add(0, -7);
		// ��ü�� ����ϰ� �ʹ�. �ݺ��� ����ϰ� 
		for( int i=0; i< arrList.size(); i++) { // i= 0 1 2 3 4 
			System.out.println( arrList.get(i) ); // �ε�����ȣ�� �ִ� ��Ҹ� ����ϱ�
		}
		
		// ���ڿ��� ArrayList �ֱ�
		ArrayList<String> sArr = new ArrayList<String>();
		//��� �� �� �ٳ��� �Է�(����)�ϱ�
		sArr.add("���");
		sArr.add("��");
		sArr.add("��");
		sArr.add("�ٳ���");
		sArr.add("���");
		sArr.add("���");
		
		//�ְ� �ٳ��� ���̿� ���ξ��� �ֱ� 
		sArr.add(3, "���ξ���");
		//����� �� ���̿� �޷� �ֱ�
		sArr.add(1, "�޷�");
		
		//���� õ������ �����ϱ� 
		// ��Ʈ set()
		sArr.set(3, "õ����");		
		
		//�ٳ��� �����ϱ� remove()
		sArr.remove(5);
		sArr.remove("���ξ���");
				
		//��ü ����ϱ� 
		for( int i=0; i< sArr.size(); i++) {
			System.out.print(  sArr.get(i) + " " );
		}
		
		//���ξ����� �ֽ��ϱ�? contains()
		//��� �����ϴ�
		if ( sArr.contains("���ξ���") ) {
			System.out.println( "�ֽ��ϴ�.");
		}else {
			System.out.println("�����ϴ�.");
		}
		
		//����� �� �־��? &&
		if ( sArr.contains("���") &&  sArr.contains("��")   ) {
			System.out.println( "�ֽ��ϴ�");
		}else {
			System.out.println("�����ϴ�");
		}
		//���Կ� ������ ��� ������?
		//�迭����Ʈ�� ����ֳ���? isEmpty() 
		//���Կ� ������ ������ ��� ġ���ּ���.(�����)
		if ( !sArr.isEmpty()  ) {
			sArr.clear(); //��Ҹ� ��� �� �����
			System.out.println("���� ������ ��� ġ�����ϴ�. ");
		}
		//��ü ����ϱ� 
		for( int i=0; i< sArr.size(); i++) {
			System.out.print(  sArr.get(i) + " " );
		}
		
		
		
		
		
		
		
				
	}

}

//package javaApp2;
//
//import java.util.ArrayList;
//
//public class ArrayListEx {
//
//	public static void main(String[] args) {
//		// ListƯ¡ ������ �ִ�. �ߺ����� �ִ�.
//		int[] iarr = {1,2};
//		for (int i : iarr) {
//			System.out.println( i ); 
//		}
//		for ( int i=0; i< iarr.length; i++) {
//			System.out.println( iarr[i] );
//		}
//        // 3, 4�߰��ϰ� �ʹ� -- �ȵȴ�.
//		//{1,2,3,4}
//		
//		//List�� ����Ŭ������ ArraysList�� �̿�
//		ArrayList<Integer> arrList =new ArrayList<Integer>();
//		// <E> ���׸� �ڷ��� ���� �̸� �����ϴ� ��
//		arrList.add(1);
//		arrList.add(2);
//		System.out.println( arrList.size()); // ArrayList�ȿ� ��� ��Ұ� �ִ����� ��ȯ
//		// 3, 4 �߰��ϱ�
//		arrList.add(3);
//		arrList.add(4);
//		// 0�� �ε����� -7�� �ֱ� 
//		arrList.add(0, -7);
//		// ��ü�� ����ϰ� �ʹ�. �ݺ��� ����ϰ� 
//		for( int i=0; i< arrList.size(); i++) { // i= 0 1 2 3 4 
//			System.out.println( arrList.get(i) ); // �ε�����ȣ�� �ִ� ��Ҹ� ����ϱ�
//		}
//		
//		// ���ڿ��� ArrayList �ֱ�
//		ArrayList<String> sArr = new ArrayList<String>();
//		//��� �� �� �ٳ��� �Է�(����)�ϱ�
//		sArr.add("���");
//		sArr.add("��");
//		sArr.add("��");
//		sArr.add("�ٳ���");
//		sArr.add("���");
//		sArr.add("���");
//		
//		//�ְ� �ٳ��� ���̿� ���ξ��� �ֱ� 
//		sArr.add(3, "���ξ���");
//		//����� �� ���̿� �޷� �ֱ�
//		sArr.add(1, "�޷�");
//		
//		//���� õ������ �����ϱ� 
//		// ��Ʈ set()
//		sArr.set(3, "õ����");		
//		
//		//�ٳ��� �����ϱ� remove()
//		sArr.remove(5);
//		sArr.remove("���ξ���");
//				
//		//��ü ����ϱ� 
//		for( int i=0; i< sArr.size(); i++) {
//			System.out.print(  sArr.get(i) + " " );
//		}
//		
//		//���ξ����� �ֽ��ϱ�? contains()
//		//��� �����ϴ�
//		if ( sArr.contains("���ξ���") ) {
//			System.out.println( "�ֽ��ϴ�.");
//		}else {
//			System.out.println("�����ϴ�.");
//		}
//		
//		//����� �� �־��? &&
//		if ( sArr.contains("���") &&  sArr.contains("��")   ) {
//			System.out.println( "�ֽ��ϴ�");
//		}else {
//			System.out.println("�����ϴ�");
//		}
//		//���Կ� ������ ��� ������?
//		//�迭����Ʈ�� ����ֳ���? isEmpty() 
//		//���Կ� ������ ������ ��� ġ���ּ���.(�����)
//		if ( !sArr.isEmpty()  ) {
//			sArr.clear(); //��Ҹ� ��� �� �����
//			System.out.println("���� ������ ��� ġ�����ϴ�. ");
//		}
//		//��ü ����ϱ� 
//		for( int i=0; i< sArr.size(); i++) {
//			System.out.print(  sArr.get(i) + " " );
//		}
//		
//		
//		
//		
//		
//		
//		
//				
//	}
//
//}
//
////package javaApp2;
////
////import java.util.ArrayList;
////
////public class ArrayListEx {
////
////	public static void main(String[] args) {
////		//List�� Ư¡ : ������ �ִ�. �ߺ����� ����
////		int[] iarr = {1,2};
////		for(int i : iarr) {
////			System.out.println(i);
////		}
////		//3,4 �߰��ϰ� �ʹ�. -- �ȵȴ�.
////		//{1,2,3,4} 
////		
////		//List�� ���� Ŭ������ ArraysList�� �̿��ϸ� ����
////		
////		ArrayList<Integer> arrayList = new ArrayList<Integer>();
////		//<E>���׸� �ڷ�
////		arrayList.add(1);
////		arrayList.add(2);
////		System.out.println(arrayList.size()); //arrayList �ȿ� �� ���� ��Ұ� �ִ����� ��ȯ
////		
////		//3,4�� �߰��ϱ�
////		arrayList.add(3);
////		arrayList.add(4);
////		
////		//0�� �ε����� -7�� �ֱ�
////		arrayList.add(0, -7);
////		
////		//��ü ����ϱ�(�ݺ��� ���)
////		for(int i =0; i<arrayList.size(); i++) {   //i = 0,1,2,3,4
////			System.out.println(arrayList.get(i));  //get�� �ε��� ��ȣ�� �ִ� ��Ҹ� ������ִ� ���� -7,1,2,3,4 ��µ�
////		}
////			
////		//���ڿ��� ArrayList�� �ֱ�
////		ArrayList<String> sArr = new ArrayList<String>();
////		//���, ��, ��, �ٳ��� �Է��ϱ�(�����ϱ�)
////		sArr.add("���");
////		sArr.add("��");
////		sArr.add("��");
////		sArr.add("�ٳ���");
////		sArr.add("���");
////		sArr.add("���");
////		
////		//�ְ� �ٳ��� ���̿� ���ο��� �ֱ�
////		sArr.add(3, "���ο���");
////		
////		//����� �� ���̿� �޷� �ֱ�
////		sArr.add(1, "�޷�");
////		sArr.set(3, "õ����");  //3�� �ε����� õ�������� �ٲٱ�;
////		
////		sArr.remove(5); //5�� �ε����� �����Ͻÿ�.
////		sArr.remove("���ο���");
////		
////		//��ü ����ϱ�
////		for(int i = 0; i<sArr.size(); i++) {
////			System.out.println(sArr.get(i) + " ");
////							
////		}
////		//���ξ����� �ֽ��ϱ�?
////		//��� �����ϴ�.
////		if (sArr.contains("���ξ���" )) { 
////			System.out.println("��� �ֽ��ϴ�.");
////		}else {
////			System.out.println("��� �����ϴ�.");
////		}
////		
////		//��� �� �ֽ��ϱ�?
////		if (sArr.contains("���") && sArr.contains("��") ) {
////			System.out.println("��� �ֽ��ϴ�.");
////		}else {
////			System.out.println("��� �����ϴ�.");
////		}
////		//���Կ� ������ ��� ������. 
////		//�迭����Ʈ�� ����ֳ��� isEmpty()
////		//���Կ� ������ ������ ��� ġ���ּ��� �����
////		
////		if(!sArr.isEmpty()) {
////			sArr.clear();  //��Ҹ� ��� �����
////			System.out.println("������ ������ ��� ġ�����ϴ�. ");
////		}
////	}
////}
////
////
