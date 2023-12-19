package javaApp1.ch12.sec01;

public class EqualEx {

   public static void main(String[] args) {
      //���ü �� �˰���
      //1�ܰ� hashCode�� ������? 2�ܰ� equals()�� ������?
      //hashCode�� �ֱ����ġ�� ����ɶ� �ּҸ� ����� �ִ� �ڵ���
          Student s1 = new Student( "a123", "p1234");
          System.out.println( s1.hashCode() );
          Student s2 = new Student( "a123", "p1234");
          System.out.println( s2.hashCode() );
      //������ �䱸�����ִµ� id�� pwd������ ���ü�Դϴ�. 
          if( s1.equals(s2)) {
             System.out.println("���� ���");
          }else {
             System.out.println("�ٸ� ���");
          }
   }

}

class Student {
   
   String id;
   String pwd;
   
   public Student(String id, String pwd) {
      this.id = id;
      this.pwd = pwd;
   }
   
   @Override
   public int hashCode() {
      // TODO Auto-generated method stub
      return id.hashCode();
   }
   @Override
   public boolean equals(Object obj) {
      if( obj instanceof Student) {
         Student st = (Student) obj; //Object���� Student������ ��������ȯ
         if( this.id.equals(st.id) && this.pwd.equals(st.pwd) ) {   
            //this.id ù��° ��ü�� "a123"���� st.id�� �ι�° ��ü�� "a123"
            //this.pwd ù��° ��ü�� "p1234"�̰� st.id�� �ι�° ��ü�� "p1235"
            return true;
         }
      }
      return false;
   }
   
   
   
}


//String name="ȫ�浿";
//System.out.println( name.hashCode() );
//String name2 = "�̼���";
//System.out.println( name2.hashCode() );
//String name3 = "ȫ�浿";
//System.out.println( name3.hashCode() );
//
//String name4 = new String("�����");
//System.out.println( name4.hashCode() );
//String name5 = new String("�����");
//System.out.println( name5.hashCode() );


//package javaApp1.ch12.sec01;
//
//public class EqualEx {
//
//	public static void main(String[] args) {
//		//���ü �� �˰���
//		//1�ܰ� hashCode�� ������? 2�ܰ� equals()�� ������?
//		//hashCode�� �ֱ����ġ�� ����� �� �ּҸ� ����� �ִ� �ڵ���
//		/*
//		String name = "ȫ�浿";
//		System.out.println(name.hashCode());
//		
//		String name2 = "�̼���";
//		System.out.println(name2.hashCode());
//		
//		String name3 = "ȫ�浿";
//		System.out.println(name3.hashCode());
//		
//		String name4 = new String("�����");
//		System.out.println(name4.hashCode());
//		String name5 = new String("�����");
//		System.out.println(name5.hashCode());
//		*/
//		
//		Student s1 = new Student("a123", "p1234");
//		System.out.println(s1.hashCode());
//		
//		Student s2 = new Student("a123", "p1235");
//		System.out.println(s2.hashCode());
//		
//		//������ �䱸���� : id �� pwd ������ ���ü�Դϴ�.
//
//		if (s1.equals(s2)) {
//			System.out.println("�������");
//		}else {
//			System.out.println("�ٸ����");
//		}
//		
//		
//		
//		
//	}
//
//}
//
//class Student {
//	
//	
//	String id ;
//	String pwd ;
//	
//	public Student(String id , String pwd ) {
//		this.id = id ;
//		this.pwd = pwd ;
//		
//	}
//
//	@Override
//	public int hashCode() {
//		return id.hashCode();
//	}
//	
//	public boolean equals(Object obj) {
//		if(obj instanceof Student) {
//			Student st = (Student) obj;
//			if(this.id.equals(st.id))
//		
//		return super.equals(st.id) && this.equals(st.pwd) {
//			
//		}	
//		}
//		
//		
//		
//	}
//	
//}