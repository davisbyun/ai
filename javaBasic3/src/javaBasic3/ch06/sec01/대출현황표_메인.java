package javaBasic3.ch06.sec01;

import java.text.SimpleDateFormat;
import java.util.Date;

public class 대출현황표_메인 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Date now = new Date(); //현제 날짜를 구해주는 객체
		String nowTime = now.toString(); //날짜를 문자열로 바꾸어 준다
		System.out.println(nowTime); //출력
		
		SimpleDateFormat sdf =  new SimpleDateFormat("yyyy-MM-dd");
		System.out.println(sdf.format(now));
		
		//동일한 객체를 생성하고 내용만 다를 때, 배열 사용
		
		int[] iArr = {1,2,3};
				
		대출현황표 d1 = new 대출현황표("j02-38","이민주", new Date(), "주택자금대출", 27000000, 48);
		대출현황표 d2 = new 대출현황표("Y04-15","진영태", new Date(), "예부적금담보대출", 30000000, 36);
		대출현황표 d3 = new 대출현황표("M02-06","최철식", new Date(), "무보증신용출", 27000000, 48);
		대출현황표 d4 = new 대출현황표("j02-31","민승렬", new Date(), "주택자금대출", 27000000, 48);
		
		
		 대출현황표[] dArr = { new 대출현황표("j02-38","이민주", new Date(), "주택자금대출", 27000000, 48),
				 new 대출현황표("Y04-15","진영태", new Date(), "예부적금담보대출", 30000000, 36),
				 new 대출현황표("M02-06","최철식", new Date(), "무보증신용출", 27000000, 48),
				 new 대출현황표("j02-31","민승렬", new Date(), "주택자금대출", 27000000, 48)
		 };
		
		 for(int i = 0; i<dArr.length ; i++) {
				 System.out.println(dArr[i].get대출번호() + "  " + dArr[i].get성명() + "  " + dArr[i].get대출종류() + "  " + dArr[i].get대출일() );
		 }
		 
		 // 대출금액 총합
		 
		 int 대출금총합 = 0;
		 int 기간총합 = 0;
		 
		 for(int i = 0; i<dArr.length ; i++) {
			 대출금총합 = 대출금총합 + dArr[i].get대출금액();
			 기간총합 = 기간총합 + dArr[i].get기간();
			 
			 System.out.println();
		 }
		 
		 System.out.println("대출금액 총합 :  " );
		 
		 
		 // 대출기간 평균
		//Field
		
		
		//Constructor
		
		
		//Method
		
		
		
	}

}
