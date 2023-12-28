package javaApp3.ch13.sec01;

public class GenericEx02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
         Course.registerCourse1(  new Applicant<Person>( new Person() )    );
         Course.registerCourse1(  new Applicant<Worker>( new Worker() )    );
         Course.registerCourse1(  new Applicant<Student>( new Student() )    );
         Course.registerCourse1(  new Applicant<HighStudent>( new HighStudent() )    );
         Course.registerCourse1(  new Applicant<MidleStudent>( new MidleStudent() )    );
         
      //   Course.registerCourse2(  new Applicant<Person>( new Person() )    );
      //   Course.registerCourse2(  new Applicant<Worker>( new Worker() )    );
         Course.registerCourse2(  new Applicant<Student>( new Student() )    );
         Course.registerCourse2(  new Applicant<HighStudent>( new HighStudent() )    );
         Course.registerCourse2(  new Applicant<MidleStudent>( new MidleStudent() )    );
         
         Course.registerCourse3(  new Applicant<Person>( new Person() )    );
         Course.registerCourse3(  new Applicant<Worker>( new Worker() )    );
//         Course.registerCourse3(  new Applicant<Student>( new Student() )    );
//         Course.registerCourse3(  new Applicant<HighStudent>( new HighStudent() )    );
//         Course.registerCourse3(  new Applicant<MidleStudent>( new MidleStudent() )    );
         
         
	}

}

class Applicant<T>{
	public T kind;
	public Applicant(T kind) {
		this.kind = kind;
	}
}
class Course {
	public static void registerCourse1( Applicant<?> applicant) {
		
		// <?> ��� Ÿ�� �̿�
		System.out.println(applicant.kind.getClass().getSimpleName() + "��(��) Course1�� �����");
	}
	
	public static void registerCourse2(Applicant<? extends Student> applicant) {
		// <? extends Student> Student ��ü�� �����ؼ� �ڽĸ� �̿�
		System.out.println( applicant.kind.getClass().getSimpleName() + "��(��) Course2�� �����");
	}
	
	public static void registerCourse3(Applicant<? super Worker> applicant) {
		// <? super Worker> Worker��ü�� �����ؼ� ���� ��ü�� �̿�
		System.out.println( applicant.kind.getClass().getSimpleName() + "��(��) Course3�� �����");
	}
}

class Person {
	
}
class Worker extends Person {
	
}
class Student extends Person {
	
}
class HighStudent extends Student{
	
}
class MidleStudent extends Student{
	
}