package javaBasic3.ch06.sec14;

import java.util.Scanner;

//Account 클래스 관리
public class BankApplication {

   Scanner sc = new Scanner(System.in);
   
   Account[]  accounts = new Account[100];
   //int[] intArr = new int[100];
   
   int count = 0; //계좌 생성 카운트 
   
   public void 계좌생성() {
      accounts[ count ] = new Account();
      System.out.println("---------");
      System.out.println(" 계좌 생성");
      System.out.println("---------");
      System.out.print("계좌번호 :");
      accounts[count].계좌번호 = sc.next();
      System.out.print("계좌주 :");
      accounts[count].계좌주 = sc.next();
      System.out.print("초기입금액 :");
      accounts[count].초기입금액 = sc.nextInt();
      System.out.println("결과 : 계좌가 생성되었습니다. ");
      count = count + 1;
   }

   public void 계좌목록() {
      // TODO Auto-generated method stub
      
   }

   public void 예금() {
      // TODO Auto-generated method stub
      
   }

   public void 출금() {
      // TODO Auto-generated method stub
      
   }

   
   
   // 계좌생성
   
   // 계좌목록
   
   // 예금
      
   // 출금
   
}