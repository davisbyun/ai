package javaApp2.ch12.sec07;

import java.util.TreeSet;

public class ComparableEx {

	public static void main(String[] args) {
		
		Person p1 = new Person("홍길동", 15);
		Person p2 = new Person("김지바", 55);
		Person p3 = new Person("박지원", 31);
		TreeSet<Person> t1 = new TreeSet<Person>();
		t1.add(p1);
		t1.add(p2);
		t1.add(p3);
		for(Person p : t1) {
			System.out.println(p);
		}
		
		
	}

	
}
class Person implements Comparable<Person> {
	
	String name;
	Integer age;
	public Person(String name, Integer age) {
		super();
		this.name = name;
		this.age = age;
	}
	
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return name + " " + age;
		
	}
//	//이름 순서대로 트리에 달아주세요
//	@Override
//	public int compareTo(Person o) {
//		int result = name.compareTo(o.name);
//		System.out.println((result) + "@@@@");
//		return result;
		
	//나이 순서대로 트리에 달아주기
		
	@Override
	public int compareTo(Person o) {
		if(age==o.age) return 0;
		else if(age<o.age) return -1;
		else return 1;
		
	}
}