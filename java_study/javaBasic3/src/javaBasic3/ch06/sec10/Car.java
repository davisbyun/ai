package javaBasic3.ch06.sec10;

public class Car {
	
	String company = "현대자동차";
	String model = "그랜저";
	String color = "검정";
	int maxSpeed = 350;
	int speed;
	
	public Car() {
		this("현대자동차","소나타");
		}
	
	public Car(String company, String model) {
		this("검정",350,0);
		this.company = company;
		this.model = model;
	}

	public Car(String color, int maxSpeed, int speed) {
		super();
		this.color = color;
		this.maxSpeed = maxSpeed;
		this.speed = speed;
	}

	public Car(String company, String model, String color, int maxSpeed, int speed) {
		
		this.company = company;
		this.model = model;
		this.color = color;
		this.maxSpeed = maxSpeed;
		this.speed = speed;
		
			
		
		
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getMaxSpeed() {
		return maxSpeed;
	}

	public void setMaxSpeed(int maxSpeed) {
		this.maxSpeed = maxSpeed;
	}

	public int getSpeed() {
		return speed;
	}

	public void setSpeed(int speed) {
		this.speed = speed;
	}
	
	
}
