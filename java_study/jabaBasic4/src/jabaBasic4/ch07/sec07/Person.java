package jabaBasic4.ch07.sec07;
//�θ�Ŭ����
public class Person {

		String name;
		int age;
		final int max=100;
		
		public final void eat() {
			System.out.println("�Ϲ� ���� �Դ´�.");
			//max = max-50; final ������ ���� �Ұ�
			
		}

		public Person() {
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public int getAge() {
			return age;
		}

		public void setAge(int age) {
			this.age = age;
		}
		
		
}
