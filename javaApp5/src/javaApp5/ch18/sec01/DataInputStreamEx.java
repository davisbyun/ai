package javaApp5.ch18.sec01;

import java.io.*;

public class DataInputStreamEx {

	public static void main(String[] args) {
		//기본 타입으로 입출력하는 것을 도와주는 보조 스트림
		
		try {
			OutputStream os = new FileOutputStream("D:\\ai\\study\\java_study\\data\\p.db");
			DataOutputStream dos = new DataOutputStream(os);
			dos.writeUTF("홍길동"); //한글을 저장하는 목적으로 사용하는 메서드
			dos.writeDouble(95.5);
			dos.write(1);
			
			dos.writeUTF("김자바");
			dos.writeDouble(90.3);
			dos.writeInt(2);
			
			dos.flush();
			dos.close();
			
			InputStream is = new FileInputStream("D:\\ai\\study\\java_study\\data\\p.db");
			BufferedInputStream bis = new BufferedInputStream(is);
			DataInputStream dis = new DataInputStream(bis);
			
			
			String name = dis.readUTF();
			double score = dis.readDouble();
			int no = dis.readInt();
			System.out.println(name + " " + score + " " + no);
			
			name = dis.readUTF();
			score = dis.readDouble();
			no = dis.readInt();
			System.out.println(name + " " + score + " " + no);
			
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
