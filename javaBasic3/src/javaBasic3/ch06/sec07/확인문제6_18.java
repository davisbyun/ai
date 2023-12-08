package javaBasic3.ch06.sec07;

public class 확인문제6_18 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ShopService obj1 = ShopService.getIService(); //static에 있는 메서드 호출
		ShopService obj2 = ShopService.getIService();
		
		if(obj1 == obj2) {
			System.out.println("같은 ShopService 객체입니다.");
		}else {
			System.out.println("다른 ShopService 객체입니다.");
		}
		
		// 힌트 싱클톤 패턴으로 ShopService 클래스를 만들어 준다.
		//1. 생성자는 private 2.필드는 객체화해서 생성자의 주소를 저장하고 private합니다.
		//메소드인 getInstance()에서 리턴값을 생성자의 주소입닏다. 접근제한자는 public
		
		
		
	}

}
