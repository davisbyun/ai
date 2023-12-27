package javaApp4.ch16.sec02;

public class 확인문제7번 {

	private static int[] scores = {10,50,3};
	//
	public static int maxOrMin(Operator operator) {
		int result = scores[0];
		for(int score : scores) {
			result = operator.apply(result, score);
		}
		return result ;
	}
	public static void main(String[] args) {
		// 최대값 얻기 답 50
		int max = maxOrMin(
				
				(int x, int y) -> (x > y) ? x:y );
				
			
		System.out.println("최대값 :"+ max);
		
		int min = maxOrMin((x,y) -> (x<y ) ? x:y);
		System.out.println("최소값 :"+ min);		
	}

//함수적 인터페이스에 추상메소드 1개인것
@FunctionalInterface
interface Operator{
	public int apply(int x, int y);
	}
}