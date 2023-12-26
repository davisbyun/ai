package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx3 {

	public static void main(String[] args) {
		// 652
        Member m1 = new Member("홍길동", 25);
        Member m2 = new Member("홍길동2", 30);
        Member m3 = new Member("홍길동3", 25);
        Member m4 = new Member("홍길동2", 30);
        Member m5 = new Member("홍길동", 25);
        
        //set 안에 Member클래스 주소를 넣는다
        Set< Member > mSet = new HashSet< Member  >();
        
        mSet.add(m1);
        mSet.add(m2);
        mSet.add(m3);
        mSet.add(m4);
        mSet.add(m5);
        
        // 갯수는?
        System.out.println(  mSet.size() );
        
        // 이름과 나이가 같으면 같은 사람?  hashCode() equals()
        // 모두 출력하기 주소로
        Iterator<Member> it =mSet.iterator();
        while( it.hasNext() ) {
        	System.out.println( it.next().toString()  );
        	//주소를 출력하면 자동을 toString() 붙는다 
        	// toString() Object클래스의 메소드이다 
        	// 자식인 Member에서 toString() 재정의하면 자식 메소드로 반영된다. 
        }
        
        
            
	}

}

class Member {
	
	String name;
	int age;
	
	public Member(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}
	
	//동등객체를 사용자정의(개발자가 정의)하려면 hashCode()와 equals() 재정의해야 한다
    @Override
    public int hashCode() {
    	// TODO Auto-generated method stub
    	Integer ageI = Integer.valueOf(age); //기본형 int age를 클래스형 Integer 바꿈
    	return name.hashCode() + ageI.hashCode(); // "+" 개발자 마음대로 한 것
    }
    
    @Override
    public boolean equals(Object obj) {
    	if( obj instanceof Member) {
    		Member m = (Member) obj; 
    		if( name.equals(m.name) && age == m.age    )
    			return true;
    	}
    	return false;
    }
	
    @Override
    public String toString() {
    	// TODO Auto-generated method stub
    	return name + " " + age;
    }
}


//package javaApp2.ch15.sec01;
//
//import java.util.HashSet;
//import java.util.Iterator;
//import java.util.Set;
//
//public class SetEx3 {
//
//	public static void main(String[] args) {
//		//ㅔ652
//		
//		Member m1 = new Member("홍길동",25);
//		Member m2 = new Member("홍길동2",30);
//		Member m3 = new Member("홍길동3",25);
//		Member m4 = new Member("홍길동2",30);
//		Member m5 = new Member("홍길동",25);
//		
//		//set 안에 Member 클래스 주소를 넣는다.
//		
//		Set<Member> mSet = new HashSet<Member>();
//		
//		mSet.add(m1);
//		mSet.add(m2);
//		mSet.add(m3);
//		mSet.add(m4);
//		mSet.add(m5);
//		
//		//갯수는?
//		System.out.println(mSet.size());
//		
//		//이름과 나이가 같으면 같은 사람? HashCode(), equals() 로 동등객체를 판단함
//		//모두 출력하기 주소
//		
////		Iterator<Member> it = mSet.iterator();
////		while (it.hasNext()) {
////			System.out.println(it.next().name);
//		
//		Iterator<Member> it = mSet.iterator();
//		while (it.hasNext()) {
//			System.out.println(it.next().toString());
//			//주소를 출력하면 자동으로 toString붙는다.
//			//toString() Object 클래스의 메소드
//			//자식인 Member에서 toString() 재정의하면 자식 메소드로 반영된다.
//			
//		}
//		
//		
//		
//	}
//
//}
//
//class Member{
//	
//	String name ;
//	int age;
//	
//	public Member(String name, int age) {
//		super();
//		this.name = name;
//		this.age = age;
//	
//		
//		
//	}
//	
//	//동등객체를 사용자정의(개발자가 정의)할면 hashCoe()와 equals를 재정의해야한다.
//	
//	@Override
//	public int hashCode() {
//		// TODO Auto-generated method stub
//		Integer ageI = Integer.valueOf(age);  //기본형 int age를 클래스형 Integer로 바꿈
//		return name.hashCode() + ageI.hashCode(); 
//			
//	}
//	
//	@Override
//	public boolean equals(Object obj) {
//		if( obj instanceof Member ) {
//			Member m = (Member) obj;
//			if ( name.equals(m.name) && age == m.age)
//				return true;	
//		}
//		
//		return super.equals(obj);
//	}
//	
//	@Override
//	public String toString() {
//		// TODO Auto-generated method stub
//		return name + " " + age;
//	}
//}