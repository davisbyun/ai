package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx {

	public static void main(String[] args) {
		//set 특징 : 중복된 요소를 제거한다. 중복 저장 되지 않는다.
		Set<Integer> set = new HashSet<Integer>();
		
		set.add(10);
		set.add(50);
		set.add(80);
		set.add(10);
		
		System.out.println(set.size());
		
		Iterator<Integer> it = set.iterator(); //반복자를 사용하여 set.add 된 내용을 출력
		while (it.hasNext()) {	//다음을 가지고 있다.
		System.out.println(	it.next());  //순서 없이 아무렇게 출력이 됨 (순서가 없어서 get을 사용못함. 그래서 반복자 사용) 

		}
		
		//set 안에 40이 있나요? 아니요
		System.out.println( set.contains(40) ); 
		
		//set 안에 요소가 비어있나요? 아니요
		System.out.println(set.isEmpty());
		System.out.println(set.remove(50)); // 
		
		it = set.iterator(); //반복자를 다시 설정해야 50이 지워진 내용이 출력이 됨 
		while (it.hasNext()) {	//다음을 가지고 있다.
		System.out.println(	it.next());  //순서 없이 아무렇게 출력이 됨 (순서가 없어서 get을 사용못함. 그래서 반복자 사용) 
		}
		
		//set 안에 요소 100을 추가하기
		System.out.println(set.add(100));
		//set 안에 요소 80을 삭제하기
		System.out.println(set.remove(80));
		
		it = set.iterator();
		while (it.hasNext()) {	//다음을 가지고 있다.
		System.out.println(	it.next());  //순서 없이 아무렇게 출력이 됨 (순서가 없어서 get을 사용못함. 그래서 반복자 사용) 
		}
	}
}
	
