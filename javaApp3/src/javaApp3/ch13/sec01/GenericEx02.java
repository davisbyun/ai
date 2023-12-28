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
		
		// <?> 모든 타입 이용
		System.out.println(applicant.kind.getClass().getSimpleName() + "이(가) Course1을 등록함");
	}
	
	public static void registerCourse2(Applicant<? extends Student> applicant) {
		// <? extends Student> Student 객체를 포함해서 자식만 이용
		System.out.println( applicant.kind.getClass().getSimpleName() + "이(가) Course2을 등록함");
	}
	
	public static void registerCourse3(Applicant<? super Worker> applicant) {
		// <? super Worker> Worker객체를 포함해서 상위 객체만 이용
		System.out.println( applicant.kind.getClass().getSimpleName() + "이(가) Course3을 등록함");
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