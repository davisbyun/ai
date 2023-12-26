package javaApp2.ch12.sec07;

import java.util.TreeSet;

public class ComparableEx02 {

	public static void main(String[] args) {
		Board b1 = new Board(1, "����1","�ۼ���1");
		Board b2 = new Board(4, "����8","�ۼ���9");
		Board b3 = new Board(3, "����0","�ۼ���10");
		Board b4 = new Board(0, "����2","�ۼ���8");
		
		//TreeSet ��üȭ �ؼ� �޾��ֱ�
		
		TreeSet<Board> ts = new TreeSet<Board>() ;
		ts.add(b1);
		ts.add(b2);
		ts.add(b3);
		ts.add(b4);
		
		for (Board b : ts) {
			System.out.println(b);
		}
			
		//��ȣ������� ���
		//�ۼ��� ������� ���
		
		
	}

}


//�Խ��� ��ü
class Board implements Comparable<Board> {
	
	Integer no; //�Խ��ǹ�ȣ
	String title; //�Խ�������
	String writer; //�Խñ��ۼ���
	
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
	//��ȣ�������
//	@Override
//	public int compareTo(Board o) {
//		if(no == o.no) return 0;
//		else if (no <o.no)  return -1;
//		else return 1;
//		// TODO Auto-generated method stub
	//�ۼ��ڼ�
	public int compareTo(Board o) {
		return writer.compareTo(writer);

	}
}