package javaBasic3.ch06.sec14;

import java.util.Scanner;

//Account Ŭ���� ����
public class BankApplication {

   Scanner sc = new Scanner(System.in);
   
   Account[]  accounts = new Account[100];
   //int[] intArr = new int[100];
   
   int count = 0; //���� ���� ī��Ʈ 
   
   public void ���»���() {
      accounts[ count ] = new Account();
      System.out.println("---------");
      System.out.println(" ���� ����");
      System.out.println("---------");
      System.out.print("���¹�ȣ :");
      accounts[count].���¹�ȣ = sc.next();
      System.out.print("������ :");
      accounts[count].������ = sc.next();
      System.out.print("�ʱ��Աݾ� :");
      accounts[count].�ʱ��Աݾ� = sc.nextInt();
      System.out.println("��� : ���°� �����Ǿ����ϴ�. ");
      count = count + 1;
   }

   public void ���¸��() {
      // TODO Auto-generated method stub
      
   }

   public void ����() {
      // TODO Auto-generated method stub
      
   }

   public void ���() {
      // TODO Auto-generated method stub
      
   }

   
   
   // ���»���
   
   // ���¸��
   
   // ����
      
   // ���
   
}