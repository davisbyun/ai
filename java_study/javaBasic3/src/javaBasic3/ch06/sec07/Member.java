package javaBasic3.ch06.sec07;

public class Member {

	String name;
	String id;
	String password;
	int age;
	
	public Member(String name, String id, String password, int age) {
		super();
		this.name = name;
		this.id = id;
		this.password = password;
		this.age = age;
	}
	public Member(String name, String id) {
		super();
		this.name = name;
		this.id = id;
	}
	public Member() {
	}

}
