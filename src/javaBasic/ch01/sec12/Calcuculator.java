package javaBasic.ch01.sec12;

public class Calcuculator {

	public static void main(String[] args) {
			
		String name;
		name = "홍길동";
		
		int basicPay = 50000;
		String phoneNumber = "010-0000-0000";
		String accountNumber = "국민 123-12-1234";
		String dept = "알바생"; //직급
		boolean sex = true; //남자
		double tex = 0.03; //세금 요율
		
		//출력
		
		System.out.println("1번 알바 정보:  " + name + " " + basicPay + " " + phoneNumber + " ");
		System.out.println(accountNumber + " " + dept + " " + sex + " " + tex +" "); 
		
		System.out.println("------------------------------------------");
		
		String name1; //문자열 name1
		name1 = "이순신";
		
		int basicPay1 = 20000;
		String phoneNumber1 = "010-234-4567";
		String accountNumber1 = "우리 321-32-4321";
		String dept1 = "알바생"; //직급
		boolean sex1 = true; //남자
		double tex1 = 0.03; //세금 요율
		
		//출력
		
		System.out.println("2번 알바 정보 : " + name1 + " " + basicPay1 + " " + phoneNumber1 + " ");
		System.out.println(accountNumber1 + " " + dept1 + " " + sex1 + " " + tex1 +" "); 
		
		System.out.println("------------------------------------------");
		
		String name2;
		name2 = "이경미";
		
		int basicPay2 = 15000;
		String phoneNumber2 = "010-987-7456";
		String accountNumber2 = "신한 123-555-7878";
		String dept2 = "팀장"; //직급
		boolean sex2 = true; //남자
		double tex2 = 0.015; //세금 요율
		
		//출력
		
		System.out.println("3번 알바 정보 : " + name2 + " " + basicPay2 + " " + phoneNumber2 + " ");
		System.out.println(accountNumber2 + " " + dept2 + " " + sex2 + " " + tex2 +" "); 
		
		System.out.println("------------------------------------------");
		
		String name3;
		name3 = "정현희";
		
		int basicPay3 = 10000;
		String phoneNumber3 = "010-8744-3334";
		String accountNumber3 = "국민 555-65-8989";
		String dept3 = "사장"; //직급
		boolean sex3 = true; //남자
		double tex3 = 0.025;		
		//출력
		
		System.out.println("4번 알바 정보 : " + name3 + " " + basicPay3 + " " + phoneNumber3 + " ");
		System.out.println(accountNumber3 + " " + dept3 + " " + sex3 + " " + tex3 +" "); 
		
		System.out.println("------------------------------------------");
		
		String name4;
		name4 = "최수연";
		
		int basicPay4 = 9800;
		String phoneNumber4 = "010-8744-3334";
		String accountNumber4 = "국민 123-12-1234";
		String dept4 = "비정규직"; //직급
		boolean sex4 = true; //남자
		double tex4 = 0.05; //세금 요율
		
		//출력
		
		System.out.println("5번 알바 정보:" + name4 + " " + basicPay4 + " " + phoneNumber4 + " ");
		System.out.println(accountNumber4 + " " + dept4 + " " + sex4 + " " + tex4 +" "); 
		
		
		//실지급액
		//1번 10시간, 2번 15, 3 20, 4 25, 5 30
		//1번 10시간 : 10*50000 = 500000, 세금 500000*0.03 실수령액 = 500000- 세금
		
		//급여분 변수에 담는다
		int sum = 10 * basicPay;
		
		//세금을 계산한다.
		double texCal = sum * tex;
		
		//실수령액 계산한다
		double Salary = sum - texCal; 
				
		System.out.println(sum + "  " + texCal + " "+ Salary);
		
		
		//2번
		int sum1 = 10 * basicPay1;
		
		//세금을 계산한다.
		double texCal1 = sum1 * tex1;
		
		//실수령액 계산한다
		double Salary1 = sum1 - texCal1; 
				
		System.out.println(sum1 + "  " + texCal1 + " "+ Salary1);
		
		
		//3번
		int sum2 = 10 * basicPay2;
				
		//세금을 계산한다.
		double texCal2 = sum2 * tex2;
				
		//실수령액 계산한다
		double Salary2 = sum2 - texCal2; 
						
		System.out.println(sum2 + "  " + texCal2 + " "+ Salary2);
		
		
		//4번
		//3번
		int sum3 = 10 * basicPay3;
						
		//세금을 계산한다.
		double texCal3 = sum3 * tex3;
						
		//실수령액 계산한다
		double Salary3 = sum3 - texCal3; 
								
		System.out.println(sum3 + "  " + texCal3 + " "+ Salary3);
				
		
		
				
		
		
	}	
		
		
}


