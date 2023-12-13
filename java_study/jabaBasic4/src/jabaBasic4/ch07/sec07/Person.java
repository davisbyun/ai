package jabaBasic4.ch07.sec07;
//부모클래스
public class Person {

		String name;
		int age;
		final int max=100;
		
		public final void eat() {
			System.out.println("일반 밥을 먹는다.");
			//max = max-50; final 변수로 변경 불가
			
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
