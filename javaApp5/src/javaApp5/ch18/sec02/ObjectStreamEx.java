package javaApp5.ch18.sec02;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;


public class ObjectStreamEx {

	public static void main(String[] args) {
		//Member클래스의 형태를 스트림으로 만들어서 외부로 보니기
		try {
			OutputStream os = new FileOutputStream("D:\\ai\\study\\java_study\\data\\member.dat");
			BufferedOutputStream bos = new BufferedOutputStream(os);
			ObjectOutputStream oos = new ObjectOutputStream(bos); //객체를 스트림을 만들기 ObjectOutputStream 사용
			//ObjectOutputStream을 하려면 Member객체를 implements 하기 위해 Serializable 해야 함.
			Member m1 = new Member("fall","단풍이",10);
			
			oos.writeObject(m1);
			oos.flush();
			oos.close();
			
			InputStream is = new FileInputStream("D:\\ai\\study\\java_study\\data\\member.dat");
			BufferedInputStream bis = new BufferedInputStream(is);
			ObjectInputStream ois = new ObjectInputStream(bis);
			
			Member iM = (Member)ois.readObject(); //down Cast from Object
			
			System.out.println(iM);
			
			
		} catch (IOException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}

}
class Member implements Serializable {  //Serializable 직렬화 ObjectOutputStream를 하기 위함
	
	String id;
	String name;
	int age;
	
	public Member(String id, String name, int age) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return id + " " + name + " " + age;
		
	}
	
	
}