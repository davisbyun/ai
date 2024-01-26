package jspBook;

import java.io.Serializable;

public class MemBean implements Serializable{

	//맴버필드
		private int id = 20181004;
		private String name = "홍길동";
		
		public MemBean() {
			// TODO Auto-generated constructor stub
		}

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
