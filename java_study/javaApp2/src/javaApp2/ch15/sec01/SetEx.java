package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx {

	public static void main(String[] args) {
		//set Ư¡ : �ߺ��� ��Ҹ� �����Ѵ�. �ߺ� ���� ���� �ʴ´�.
		Set<Integer> set = new HashSet<Integer>();
		
		set.add(10);
		set.add(50);
		set.add(80);
		set.add(10);
		
		System.out.println(set.size());
		
		Iterator<Integer> it = set.iterator(); //�ݺ��ڸ� ����Ͽ� set.add �� ������ ���
		while (it.hasNext()) {	//������ ������ �ִ�.
		System.out.println(	it.next());  //���� ���� �ƹ����� ����� �� (������ ��� get�� ������. �׷��� �ݺ��� ���) 

		}
		
		//set �ȿ� 40�� �ֳ���? �ƴϿ�
		System.out.println( set.contains(40) ); 
		
		//set �ȿ� ��Ұ� ����ֳ���? �ƴϿ�
		System.out.println(set.isEmpty());
		System.out.println(set.remove(50)); // 
		
		it = set.iterator(); //�ݺ��ڸ� �ٽ� �����ؾ� 50�� ������ ������ ����� �� 
		while (it.hasNext()) {	//������ ������ �ִ�.
		System.out.println(	it.next());  //���� ���� �ƹ����� ����� �� (������ ��� get�� ������. �׷��� �ݺ��� ���) 
		}
		
		//set �ȿ� ��� 100�� �߰��ϱ�
		System.out.println(set.add(100));
		//set �ȿ� ��� 80�� �����ϱ�
		System.out.println(set.remove(80));
		
		it = set.iterator();
		while (it.hasNext()) {	//������ ������ �ִ�.
		System.out.println(	it.next());  //���� ���� �ƹ����� ����� �� (������ ��� get�� ������. �׷��� �ݺ��� ���) 
		}
	}
}
	
