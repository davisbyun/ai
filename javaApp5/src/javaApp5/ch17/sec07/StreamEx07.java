package javaApp5.ch17.sec07;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class StreamEx07 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		List<Student> totalList = new ArrayList<Student>();
		totalList.add (  new Student ("ȫ�浿", "��", 92));
		totalList.add (  new Student ("�����", "��", 87));
		totalList.add (  new Student ("���ڹ�", "��", 92));
		totalList.add (  new Student ("������", "��", 93));
		
		//���ڸ� list
		List<Student> maleList = 
		totalList.stream()
						     .filter(t->t.getSex().equals("��"))
						     .collect(Collectors.toList());
		for (Student s : maleList) {
			System.out.println(s.getName() +" "+ s.getSex());
		}
	}

}
class Student {
	private String name;
	private String sex;
	private Integer score;
	public Student(String name, String sex, Integer score) {
		super();
		this.name = name;
		this.sex = sex;
		this.score = score;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}

}

