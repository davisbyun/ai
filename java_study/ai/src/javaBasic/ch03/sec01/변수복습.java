package javaBasic.ch03.sec01;

public class �������� {

	public static void main(String[] args) {
		String name1 = "��Ÿ��";
		String name2 = "�ڶ���";
		int delivery1 = 15000000;
		int delivery2 = 5000000;
		int price1 = 20000000;
		int price2 = 19000000;
		int total1 = delivery1 + price1;
		int total2 = delivery2 + price2;
		int period1 = 36;
		int period2 = 24;
		float monthly1 = (float)price1/period1;
		float monthly2 = (price2/(period2*1));
		
		System.out.println("������" + "   " + "�����Ѿ�" + "     " + "�ε���" + "    " + "�Һο���" + " " + "��ȯ�Ⱓ" + "      " + "�����Ա�");
		System.out.println(name1 + " " + total1 + " " + delivery1 + " " + price1 + "    " + period1 + "  " + monthly1);
		System.out.println(name2 + " " + total2 + "  " + delivery2 + " " + price2 + "    " + period2 + "  " + monthly2);
		

	}

}
