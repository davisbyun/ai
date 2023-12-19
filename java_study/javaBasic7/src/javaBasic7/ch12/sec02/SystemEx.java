package javaBasic7.ch12.sec02;

import java.io.IOException;

public class SystemEx {

	public static void main(String[] args) {
		try {
			System.err.println(" 에러부분 출력 빨간색으로 ");
			System.out.println((System.getProperty("os.name")));
			System.out.println((System.getProperty("user.name")));
			System.out.println((System.getProperty("user.dir")));
			System.out.println((System.getProperty("java.home")));
			
			//System.exit(0); //프로세스 종료
			
			System.out.println(System.currentTimeMillis()); //밀리초(1/1000초) 단위로 현재 시간 구함
			System.out.println(System.nanoTime()); //나노초(10^9초)
		
		
			int aa = System.in.read();
			System.out.println(aa);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

}
