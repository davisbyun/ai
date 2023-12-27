package javaApp2.ch15.sec02;

import java.util.Comparator;
import java.util.TreeSet;

public class ComparatorEx {

	public static void main(String[] args) {
		// 
		
		Fruit f1 = new Fruit("����",3000);
		Fruit f2 = new Fruit("����",10000);
		Fruit f3 = new Fruit("����",6000);
		
//		TreeSet<Fruit> ts = new TreeSet<Fruit>();
		
		TreeSet<Fruit> ts = new TreeSet<Fruit>(new FruitCom());
		ts.add(f1);
		ts.add(f2);
		ts.add(f3);
		
		//��ü ����ϱ�
		for(Fruit t : ts ) {
			System.out.println(t.name + " " + t.price);
		}
		
	}

}

//���ϰ�ü
class Fruit implements Comparable<Fruit> {
	String name; //���ϸ�
	Integer price; //���ϰ���
	public Fruit(String name, Integer price) {
		super();
		this.name = name;
		this.price = price;
	}
}	
//	@Override
//	public int compareTo(Fruit o) {
//		// TODO Auto-generated method stub
//		return name.compareTo(o.name);

	

//Ŭ���� ���� - ���� �ڵ常 ����
class FruitCom implements Comparator<Fruit> {

//	@Override
//	public int compare(Fruit o1, Fruit o2) {
//		// o1 Ʈ���� �޷� �ִ� �ڷ�(����), o2 Ʈ���� �޾Ƽ� ���� �ڷ�(����)
//		return o1.name.compareTo(o2.name);
//		���ϸ������ �޾���



	@Override
	public int compare(Fruit o1, Fruit o2) {
		// o1 Ʈ���� �޷� �ִ� �ڷ�(����), o2 Ʈ���� �޾Ƽ� ���� �ڷ�(����)
		return o1.price.compareTo(o2.price);
		//���ݼ�

	}

}