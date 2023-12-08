package javaBasic3.ch06.sec07;

import java.util.Scanner;

public class 확인문제612 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("id>");
		Sc.next();
		
		System.out.println("password>");
		Sc.next();
		
		
		
		MemberService memberService = new MemberService();
		boolean result = memberService.login( id, password );
		
		if (result) {
			System.out.println("로그인 되었습니다");
			memberService.logout("hong");
		}else {
			System.out.println("id 또는 password가 올바르지 않습니다");
		}

		
		
		
		
		
		
		
		//name = sc.next();
        //break;

	}

}
