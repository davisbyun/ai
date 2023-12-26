package javaApp2.ch12.sec05;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class MapEx01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HashMap<Integer,String> hm = new HashMap<Integer,String>();
		hm.put(1,"홍길동1");
		hm.put(2,"홍길동2");
		hm.put(3,"홍길동3");
		hm.put(4,"홍길동4");
		
		//몇 개 있나요?
		System.out.println(hm.size());  //4
		//키가 3이 있나요?
		System.out.println(hm.containsKey(3));   //true(값이 존재)
		//키의 값이 홍길동5가 있나요?
		System.out.println(hm.containsValue("홍길동5"));  //false(없어요)
		//키를 넣으면 값이 나오게 출력하기
		System.out.println(hm.get(2));  //홍길동2
		//홍길동4를 삭제하기
		System.out.println(hm.remove(4));
		//전체 출력하기
		System.out.println(hm.get(1)); 
		System.out.println(hm.get(2));  //
		System.out.println(hm.get(3));  //
		System.out.println(hm.get(4));  //
		
		//키값만 구한다. 키
		Set<Integer> keys = hm.keySet();  //keySet은 키값만 모아줌 
		Iterator<Integer> it = keys.iterator(); 
		while (it.hasNext()) {
			System.out.println(it.next());
		}
		
		//교재 656쪽 
		//entrySet()
		Set<Entry<Integer, String>> e = hm.entrySet();
		Iterator <Entry<Integer, String>> it2 = e.iterator();
		while(it2.hasNext()) {
			System.out.println(it2.next());
			Entry<Integer, String> e1 =it2.next();
			Integer keyE1 = e1.getKey();  //키를 얻는다.
			hm.get(keyE1); //값을 얻는다. -hashMap에서 얻음
			e1.getValue(); //값을 얻는다. -Entry에서 얻음
			System.out.println(hm.get(keyE1)       + " ");
			System.out.println(e1.getValue() + " "); 
			
			
			
			
		}
		
		
		
		
	}

}
