package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx2 {

	public static void main(String[] args) {
		// String ��ü set �ֱ�
		// ���� ���� : ��� �� �� �ٳ��� ��� ��      �츮�� �Ȱ� �ִ� ���� ������ ����?
		//set ��ҷ� �ֱ�
		// set�� ���� Ŭ���� HashSet, TreeSet
		Set<String> set = new HashSet<String>();  // ctrl + shift + o - import �ڵ����� ��Ű�� 
        // set�ȿ� ��� �ֱ�
		set.add("���");
		set.add("��");
		set.add("��");
		set.add("��");
		set.add("�ٳ���");
		set.add("���");
		
		//set�ȿ� ��� ���� ���ϱ�, �츮�� �Ȱ� �ִ� ���� ������ ������?
		System.out.println( set.size() );
		
		//"�޷�" �Ⱦƿ�? contains()
		System.out.println( set.contains("�޷�") );
		
		// set�ȿ� �ִ� ��� ����ϱ�
		Iterator<String> it =set.iterator();
		while( it.hasNext() ) {
		    System.out.println( it.next() ); //������ �����ϰ� 
		}
		
		// set�ȿ� �ִ� ��� ��� �����ϱ�
		set.clear();
		
		System.out.println( set.size() );
		
		
	}

}

//package javaApp2.ch15.sec01;
//
//import java.util.HashSet;
//import java.util.Iterator;
//import java.util.Set;
//
//public class SetEx2 {
//
//	public static void main(String[] args) {
//		// String ��ü set �ֱ�
//		// ���� ���� : ��� �� �� �� �ٳ��� ��� �� - �츮�� �Ȱ� �ִ� ���� ������ ����?
//		// set ��� �α�
//		// set�� ���� Ŭ���� HashSet, TreeSet 
//		Set<String> set = new HashSet<String>(); //ctrl+shift+o(���亪��)
//		
//		set.add("���");
//		set.add("��");
//		set.add("��");
//		set.add("��");
//		set.add("�ٳ���");
//		set.add("���");
//		
//		//set �ȿ� ��� ���� ���ϱ�, �츮�� �Ȱ� �ִ� ���� ���� ������?  //�ߺ� �ڷḦ ������ �b���.
//		System.out.println(set.size());
//		
//		
//		//"�޷�" �Ⱦƿ�? contains()
//		System.out.println(set.contains("�޷�"));
//		
//		//set �ȿ� �ִ� �� ��� ����ϱ�
//		Iterator<String> it = set.iterator();
//		while(it.hasNext()) {
//			System.out.println(it.next());
//		}
//		
//		//set �ȿ� �ִ� ��� ��Ҹ� ����
//		set.clear();
//		System.out.println(set.size());
//		
//		
//		
//	}
//
//}
