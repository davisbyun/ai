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
			
			os.flush(); //버퍼 메모리 = (임시기억장치(예:ctrl+c, ctrl+v)) //버퍼 메모리에 담긴 내용을 모두 출력하라.	
			os.close(); //파일 사용 닫기			 
			
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  //저장할 경로명  
		  catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
