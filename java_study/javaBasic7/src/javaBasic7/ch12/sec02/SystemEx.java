package javaBasic7.ch12.sec02;

import java.io.IOException;

public class SystemEx {

	public static void main(String[] args) {
		try {
			System.err.println(" �����κ� ��� ���������� ");
			System.out.println((System.getProperty("os.name")));
			System.out.println((System.getProperty("user.name")));
			System.out.println((System.getProperty("user.dir")));
			System.out.println((System.getProperty("java.home")));
			
			//System.exit(0); //���μ��� ����
			
			System.out.println(System.currentTimeMillis()); //�и���(1/1000��) ������ ���� �ð� ����
			System.out.println(System.nanoTime()); //������(10^9��)
		
		
			int aa = System.in.read();
			System.out.println(aa);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

}
