package javaBasic.ch05.sec03;

public class �迭���� {

	public static void main(String[] args) {
//		int[] arr = new int[] {1,2,3,4,5};
//		System.out.println(arr[0]);
//		String[] sArr  = new String[] {"a", "b"};
//		System.out.println(sArr[1]);
//		double[] dArr = new double[] {1.1, 2.2, 3.3};
//		System.out.println(dArr[2]);
//		boolean[] bArr = new boolean[] {true, false};
//		byte[] byArr = new byte[] {1,2,3};
//		short[] shArr = new short[] {6,7};
//		float[] flArr = new float[] {1.1f, 2.2f};
//		arr[0]=10;
//		int[] intArr = new int[3];
//		double[] doubleArr = new double[5];
//		intArr[0] = 3;
//		intArr[1] = 5;
//		intArr[2] = 7;
//		String[] stringArr = new String[4];
//		stringArr[0] = "a";
//		stringArr[1] = "b";
//		stringArr[2] = "c";
//		stringArr[3] = "d";
//		System.out.println(stringArr[0]);
//		int[] intArr = new int[100];
//		System.out.print("{");
//		for(int i=0; i<100; i=i+1) {
//			intArr[i]=i+1;
//		}
//		for(int i=0; i<100; i=i+1) {
//			System.out.print(+intArr[i]+", ");
//		}
//		System.out.print("}");
//		int[] intArr = null;
//		int[] score = new int[] {100,90,80,70,60};
//		int sum = 0;
//		for(int i=0; i<5; i=i+1) {
//			sum = sum + score[i];
//		}
//		int avg = sum/5;
//		System.out.println(score.length);
//		System.out.println(avg);
//		String[] season = new String[] {"Spring", "Summer", "Fall", "Winter"};
//		System.out.println("season[0] : " + season[0]);
//		System.out.println("season[1] : " + season[1]);
//		System.out.println("season[2] : " + season[2]);
//		System.out.println("season[3] : " + season[3]);
//		
//		season[1] = "����";
//		System.out.println("season[1] : " + season[1]);
//		System.out.println();
//		
//		int[] scores = new int[] {83, 90, 87};
//		int sum =0;
//		for(int i=0; i<3; i=i+1) {
//			sum = sum + scores[i];
//		}
//		System.out.println("���� : " + sum);
//		double avg = (double)sum/3;
//		System.out.println("��� : " + avg);
//		int[] arr = new int[5];
//		System.out.println(arr[0]);
//		String[] name = {"ȫ�浿", "�����", "�̰���"};
//		int[] score = {100, 90, 85};
//		for(int i=0; i<name.length; i=i+1) {
//			System.out.println(name[i] + " " + score[i]);
//		}
//		System.out.println("�ڵ��� �Ǹ� ��Ȳ");
//		String[] name = {"��Ÿ��", "�ڶ���"};
//		int[] delivery = {15000000, 5000000};
//		int[] price = {20000000, 19000000};
//		int[] months = {36, 24};
//		int[] total = new int[name.length];
//		double[] monthly = new double[name.length];
//		for(int i=0; i<name.length; i=i+1) {
//			total[i] = delivery[i] + price[i];
//		}
//		for(int i=0; i<name.length; i=i+1) {
//			monthly[i] = (double)price[i]/months[i];
//		}
//		for(int i=0; i<name.length; i=i+1) {
//			System.out.print(name[i]);
//			System.out.print(" " + total[i]);
//			System.out.print(" " + delivery[i]);
//			System.out.print(" " + price[i]);
//			System.out.print(" " + months[i]);
//			System.out.print(" " + monthly[i]);
//			System.out.println();
//		}
		
//		String[] name = {"�̹���", "����ö", "���ẹ", "�ξֶ�"};
//		String loan = "�����ڱݴ���";
//		int[] amount = {27000000, 15000000, 15000000, 12000000};
//		int[] months = {48, 60, 60, 60};
//		int sum = 0;
//		
//		System.out.println(" ����    ��������   ����ݾ� �Ⱓ  ����ȯ��   ��ü�հ�");
//		for(int i=0; i<name.length; i=i+1) {
//			sum = sum + amount[i];
//			System.out.println(name[i] + " " + loan + " " + amount[i] + " " + months[i] + " " + amount[i]/months[i] + " " + sum);
//		}
		int[] no = {1, 3, 8, 9};
		String[] id = new String[no.length];
		String[] name = {"ȫ�浿", "�̵���", "�ѹ̿�", "������"};
		String[] dep = {"�ѹ���", "������", "�λ��", "������"};
		String[] sex = new String[no.length];
		for(int i=0; i<no.length; i=i+1) {
			if(name[i].equals("ȫ�浿") || name[i].equals("�̵���") || name[i].equals("�ѹ̿�") || name[i].equals("������")) {
				sex[i]="��";
			}
			else {
				sex[i]="��";
			}
		}
		System.out.println("���  �̸�   �μ�  ����");
		for(int i=0; i<no.length; i=i+1) {
			if(no[i]<10) {
				id[i]="J000"+no[i];
			}
			System.out.println(id[i] + "  " + name[i] + "  " + dep[i] + "   " + sex[i] );
		}
		
		for(int i=0; i<no.length; i=i+1) {
			if(dep[i].equals("������")) {
				System.out.println(name[i]);
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
