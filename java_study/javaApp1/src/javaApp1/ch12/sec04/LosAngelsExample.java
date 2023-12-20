package javaApp1.ch12.sec04;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.util.Calendar;
import java.util.TimeZone;

public class LosAngelsExample {

	public static void main(String[] args) {

		TimeZone timezone = TimeZone.getTimeZone("America/Los_Angeles");
		TimeZone timezone1 = TimeZone.getTimeZone("France/Paris");
		TimeZone timezone2 = TimeZone.getTimeZone("Asia/Seoul");
		
		
		Calendar now = Calendar.getInstance(timezone);
		//System.out.println(now.get(Calendar.MONTH) + "�� " + now.get(Calendar.DAY_OF_MONTH + "��"));
		//System.out.println(now.get(Calendar.HOUR) + "�� " + now.get(Calendar.MINUTE + "��"));
		
		
		String [] av = TimeZone.getAvailableIDs();
		for(String a : av) {
		
			System.out.println(a); //������ Ÿ���� ����
			
		}
		
		LocalDateTime now1 = LocalDateTime.now();
		DateTimeFormatter dtf = new DateTimeFormatter.ofPattern("yyyy.MM.dd a HH:mm:ss ");
		System.out.println(now1.format(dtf) );
		
		//1����
		LocalDateTime now1After =  now1.plusYears(1);
		System.out.println("1�� �� " + now1After.format(dtf) );
		//3����
		LocalDateTime now3Before =  now1.minusYears(3);
		//2����
		LocalDateTime now2After =  now1.plusWeeks(2);
		
		//���ó�¥
		LocalDateTime nowtoday =  now1.format(dtf);
		
		
		
		
		}
			
	}


