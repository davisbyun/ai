package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx4 {

	public static void main(String[] args) {
		//Board Ŭ������ ��üȭ�ϱ�
		Board b1 = new Board("ȫ�浿", "�ڹ�", "��ƴ�");
		Board b2 = new Board("�̼���", "���̽�", "����");
		Board b3 = new Board("ȫ�浿", "������", "���� �� �����");
		Board b4 = new Board("ȫ�浿", "������", "���� �� �����");
		Board b5 = new Board("�̼���", "�Ǵٽ�", "���� �� �����");
		
		//Set ��üȭ�ϱ�
		Set<Board> bSet=new HashSet<Board>();
		// �ֱ�
		bSet.add( b1 );
		bSet.add( b2 );
		bSet.add( b3 );
		bSet.add( b4 );
		bSet.add( b5 );
		// ����?
		System.out.println(  bSet.size() );
		// ��ü ����ϱ�
		Iterator<Board> it = bSet.iterator();
		while( it.hasNext() ) {
			System.out.println( it.next().toString()  );
		}

	}

}

class Board {
	String writer;
	String title;
	String content;
	
	public Board(String writer, String title, String content) {
		super();
		this.writer = writer;
		this.title = title;
		this.content = content;
	}
	
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return writer.hashCode() + title.hashCode() ;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Board) {
			Board b = (Board) obj;
			if( title.equals(b.title) && writer.equals(b.writer) ) 
					return true;
				
		}
		return false;
	}
	
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return writer +" " + title + " " + content;
	}
	
}
