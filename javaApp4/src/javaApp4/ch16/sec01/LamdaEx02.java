package javaApp4.ch16.sec01;

public class LamdaEx02 {

	public static void main(String[] args) {
		//"서울" ---> 서울대학교 "인천" =--> 인천대학교

		//Colleage<String> s1 = ( name ) -> {return name + "대학교"; };
		//Colleage<String> s1 = ( name ) -> name + "대학교"; // 생략
		Colleage<String> s1 = name -> name + "대학교"; // 매개변수의 값이 1개면 ()는 생략할 수 있음
		System.out.println(s1.cName("서울"));
		System.out.println(s1.cName("인천"));
		
		//사과 사세요, 배 사세요.
		Colleage<String> s2 = a -> a + "사세요"; // 매개변수의 값이 1개면 ()는 생략할 수 있음
		System.out.println(s2.cName("사과"));
		System.out.println(s2.cName("배"));
		
		//3000원 이상이면 3000+10000, 미만이면 2000-5000
		
		Colleage<Integer> s3 = price -> {
			if( price >= 3000 ) return price + 10000;
			else return price - 5000; 
		};
		
		System.out.println(s3.cName(2000));   //cName은 인터페이스의 추상메소드
		System.out.println(s3.cName(5000));
		
		
	}

}

interface Colleage <T> {
	T cName(T name);
	
}
