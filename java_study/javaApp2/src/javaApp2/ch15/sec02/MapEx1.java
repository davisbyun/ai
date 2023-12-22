package javaApp2.ch15.sec02;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MapEx1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//656
		Map<Integer, String> m1 = new HashMap<Integer, String>();  //<키에 대한 자료형, 값에 대한 자료형>
		
		//삽입하기, 넣기
		m1.put(1, "이순신");
		m1.put(2, "박수연");
		m1.put(3, "홍길동");
		m1.put(3, "홍길동1");  //키값을 중복해도 에러는 나지 않음,  
		m1.put(3, "홍길동2");  //출력 값은 제일 마지막 키 값 츌력됨(홍길동2) 키가 동일하면 등동 객체로 판단하고 마지막 것만 기억, 새로운 것으로 대체
		
		Map<String, Double> m2 = new HashMap<String, Double>();
		//m2에 값 넣기
		m2.put("a", 2.5);
		m2.put("b", 3.5);
		m2.put("b", 3.5);
		m2.put("b", 3.5);
		m2.put("b", 13.5); 
		
		System.out.println(m2.get("b")); //키를 넣으면 값이 나온다. 키값이 같으므로 마지막 것만 출력 13.5

		//출력하기, 꺼내보기
		m1.get(1);
		System.out.println(m1.get(1)); //키를 넣으면 값이 나온다.
		System.out.println(m1.get(3)); //키를 넣으면 값이 나온다.
		
		//전체 출력하기
		//1단계 키들을 모은다.
		//2단계 키 하나하나를 꺼내어 출력한다.
		
		Set<Integer> m1Keys  = m1.keySet();
		
		Iterator<Integer> it1 = m1Keys.iterator();
		while(it1.hasNext()) {
		//	System.out.println(it1.next() + " @@@@");
			System.out.println(m1.get(it1.next()) + " $$$$");
		}
		
		//삭제
		m1.remove(3);
		System.out.println(m1.size());
		
		//크기 구하기
		System.out.println(m1.size());
		
		Map<String, String> m3 = new HashMap<String, String>();
		m3.put("홍길동", "과장");
		m3.put("이순신", "부장");
		m3.put("최경미", "사원");
		m3.put("홍길동", "사장");
		
		//크기는?
		System.out.println(m3.size());
		//이순신의 직책은?
		System.out.println(m3.get("이순신"));
		//최경미의 직책은?
		System.out.println(m3.get("최경미"));
		//홍길동의 직책은?
		System.out.println(m3.get("홍길동"));
		//최경미 삭제
		m3.remove("최경미");
		
		//전체 출력하기
		System.out.println(m3.get("홍길동"));
		System.out.println(m3.get("이순신"));
		
		//반복문으로 전체 출력하기 - 키값을 반복으로 넣으면 됨
		//keySet() 함수 모든 키를 Set()에 담는다.
		
		Set<String> m3Keys = m3.keySet(); //키들을 담는다.
		
		Iterator<String> it = m3Keys.iterator();
		while (it.hasNext()) {
			//System.out.println(it.next()); //키 값들이 반복해서 출력
			System.out.println(m3.get(it.next()) + "####"); //--> 키 값을 넣으니까 value (값)이 나옴
		
		
		}
		
		
		
		
		
		
		
		
		
		
		
	}

}
