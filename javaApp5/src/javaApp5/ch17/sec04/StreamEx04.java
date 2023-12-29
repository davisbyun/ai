package javaApp5.ch17.sec04;

import java.util.ArrayList;
import java.util.List;

public class StreamEx04 {

	public static void main(String[] args) {
		// p744 요소 정렬하기 - Comparable
	
		List<Student> sList = new ArrayList<Student>();
		sList.add(new Student ("홍길동", 30));
		sList.add(new Student ("신용권", 10));
		sList.add(new Student ("유미선", 20));
	
		//요구사항 점수를 기준으로 오름차순으로 정렬한 스트림 얻기
		
		sList.stream()
			 .sorted()
			 .forEach(p->System.out.println(p.getName() +" "+ p.getScore()));
			 
	}

}

class Student implements Comparable< Student > {
	private String name;
	private int score;
	
	@Override
	public int compareTo(Student o) {
		Integer s = Integer.valueOf(score); //기본형 int를 Integer 객체로 변경함
		Integer os = Integer.valueOf(o.getScore());
		return s.compareTo(os);
	}
	public Student(String name, int score) {
		super();
		this.name = name;
		this.score = score;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
}