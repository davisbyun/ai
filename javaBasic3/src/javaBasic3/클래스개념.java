package javaBasic3;



public class 클래스개념 {

	public static void main(String[] args) {
		// 객체생성하자마자 값을 바로 넣어주기
		Student s1 = new Student("230101","홍길동","AI",100,"010-123-1234");  //클ㄹ
		Teacher t1 = new Teacher("A32","정현희","컴공",1000000,"전임",20);
		
		// "230101" 출력하기
		
		System.out.println(s1.get학번());
		System.out.println(s1.get학과());
		System.out.println(t1.get이름());
		System.out.println(t1.get구분());
		System.out.println(t1.get코드());
		
		//
//		Student st2 = new Student();
//		Teacher t2 = new Teacher();
//		
//		//
//		st2.set학번("2201");
//		st2.set이름("이순신");
//		
//		
//		t2.이름("박희연");
//		t2.전공("피아노");
//		
//		System.out.println(st2.학번() + "   " + st2.이름 + "  " + t2.이름);
//		
//		
//		
		
	}	
	

}
