package javaBasic3.ch06.sec01;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ������Ȳǥ_���� {

	public static void main(String[] args) {
		Date now = new Date();
		String nowTime = now.toString();
//		System.out.println(nowTime);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//		System.out.println(sdf.format(now));
		int loanTotal = 0;
		int monthsTotal = 0;
		int counter = 0;
		������Ȳǥ loan1 = new ������Ȳǥ("J02-38", "�̹���", new Date(), "�����ڱݴ���", 27000000, 48);
		������Ȳǥ loan2 = new ������Ȳǥ("Y04-15", "������", new Date(), "�������ݴ㺸����", 3000000, 36);
		������Ȳǥ loan3 = new ������Ȳǥ("M02-06", "��ö��", new Date(), "�������ſ����", 2000000, 36);
		������Ȳǥ loan4 = new ������Ȳǥ("K03-05", "�ν·�", new Date(), "�������ñ�ݴ���", 15000000, 60);
		
		������Ȳǥ[] loanArr = {
				new ������Ȳǥ("J02-38", "�̹���", new Date(), "�����ڱݴ���", 27000000, 48),
				new ������Ȳǥ("Y04-15", "������", new Date(), "�������ݴ㺸����", 3000000, 36),
				new ������Ȳǥ("M02-06", "��ö��", new Date(), "�������ſ����", 2000000, 36),
				new ������Ȳǥ("K03-05", "�ν·�", new Date(), "�������ñ�ݴ���", 15000000, 60)
		};
		for (int i = 0; i < loanArr.length; i++) {
			System.out.println(loanArr[i].get�����ȣ() + " " + loanArr[i].get����() + " " + loanArr[i].get������() + " " + loanArr[i].get��������() + " " + loanArr[i].get����ݾ�() + " " + loanArr[i].get�Ⱓ());
			loanTotal = loanTotal + loanArr[i].get����ݾ�();
			monthsTotal = monthsTotal + loanArr[i].get�Ⱓ();
			counter = counter +1;
		}
		System.out.println(loanTotal);
		System.out.println((double)monthsTotal/counter);
	}

}
