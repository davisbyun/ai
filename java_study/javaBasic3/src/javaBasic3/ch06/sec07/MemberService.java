package javaBasic3.ch06.sec07;

public class MemberService {
	boolean login(String id, String password) {
		if(id.equals("hong") && password.equals("12345") || id.equals("kim") && password.equals("3456" )) {
			return true;
		}
		else {
			return false;
		}
	}
	String logout(String id) {
		return id+"님이로그아웃 되었습니다.";
	}
}
