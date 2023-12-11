package javaBasic3.ch06.sec09;

public class ShopService {
	
	int a = 1;
	
	static ShopService b = new ShopService();
	
	private ShopService() {
	}
	
	public static ShopService getInstance() {
		return b;
	}

	
}
