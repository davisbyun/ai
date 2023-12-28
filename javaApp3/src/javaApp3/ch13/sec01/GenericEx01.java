package javaApp3.ch13.sec01;

// 582페이지 교재 대로 하기, 584~585교재에 있는 것 해보기  
public class GenericEx01 {

	public static < T extends Number> boolean compare(T t1, T t2) {
		System.out.println( "compare(" + t1.getClass().getSimpleName() + ", " +  t2.getClass().getSimpleName() + ")");
	    double v1 = t1.doubleValue();
	    double v2 = t2.doubleValue();
	    return ( v1 == v2 );
	
	}
		
	public static void main(String[] args) {
		// TODO Auto-generated method stub
        boolean result = compare(10, 20);
        System.out.println( result );
        System.out.println();
        
        boolean result2 = compare(4.5, 4.5);
        System.out.println( result2 );
        System.out.println();
        
        boolean result3 = compare(4.5f, 5.5f); // float형 4.5f
        System.out.println( result3 );
        System.out.println();
        
        boolean result4 = compare(100L, 890L); // long형 정수형 8바이트 
        System.out.println( result4 );
        System.out.println();
        
//        boolean result5 = compare("a", "b"); // 문자형의 Number 객체의 자식이 아니래서 안됨 
//        System.out.println( result5 );
//        System.out.println();
	}

}