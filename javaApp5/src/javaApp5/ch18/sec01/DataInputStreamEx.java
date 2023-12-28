package javaApp5.ch18.sec01;

import java.io.*;

public class DataInputStreamEx {

	public static void main(String[] args) {
		//�⺻ Ÿ������ ������ϴ� ���� �����ִ� ���� ��Ʈ��
		
		try {
			OutputStream os = new FileOutputStream("D:\\ai\\study\\java_study\\data\\p.db");
			DataOutputStream dos = new DataOutputStream(os);
			dos.writeUTF("ȫ�浿"); //�ѱ��� �����ϴ� �������� ����ϴ� �޼���
			dos.writeDouble(95.5);
			dos.write(1);
			
			dos.writeUTF("���ڹ�");
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
