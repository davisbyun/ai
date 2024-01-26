package jspBook;

import java.io.Serializable;

public class Login implements Serializable{

	private String id ;
	private String pw ;
		
public Login() {
			// TODO Auto-generated constructor stub
}

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public String getPw() {
	return pw;
}

public void setPw(String pw) {
	this.pw = pw;
}


}




