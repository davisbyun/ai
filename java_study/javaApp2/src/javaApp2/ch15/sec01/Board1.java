package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class Board1 {

	

	public static void main(String[] args) {
		

		
				
		Board b1 = new Board("홍길동", "자바", "어렵다");
		Board b2 = new Board("이순신", "파이썬", "쉽다");
		Board b3 = new Board("홍길동", "넌파이", "아직 안 배웠다");
		Board b4 = new Board("홍길동", "넌파이", "아직 안 배웠다");
		Board b5 = new Board("이순신", "판다스", "아직 안 배웠다");
		
		//set 객체화
		Set<Board> bSet = new HashSet<Board>();
		
		//넣기
		bSet.add(b1);
		bSet.add(b2);
		bSet.add(b3);
		bSet.add(b4);
		bSet.add(b5);
		
		//개수
		System.out.println(bSet.size());
		
		//전체출력
		Iterator<Board> it = bSet.iterator();
		while(it.hasNext()) {
			System.out.println(it.next().toString());
			
		//동등객체
			
			
		}
		
		
		
		
		
		
		
	}

	class Board {
		String writer = "작성자";
		String title = "제목";
		String contents = "내용";
		public Board(String writer, String title, String contents) {
			super();
			this.writer = writer;
			this.title = title;
			this.contents = contents;
		}
		
		
		@Override
		public String toString() {
			// TODO Auto-generated method stub
			return writer + " " + title + " " + contents; 
		}
		
		@Override
		public int hashCode() {
			// TODO Auto-generated method stub
			return writer.hashCode() + title.hashCode();
			
		}
		
		@Override
		public boolean equals(Object obj) {
			if(obj instanceof Board ) {
				Board b = (Board)obj;
				if(title.equals(b.title) && writer.equals(b.writer)) {
						// TODO Auto-generated method stub
			return super.equals(obj);
		}
		
		}
		
	}}}



