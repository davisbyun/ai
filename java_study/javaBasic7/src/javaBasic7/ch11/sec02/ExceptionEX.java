package javaBasic7.ch11.sec02;

public class ExceptionEX {

	public static void printlength(String data) {
		int result = data.length();
		System.out.println("문자수는" + result);
	}
	
	
	public static void main(String[] args) {
		
		/*형식 {try~catch
		try { 
			//예외 발생할 것 같은 코드 내용 감싼다.
		int a = 10;
		a = a/5;
		System.out.println(a);
		
		} catch(예외명 변수 ) {
			//위에 예외가 발생했을 때 처리하는 코드 작성
		}
		*/
	try {  //에러가 복수개이면 순차적으로 처리 에러 원인 장소에서 멈추고 더 이상 ...아래로 진행되지 않는다.
		int a = 10;
		a = a/2;
		int[] iArr = {1,2,3};
		System.out.println(iArr[2]);
		
		printlength("this is java");
		printlength("ab"); //아직 자료가 없다.
		
		Class.forName("java.lang.String");
		
		System.out.println(a);
		} catch(ArithmeticException e) {
			System.out.println("분모가 0이면 안된다.");
		} catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("배열의 인덱스 범위를 벗어났습니다.");
		} catch (NullPointerException e) { 
			e.printStackTrace(); //에러를 찾아가 주는 것
			System.out.println("널이기 때문에 사용할 수 없습니다.");
		} catch (ClassNotFoundException e) {
			System.out.println("클래스명이 없습니다.");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("모든 예외의 부모 클래스");
		} finally {
			// 예외 상관 없이 무조건 (꼭, 필수) 처리해야 됨
			System.out.println("DB닫기");
			System.out.println("로그오프하기");
		}
	}
}
