package javaBasic3.ch06.sec09;

public class 확인문제6장18번 {

	public static void main(String[] args) {
		ShopService obj1 = ShopService.getInstance();
		ShopService obj2 = ShopService.getInstance();
		
		System.out.println(obj1);
		System.out.println(obj2);
	}

}
