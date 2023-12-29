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
		//MemberŬ������ ���¸� ��Ʈ������ ���� �ܺη� ���ϱ�
		try {
//			OutputStream os = new FileOutputStream("D:\\ai\\study\\java_study\\data\\member3.dat");
//			BufferedOutputStream bos = new BufferedOutputStream(os);
//			ObjectOutputStream oos = new ObjectOutputStream(bos); //��ü�� ��Ʈ���� ����� ObjectOutputStream ���
//			//ObjectOutputStream�� �Ϸ��� Member��ü�� implements �ϱ� ���� Serializable �ؾ� ��.
//			Member m1 = new Member("fall","��ǳ��",10);
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
class Member implements Serializable {  //Serializable ����ȭ ObjectOutputStream�� �ϱ� ����
	
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

//����ȭ Member ���Ϸ� ���� ���� : member2.dat
//������ 3���� �ʵ忴��.
//serialVersionUID = 111111

//������ȭ�� ������ �� member2.dat ������ �ڹٷ� �Է��ϱ� 
//Member ��ü �ʵ�� 4���� ����� ����
//serialVersionUID = 000000

//����ȭ�� Member��ü�� ������ȭ�� �� ��ü�� �ʵ尡 �ٲ�� ������ �߻���.

//�ذ���
//serialVersionUID�� ����ڰ� ����� �ش�. �׷��� ����ȭ ������ȭ �� �� �����ID�� ����Ѵ�.

