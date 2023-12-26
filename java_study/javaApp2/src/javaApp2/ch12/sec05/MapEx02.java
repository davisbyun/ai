package javaApp2.ch12.sec05;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class MapEx02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Member m1 = new Member("a100", 123);
		Member m2 = new Member("a200", 234);
		Member m3 = new Member("a300", 345);
		
		HashMap<Integer,Member> hmap = new HashMap<Integer, Member>();
		//MapŰ�� 1 ���� m1,
		//�������Է��ϱ�
		hmap.put(1, m1);
		hmap.put(2, m2);
		hmap.put(3, m3);
		
		//("a300", 345) ����ϱ� 
		System.out.println(hmap.get(3));
		//Ű�鸸 ����ϱ� 1,2,3
		Set<Integer> keys = hmap.keySet();
		Iterator<Integer> it = keys.iterator();
			Integer itKey = it.next();
			System.out.println(itKey + " " + hmap.get(itKey));
					
		//Map���� Ű - id �� pwd
			
		//Member m1 = new Member("a100", 123);
		//Member m2 = new Member("a200", 234);
		//Member m3 = new Member("a300", 345);	
			
		HashMap<Member, Integer> hMap2 = new HashMap<Member, Integer>();
		hMap2.put(m1, m1.pwd);
		hMap2.put(m2, m2.pwd);
		hMap2.put(m3, m3.pwd);
		
		//a100�϶� pwd��?
		System.out.println(hMap2.get(m1));
		
		Member m4 = new Member("a300", 345);
		hMap2.put(m4, m4.pwd);
		
		Member m5 = new Member("a400", 458);
		hMap2.put(m5, m5.pwd);
		
		System.out.println(hMap2.size());
		
		//���ü�� �Ǵ��� ��, id�� pwd�� ���ÿ� ���� ���� ���� �ڵ��Ϸ���? ---> �ɹ� Ŭ��
		Set<Member> keys1= hMap2.keySet();
		Iterator<Member> k1 = keys1.iterator();
		while (k1.hasNext() ) {
			
		}
	}

}

class Member {
	String id;
	Integer pwd;
	
	public Member(String id, Integer pwd) {
		super();
		this.id = id;
		this.pwd = pwd;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return id + " " +pwd;
	}
	
	@Override
	public int hashCode() {
		// ���ü�� �Ǵ��� hasCode()�� ���� equals() ������ ���ü��
		return id.hashCode() + pwd.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Member) {
			Member m = (Member)obj ;
			if(id.contains(m.id)&&pwd==m.pwd) return true;
		}
		return false;
	}
	
	
}