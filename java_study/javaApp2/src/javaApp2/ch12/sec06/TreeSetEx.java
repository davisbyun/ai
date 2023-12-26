package javaApp2.ch12.sec06;

import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;
import java.util.TreeSet;

public class TreeSetEx {

	public static void main(String[] args) {
		// p666
		TreeSet<Integer> t1 = new TreeSet<Integer>();
		
		t1.add(87);
		t1.add(98);
		t1.add(75);
		t1.add(95);
		t1.add(80);
		t1.add(80);
		t1.add(80);
		
		
		System.out.println(t1.size());  //size ==> 노드의 갯수 //5, 80중복 값은 생략
		//오름 차순 정렬되어 모두 출력됨
		Iterator<Integer> it = t1.iterator();
		while (it.hasNext()) {
			System.out.println(it.next()); //출력값은 정렬됨
		}
		
		for(Integer t : t1 ) {   //향상된 for문
			System.out.println(t);
			
		}
		
		//가장 낮은 점수?
		System.out.println(t1.first());
		//가장 높은 점수는?
		System.out.println(t1.last());
		//95보다 바로 아래 점수
		System.out.println(t1.lower(95));
		//95점 위의 점수
		System.out.println(t1.higher(95));
		//95점이거나 바로 아래 점수
		System.out.println(t1.floor(95));
		//95점이거나 바로 위의 점수
		System.out.println(t1.ceiling(95));
		
		//내림차순정렬
		NavigableSet<Integer> ds = t1.descendingSet();
		for(Integer d : ds ) {
			System.out.println(d +"~");
		}	
		//80 <= x <= 90 사이 점수
		SortedSet<Integer> s8090 = t1.subSet(80,false, 90,false ); //false 80,90은 제외(작다,크다), true는 포함(작거나 같다. 크거나같다) 
		for(Integer s : s8090) {
			System.out.println(s + "~~");
		}
		//트리에 노드에 87이 있나요? 
		System.out.println(t1.contains(87));
		
		//삭제는 remove
		
		
				
		
		
	}

}
