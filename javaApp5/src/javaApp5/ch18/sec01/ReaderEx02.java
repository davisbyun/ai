package javaApp5.ch18.sec01;

import java.io.*; //*은 io내  모든 클래스를 가져온다.

public class ReaderEx02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		try {
			char [] cArr = new char[100];
			Reader r = new FileReader("D:\\ai\\study\\java_study\\data\\test3.txt");  //이미지는 읽어올 수 없다.
			while (true) {
				int data = r.read( cArr );
				if (data== -1 ) break;
				for(int i =0; i<data; i++) {
					System.out.println( (char) cArr[i] );
				}
				
			}
			r.close();
			
			Writer w = FileWriter("D:\\ai\\study\\java_study\\data\\test3.txt");
			
			w.write("abcdef");
			w.write(65); //유니코드 값 65는 문자 A임
		
			w.flush();
			w.close();
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
