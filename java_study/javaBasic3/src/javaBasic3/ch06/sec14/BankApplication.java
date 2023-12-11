package javaBasic3.ch06.sec14;

import java.util.Scanner;

//Account 클래스 관리
public class BankApplication {

	Scanner sc = new Scanner(System.in);
	
	Account[] accounts = new Account[100];
	//int[] intArr=new int[100];
	
	int count = 0; //계좌 생성 카운트 변수
	
	public void 계좌생성() {
		accounts[count] = new Account();
		System.out.println("-----------------");
		System.out.println("계좌생성");
		System.out.println("-----------------");
		System.out.print("계좌번호 :" );
		accounts[count].계좌번호=sc.next();
		System.out.print("계좌주 :" );
		accounts[count].계좌주=sc.next();
		System.out.print("초기입금액 :" );
		accounts[count].set잔고(accounts[count].초기입금액);
		accounts[count].초기입금액= sc.nextInt();
		System.out.println("결과 : 계좌가 생성되었습니다. ");
		count = count +1;
	}
	
	public void 계좌목록() {
		System.out.println("-----------------");
		System.out.println("계좌목록");
		System.out.println("-----------------");
		for(int i=0; i<count; i++) {
			System.out.println(accounts[i].get계좌번호()+ " "+ accounts[i].get계좌주() + " "+ accounts[i].get초기입금액());
			
		}
	}

	public void 예금() {
		System.out.println("-----------------");
		System.out.println("예금");
		System.out.println("-----------------");
		System.out.println("계좌번호");
		String 예금할계좌번호 = sc.next();
		
		//홍길동 계좌인지 강자바 계좌인지 확인하기
		//누구 계좌인지 확인하기(반복문)
		
		System.out.println("예금액");
		int 예금금액 = sc.nextInt();
		
		int i;
		boolean flag = false;
		for( i = 0; i<count ; i++) {
			if(예금할계좌번호.equals(accounts[i].get계좌번호() )) {	
			//홍길동의 잔고에 예금금액을 더해서 홍길동 잔고에 넣어라.
			//반복 그만두고 i변수 값을 기억해주어야 한다.
			flag = true;		
			accounts[i].잔고 = accounts[i].get잔고() + 예금금액;
			break;	}
		}
		
		System.out.println("출금액");
		int 출금금액 = sc.nextInt();
		
		int i;
		boolean flag = false;
		for( i = 0; i<count ; i++) {
			if(예금할계좌번호.equals(accounts[i].get계좌번호() )) {	
				if(accounts[i].잔고 <출금금액) {System.out.println("잔고가부족합니다."); { 
				else accounts[i].잔고 = accounts[i].get잔고() - 출금금액;
				}
			//홍길동의 잔고에 예금금액을 더해서 홍길동 잔고에 넣어라.
			//반복 그만두고 i변수 값을 기억해주어야 한다.
			flag = true;		
			accounts[i].잔고 = accounts[i].get잔고() - 출금금액;
			break;	}
		}
		
		if(!flag) System.out.println("계좌번호가 틀렸습니다. 확인하세요.");
	}
	
	public void 출금() {
	}

	

	//계좌생성 - 메소드
	
	//계좌목록 - 메소드
	
	//예금 - 메소드
	
	//출금 - 메소드 
}
