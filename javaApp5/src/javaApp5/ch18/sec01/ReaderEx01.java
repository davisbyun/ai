package javaApp5.ch18.sec01;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ReaderEx01 {

	public static void main(String[] args) {
		//�Է� ��Ʈ��
		try {
			//������ �о�� �����ϱ� ����
			InputStream is = new FileInputStream("D:\\ai\\study\\java_study\\data\\unnamed.jpg");
			OutputStream os  = new FileOutputStream("D:\\ai\\study\\java_study\\data\\unnamed.jpg");
			byte[] bArr = new byte[100];
			byte[] wArr = new byte[100];
			while(true) {
			int data = is.read(); // �⺻(read())�� 1byte�д´�.
			if(data == -1)  break;  //-1�� �����Ͱ� ���̶�� ��
				os.write(data);
			}
			os.flush();
			os.close();
			is.close();
			
		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

		
	}

}
