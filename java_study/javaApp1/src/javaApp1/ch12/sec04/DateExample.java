package javaApp1.ch12.sec04;

import java.text.SimpleDateFormat;

public class DateExample {

	public static void main(String[] args) {
		
		Date date = new Date();
		String strNow1 = now.toString();
		System.out.println(strNow1);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
		String strNow2 = sdf.format(now);
		
		
	}

}
