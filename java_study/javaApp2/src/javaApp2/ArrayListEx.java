package javaApp2;

import java.util.ArrayList;

public class ArrayListEx {

	public static void main(String[] args) {
		// List특징 순서가 있다. 중복저장 있다.
		int[] iarr = {1,2};
		for (int i : iarr) {
			System.out.println( i ); 
		}
		for ( int i=0; i< iarr.length; i++) {
			System.out.println( iarr[i] );
		}
        // 3, 4추가하고 싶다 -- 안된다.
		//{1,2,3,4}
		
		//List의 구현클래스인 ArraysList를 이용
		ArrayList<Integer> arrList =new ArrayList<Integer>();
		// <E> 제네릭 자료의 형을 미리 지정하는 것
		arrList.add(1);
		arrList.add(2);
		System.out.println( arrList.size()); // ArrayList안에 몇개의 요소가 있는지를 반환
		// 3, 4 추가하기
		arrList.add(3);
		arrList.add(4);
		// 0번 인덱스에 -7을 넣기 
		arrList.add(0, -7);
		// 전체를 출력하고 싶다. 반복문 사용하것 
		for( int i=0; i< arrList.size(); i++) { // i= 0 1 2 3 4 
			System.out.println( arrList.get(i) ); // 인덱스번호에 있는 요소를 출력하기
		}
		
		// 문자열을 ArrayList 넣기
		ArrayList<String> sArr = new ArrayList<String>();
		//사과 배 귤 바나나 입력(삽입)하기
		sArr.add("사과");
		sArr.add("배");
		sArr.add("귤");
		sArr.add("바나나");
		sArr.add("사과");
		sArr.add("사과");
		
		//귤과 바나나 사이에 파인애플 넣기 
		sArr.add(3, "파인애플");
		//사과과 배 사이에 메론 넣기
		sArr.add(1, "메론");
		
		//귤을 천혜향을 수정하기 
		// 힌트 set()
		sArr.set(3, "천혜향");		
		
		//바나나 삭제하기 remove()
		sArr.remove(5);
		sArr.remove("파인애플");
				
		//전체 출력하기 
		for( int i=0; i< sArr.size(); i++) {
			System.out.print(  sArr.get(i) + " " );
		}
		
		//파인애플이 있습니까? contains()
		//결과 없습니다
		if ( sArr.contains("파인애플") ) {
			System.out.println( "있습니다.");
		}else {
			System.out.println("없습니다.");
		}
		
		//사과와 배 있어요? &&
		if ( sArr.contains("사과") &&  sArr.contains("배")   ) {
			System.out.println( "있습니다");
		}else {
			System.out.println("없습니다");
		}
		//가게에 물건이 모두 없나요?
		//배열리스트가 비어있나요? isEmpty() 
		//가게에 물건이 있으면 모두 치워주세요.(지우기)
		if ( !sArr.isEmpty()  ) {
			sArr.clear(); //요소를 모두 다 지우기
			System.out.println("가게 물건을 모두 치웠습니다. ");
		}
		//전체 출력하기 
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
//		// List특징 순서가 있다. 중복저장 있다.
//		int[] iarr = {1,2};
//		for (int i : iarr) {
//			System.out.println( i ); 
//		}
//		for ( int i=0; i< iarr.length; i++) {
//			System.out.println( iarr[i] );
//		}
//        // 3, 4추가하고 싶다 -- 안된다.
//		//{1,2,3,4}
//		
//		//List의 구현클래스인 ArraysList를 이용
//		ArrayList<Integer> arrList =new ArrayList<Integer>();
//		// <E> 제네릭 자료의 형을 미리 지정하는 것
//		arrList.add(1);
//		arrList.add(2);
//		System.out.println( arrList.size()); // ArrayList안에 몇개의 요소가 있는지를 반환
//		// 3, 4 추가하기
//		arrList.add(3);
//		arrList.add(4);
//		// 0번 인덱스에 -7을 넣기 
//		arrList.add(0, -7);
//		// 전체를 출력하고 싶다. 반복문 사용하것 
//		for( int i=0; i< arrList.size(); i++) { // i= 0 1 2 3 4 
//			System.out.println( arrList.get(i) ); // 인덱스번호에 있는 요소를 출력하기
//		}
//		
//		// 문자열을 ArrayList 넣기
//		ArrayList<String> sArr = new ArrayList<String>();
//		//사과 배 귤 바나나 입력(삽입)하기
//		sArr.add("사과");
//		sArr.add("배");
//		sArr.add("귤");
//		sArr.add("바나나");
//		sArr.add("사과");
//		sArr.add("사과");
//		
//		//귤과 바나나 사이에 파인애플 넣기 
//		sArr.add(3, "파인애플");
//		//사과과 배 사이에 메론 넣기
//		sArr.add(1, "메론");
//		
//		//귤을 천혜향을 수정하기 
//		// 힌트 set()
//		sArr.set(3, "천혜향");		
//		
//		//바나나 삭제하기 remove()
//		sArr.remove(5);
//		sArr.remove("파인애플");
//				
//		//전체 출력하기 
//		for( int i=0; i< sArr.size(); i++) {
//			System.out.print(  sArr.get(i) + " " );
//		}
//		
//		//파인애플이 있습니까? contains()
//		//결과 없습니다
//		if ( sArr.contains("파인애플") ) {
//			System.out.println( "있습니다.");
//		}else {
//			System.out.println("없습니다.");
//		}
//		
//		//사과와 배 있어요? &&
//		if ( sArr.contains("사과") &&  sArr.contains("배")   ) {
//			System.out.println( "있습니다");
//		}else {
//			System.out.println("없습니다");
//		}
//		//가게에 물건이 모두 없나요?
//		//배열리스트가 비어있나요? isEmpty() 
//		//가게에 물건이 있으면 모두 치워주세요.(지우기)
//		if ( !sArr.isEmpty()  ) {
//			sArr.clear(); //요소를 모두 다 지우기
//			System.out.println("가게 물건을 모두 치웠습니다. ");
//		}
//		//전체 출력하기 
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
////		//List의 특징 : 순서가 있다. 중복저장 가능
////		int[] iarr = {1,2};
////		for(int i : iarr) {
////			System.out.println(i);
////		}
////		//3,4 추가하고 싶다. -- 안된다.
////		//{1,2,3,4} 
////		
////		//List의 구현 클래스인 ArraysList를 이용하면 가능
////		
////		ArrayList<Integer> arrayList = new ArrayList<Integer>();
////		//<E>제네릭 자료
////		arrayList.add(1);
////		arrayList.add(2);
////		System.out.println(arrayList.size()); //arrayList 안에 몇 개의 요소가 있는지를 반환
////		
////		//3,4를 추가하기
////		arrayList.add(3);
////		arrayList.add(4);
////		
////		//0번 인덱스에 -7을 넣기
////		arrayList.add(0, -7);
////		
////		//전체 출력하기(반복문 사용)
////		for(int i =0; i<arrayList.size(); i++) {   //i = 0,1,2,3,4
////			System.out.println(arrayList.get(i));  //get은 인덱스 번호에 있는 요소를 출력해주는 역할 -7,1,2,3,4 출력됨
////		}
////			
////		//문자열을 ArrayList에 넣기
////		ArrayList<String> sArr = new ArrayList<String>();
////		//사과, 배, 귤, 바나나 입력하기(삽입하기)
////		sArr.add("사과");
////		sArr.add("배");
////		sArr.add("귤");
////		sArr.add("바나나");
////		sArr.add("사과");
////		sArr.add("사과");
////		
////		//귤과 바나나 사이에 파인에플 넣기
////		sArr.add(3, "파인에플");
////		
////		//사과와 배 사이에 메론 넣기
////		sArr.add(1, "메론");
////		sArr.set(3, "천혜향");  //3번 인덱스를 천혜향으로 바꾸기;
////		
////		sArr.remove(5); //5번 인덱스를 삭제하시오.
////		sArr.remove("파인에플");
////		
////		//전체 출력하기
////		for(int i = 0; i<sArr.size(); i++) {
////			System.out.println(sArr.get(i) + " ");
////							
////		}
////		//파인애플이 있습니까?
////		//결과 없습니다.
////		if (sArr.contains("파인애플" )) { 
////			System.out.println("결과 있습니다.");
////		}else {
////			System.out.println("결과 없습니다.");
////		}
////		
////		//사과 배 있습니까?
////		if (sArr.contains("사과") && sArr.contains("배") ) {
////			System.out.println("결과 있습니다.");
////		}else {
////			System.out.println("결과 없습니다.");
////		}
////		//가게에 물건이 모두 없나요. 
////		//배열리스트가 비어있나요 isEmpty()
////		//가게에 물건이 있으면 모두 치워주세요 지우기
////		
////		if(!sArr.isEmpty()) {
////			sArr.clear();  //요소를 모두 지우기
////			System.out.println("가게의 물건을 모두 치웠습니다. ");
////		}
////	}
////}
////
////
