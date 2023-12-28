package javaApp5.ch18.sec01;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class BufferedEx01 {

	public static void main(String[] args) {
		// ������� ������ ���� �ְ� ���� ��� Buffered 
		
		try {
		InputStream is = new FileInputStream("D:\\ai\\study\\java_study\\data\\test3.txt");
		BufferedInputStream bis = new BufferedInputStream(is); //���� ��Ʈ��
		
		OutputStream os = new FileOutputStream("D:\\ai\\study\\java_study\\data\\test3.txt");
		BufferedOutputStream bos = new BufferedOutputStream(os);
		
		long startTime = System.nanoTime();
		
		while(true) {		
			int data = bis.read();
			if(data == -1) break;
			bos.write(data);
			
		}
		
		bos.flush();
		long stopTime = System.nanoTime();
		bos.close();
		os.close();
		bis.close();
		is.close();
		System.out.println("���� �а� ���µ� �ɸ� �ð���?(������)" + (stopTime - startTime));
		
		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
