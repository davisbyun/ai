package jspBook;

import java.io.Serializable;
// Serializable 직렬화, 네트워크에 자료를 전송하려면 필요함
public class MemberBean implements Serializable {
	
	//맴버필드
	private int id = 20181004;
	private String name = "홍길동";
	
	// 기본생성자
	public MemberBean() {
		// TODO Auto-generated constructor stub
	}
	
	// setter getter 
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}		

}
