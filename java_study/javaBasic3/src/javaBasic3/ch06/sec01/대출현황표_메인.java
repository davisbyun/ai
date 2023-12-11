package javaBasic3.ch06.sec01;

import java.text.SimpleDateFormat;
import java.util.Date;

public class 대출현황표_메인 {

	public static void main(String[] args) {
		Date now = new Date();
		String nowTime = now.toString();
//		System.out.println(nowTime);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//		System.out.println(sdf.format(now));
		int loanTotal = 0;
		int monthsTotal = 0;
		int counter = 0;
		대출현황표 loan1 = new 대출현황표("J02-38", "이민주", new Date(), "주택자금대출", 27000000, 48);
		대출현황표 loan2 = new 대출현황표("Y04-15", "진영태", new Date(), "예부적금담보대출", 3000000, 36);
		대출현황표 loan3 = new 대출현황표("M02-06", "최철식", new Date(), "무보증신용대출", 2000000, 36);
		대출현황표 loan4 = new 대출현황표("K03-05", "민승렬", new Date(), "국민주택기금대출", 15000000, 60);
		
		대출현황표[] loanArr = {
				new 대출현황표("J02-38", "이민주", new Date(), "주택자금대출", 27000000, 48),
				new 대출현황표("Y04-15", "진영태", new Date(), "예부적금담보대출", 3000000, 36),
				new 대출현황표("M02-06", "최철식", new Date(), "무보증신용대출", 2000000, 36),
				new 대출현황표("K03-05", "민승렬", new Date(), "국민주택기금대출", 15000000, 60)
		};
		for (int i = 0; i < loanArr.length; i++) {
			System.out.println(loanArr[i].get대출번호() + " " + loanArr[i].get성명() + " " + loanArr[i].get대출일() + " " + loanArr[i].get대출종류() + " " + loanArr[i].get대출금액() + " " + loanArr[i].get기간());
			loanTotal = loanTotal + loanArr[i].get대출금액();
			monthsTotal = monthsTotal + loanArr[i].get기간();
			counter = counter +1;
		}
		System.out.println(loanTotal);
		System.out.println((double)monthsTotal/counter);
	}

}
