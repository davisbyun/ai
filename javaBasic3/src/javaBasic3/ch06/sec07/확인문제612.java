package javaBasic3.ch06.sec07;

import java.util.Scanner;

public class Ȯ�ι���612 {

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
			System.out.println("�α��� �Ǿ����ϴ�");
			memberService.logout("hong");
		}else {
			System.out.println("id �Ǵ� password�� �ùٸ��� �ʽ��ϴ�");
		}

		
		
		
		
		
		
		
		//name = sc.next();
        //break;

	}

}
