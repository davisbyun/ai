package javaBasic3;

public class 자동차판매현황 {

	String name;
	int delivery;
	int price;
	int months;
	int total;
	double monthly;
	
	
	public 자동차판매현황(String name, int delivery, int price, int months) {
		super();
		this.name = name;
		this.delivery = delivery;
		this.price = price;
		this.months = months;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getTotal() {
		this.total = delivery+price;
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getDelivery() {
		return delivery;
	}
	public void setDelivery(int delivery) {
		this.delivery = delivery;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getMonths() {
		return months;
	}
	public void setMonths(int months) {
		this.months = months;
	}
	public double getMonthly() {
		monthly = (double)price/months;
		return monthly;
	}
	public void setMonthly(double monthly) {
		this.monthly = monthly;
	}
	
	
	
	
}
