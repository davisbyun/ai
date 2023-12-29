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
//			OutputStream os = new FileOutputStream("D:\\ai\\study\\java_study\\data\\member3.dat");
//			BufferedOutputStream bos = new BufferedOutputStream(os);
//			ObjectOutputStream oos = new ObjectOutputStream(bos); //객체를 스트림을 만들기 ObjectOutputStream 사용
//			//ObjectOutputStream을 하려면 Member객체를 implements 하기 위해 Serializable 해야 함.
//			Member m1 = new Member("fall","단풍이",10);
//			
//			oos.writeObject(m1);
//			oos.flush();
//			oos.close();
			
			
			InputStream is = new FileInputStream("D:\\ai\\study\\java_study\\data\\member3.dat");
			BufferedInputStream bis = new BufferedInputStream(is);
			ObjectInputStream ois = new ObjectInputStream(bis);
			
			Member iM = (Member)ois.readObject(); //down Cast from Object
			
			System.out.println(iM);
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}

}
class Member implements Serializable {  //Serializable 직렬화 ObjectOutputStream를 하기 위함
	
	private static final long serialVersionUID = -5413711528933648809L;
	
	String id;
	String name;
	int age;
	int point;
	
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

//직렬화 Member 파일로 만든 상태 : member2.dat
//내용은 3개의 필드였다.
//serialVersionUID = 111111

//역직렬화를 시켰을 때 member2.dat 파일을 자바로 입력하기 
//Member 객체 필드는 4개로 변경된 상태
//serialVersionUID = 000000

//직렬화한 Member객체는 역직렬화할 때 객체의 필드가 바뀌면 에러가 발생함.

//해결방법
//serialVersionUID를 사용자가 만들어 준다. 그러면 직렬화 역직렬화 할 때 사용자ID를 사용한다.

