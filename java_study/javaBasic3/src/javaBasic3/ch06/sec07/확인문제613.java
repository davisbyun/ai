package javaBasic3.ch06.sec07;

import java.util.Scanner;

public class 확인문제613 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Member user1 = new Member();
		
		System.out.println("id>");
		user1.id = sc.next();
		System.out.println("password>");
		user1.password = sc.next();
		
		MemberService memberService = new MemberService();
		boolean result = memberService.login(user1.id, user1.password);
		
		
		if(result) {
			System.out.println("로그인 성공");
		}
		else {
			System.out.println("로그인 실패");
		}
		
	}

}
