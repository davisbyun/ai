package javaApp5.ch18.sec01;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class WriterEx01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		try {
			OutputStream os = new FileOutputStream("D:\\ai\\study\\java_study\\data\\test2.txt");
			
			byte a = 10;
			byte b = 20;
			byte c = 30;
			byte[] bArr = {100,127,-127};
			
			os.write(a);
			os.write(b);
			os.write(c);
			
			os.write(bArr);
			
			os.flush(); //���� �޸� = (�ӽñ����ġ(��:ctrl+c, ctrl+v)) //���� �޸𸮿� ��� ������ ��� ����϶�.	
			os.close(); //���� ��� �ݱ�			 
			
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  //������ ��θ�  
		  catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
