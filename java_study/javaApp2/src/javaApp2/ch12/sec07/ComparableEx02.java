package javaApp2.ch12.sec07;

import java.util.TreeSet;

public class ComparableEx02 {

	public static void main(String[] args) {
		Board b1 = new Board(1, "제목1","작성자1");
		Board b2 = new Board(4, "제목8","작성자9");
		Board b3 = new Board(3, "제목0","작성자10");
		Board b4 = new Board(0, "제목2","작성자8");
		
		//TreeSet 객체화 해서 달아주기
		
		TreeSet<Board> ts = new TreeSet<Board>() ;
		ts.add(b1);
		ts.add(b2);
		ts.add(b3);
		ts.add(b4);
		
		for (Board b : ts) {
			System.out.println(b);
		}
			
		//번호순서대로 출력
		//작성자 순서대로 출력
		
		
	}

}


//게시판 객체
class Board implements Comparable<Board> {
	
	Integer no; //게시판번호
	String title; //게시판제목
	String writer; //게시글작성자
	
	public Board(Integer no, String title, String writer) {
		super();
		this.no = no;
		this.title = title;
		this.writer = writer;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return no + " " + title + " " + writer;
		
		
	}
	//번호순서대로
//	@Override
//	public int compareTo(Board o) {
//		if(no == o.no) return 0;
//		else if (no <o.no)  return -1;
//		else return 1;
//		// TODO Auto-generated method stub
	//작성자순
	public int compareTo(Board o) {
		return writer.compareTo(writer);

	}
}