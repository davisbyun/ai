package javaApp2;

import java.time.LocalDateTime;
import java.util.LinkedList;

public class LinkedListEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		LinkedList<Board> boardList = new LinkedList<Board>();
		
		Board b1 = new Board(1, "����1", "����1", "ȫ�浿", LocalDateTime.now() );
		Board b2 = new Board(2, "����2", "����2", "�̼���", LocalDateTime.now() );
		Board b3 = new Board(3, "����3", "����3", "�ְ��", LocalDateTime.now() );
		//�����ϱ�
		boardList.add( b1 );
		boardList.add( b2 );
		boardList.add( b3 );
		
		System.out.println( boardList.get(0));  // b1�� ������������ ���´�. 
		System.out.println( boardList.get(1).title); //b�� �����������ȿ� title�� ���
		System.out.println( boardList.get(2).writer);
		System.out.println( boardList.get(2).writeDate);
		
		Board b0 = new Board(0, "����0", "����0", "������", LocalDateTime.now() );
		//0���ε����� b0�� �����ϼ���
		boardList.add(0, b0);
		//"�ְ�̰� �ֽ��ϱ�?"
		// 1�ܰ� �ְ�̰� �ִ� Ŭ���� �ּҸ� ã�ƾ� ��
		
		// 1�ܰ�
		Board findAddress = null; //ã�� ����� �ּҸ� ���� ���� 
		
		for ( int i=0; i<boardList.size(); i++) {
			System.out.println( boardList.get(i).writer );
			if ( boardList.get(i).writer.equals("�ְ��") ) {
				System.out.println( "�ֽ��ϴ�.");
				//�ּҸ� ������ ��´�
				findAddress = boardList.get(i);
			}
		}
		// "�ְ��"���� �Խñ� ������ ã�� 
		System.out.println("ã�� ��� �ְ�̾��� �ۼ��� �Խñ� ������ ? " + findAddress.content );
		
		// �Խñ� ��ȣ 2���� �Խñ� �ۼ��ڴ� �����ΰ���? �̼���
		for( int i=0; i<boardList.size(); i++) {
			System.out.println( boardList.get(i).no); //��ü �Խñ� ��ȣ
			if( boardList.get(i).no == 2 ) {
				findAddress = boardList.get(i);
			}
		}
		System.out.println( findAddress.writer );
		
		//�̼����� �����ϱ�
		//1�ܰ� �̼��� �ִ� �ּҸ� ã�� 
		
		for( int i=0; i<boardList.size(); i++) {
			
			if( boardList.get(i).writer.equals("�̼���") ) {
				findAddress = boardList.get(i);
				System.out.println( findAddress + "~");
			}
		}
		// 2�ܰ� �ּҸ� �����ϱ�
		boardList.remove(findAddress);
		
		//��� �Խ��� ���� ����ϱ�
		for( int i=0; i<boardList.size(); i++) {
			System.out.println( boardList.get(i).toString() );
			//�ּ� ����ϸ� �ڵ����� '.toString()'�� �ڹ� �־�����
			// toString()��  Object�� �޼ҵ��Դϴ�. 
		}
		
		
		
		
		
		
		
	}

}

// �Խ��� 
class Board extends Object{
	int no;//�Խ��� ��ȣ
	String title; //����
	String content; //����
	String writer; //�ۼ���
	LocalDateTime writeDate; //�ۼ���
	
	public Board(int no, String title, String content, String writer, LocalDateTime writeDate) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.writeDate = writeDate;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "��ȣ " + no + "���� " + title + " ���� " + content + "�ۼ��� " + writer + " �ۼ��� " + writeDate;
		
	}
	
	
}

//package javaApp2;
//
//import java.time.LocalDateTime;
//import java.util.LinkedList;
//
//public class LinkedListEx {
//
//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//
//		LinkedList<Board> boardList = new LinkedList<Board>();
//		
//		Board b1 = new Board(1, "����1", "����1", "ȫ�浿", LocalDateTime.now() );
//		Board b2 = new Board(2, "����2", "����2", "�̼���", LocalDateTime.now() );
//		Board b3 = new Board(3, "����3", "����3", "�ְ��", LocalDateTime.now() );
//		//�����ϱ�
//		boardList.add( b1 );
//		boardList.add( b2 );
//		boardList.add( b3 );
//		
//		System.out.println( boardList.get(0));  // b1�� ������������ ���´�. 
//		System.out.println( boardList.get(1).title); //b�� �����������ȿ� title�� ���
//		System.out.println( boardList.get(2).writer);
//		System.out.println( boardList.get(2).writeDate);
//		
//		Board b0 = new Board(0, "����0", "����0", "������", LocalDateTime.now() );
//		//0���ε����� b0�� �����ϼ���
//		boardList.add(0, b0);
//		//"�ְ�̰� �ֽ��ϱ�?"
//		// 1�ܰ� �ְ�̰� �ִ� Ŭ���� �ּҸ� ã�ƾ� ��
//		
//		// 1�ܰ�
//		Board findAddress = null; //ã�� ����� �ּҸ� ���� ���� 
//		
//		for ( int i=0; i<boardList.size(); i++) {
//			System.out.println( boardList.get(i).writer );
//			if ( boardList.get(i).writer.equals("�ְ��") ) {
//				System.out.println( "�ֽ��ϴ�.");
//				//�ּҸ� ������ ��´�
//				findAddress = boardList.get(i);
//			}
//		}
//		// "�ְ��"���� �Խñ� ������ ã�� 
//		System.out.println("ã�� ��� �ְ�̾��� �ۼ��� �Խñ� ������ ? " + findAddress.content );
//		
//		// �Խñ� ��ȣ 2���� �Խñ� �ۼ��ڴ� �����ΰ���? �̼���
//		for( int i=0; i<boardList.size(); i++) {
//			System.out.println( boardList.get(i).no); //��ü �Խñ� ��ȣ
//			if( boardList.get(i).no == 2 ) {
//				findAddress = boardList.get(i);
//			}
//		}
//		System.out.println( findAddress.writer );
//		
//		//�̼����� �����ϱ�
//		//1�ܰ� �̼��� �ִ� �ּҸ� ã�� 
//		
//		for( int i=0; i<boardList.size(); i++) {
//			
//			if( boardList.get(i).writer.equals("�̼���") ) {
//				findAddress = boardList.get(i);
//				System.out.println( findAddress + "~");
//			}
//		}
//		// 2�ܰ� �ּҸ� �����ϱ�
//		boardList.remove(findAddress);
//		
//		//��� �Խ��� ���� ����ϱ�
//		for( int i=0; i<boardList.size(); i++) {
//			System.out.println( boardList.get(i).toString() );
//			//�ּ� ����ϸ� �ڵ����� '.toString()'�� �ڹ� �־�����
//			// toString()��  Object�� �޼ҵ��Դϴ�. 
//		}
//		
//		
//		
//		
//		
//		
//		
//	}
//
//}
//
//// �Խ��� 
//class Board extends Object{
//	int no;//�Խ��� ��ȣ
//	String title; //����
//	String content; //����
//	String writer; //�ۼ���
//	LocalDateTime writeDate; //�ۼ���
//	
//	public Board(int no, String title, String content, String writer, LocalDateTime writeDate) {
//		super();
//		this.no = no;
//		this.title = title;
//		this.content = content;
//		this.writer = writer;
//		this.writeDate = writeDate;
//	}
//	
//	@Override
//	public String toString() {
//		// TODO Auto-generated method stub
//		return "��ȣ " + no + "���� " + title + " ���� " + content + "�ۼ��� " + writer + " �ۼ��� " + writeDate;
//		
//	}
//	
//	
//}
////package javaApp2;
////
////import java.time.LocalDate;
////import java.time.LocalDateTime;
////import java.util.LinkedList;
////
////public class LinkedListEx {
////
////	public static void main(String[] args) {
////		// TODO Auto-generated method stub
////
////		LinkedList<Board> boardList = new LinkedList<Board>();
////		Board b1 = new Board(1, "����1", "����1", "ȫ�浿", LocalDateTime.now());
////		Board b2 = new Board(2, "����2", "����2", "�̼���", LocalDateTime.now());
////		Board b3 = new Board(3, "����3", "����3", "�ְ��", LocalDateTime.now());
////		
////		//�����ϱ�
////		boardList.add(b1);
////		boardList.add(b2);
////		boardList.add(b3);
////		
////		System.out.println(boardList.get(0)); //b1�� �������� ���� ���´�.
////		System.out.println(boardList.get(1)); //b2�� �������� ���� ���´�.
////		System.out.println(boardList.get(2)); //b3�� �������� ���� ���´�.
////		
////		System.out.println(boardList.get(0).writer); //ȫ�浿
////		System.out.println(boardList.get(1).title); //����2
////		System.out.println(boardList.get(2).writeDate); //�ְ���� ��¥
////		
////		Board b0 = new Board(0, "����0", "����0", "������", LocalDateTime.now());
////		//0�� �ε����� b0�� �����ϼ���.
////		boardList.add(0,b0);
////		//"�ְ�̰� �ֽ��ϱ�?
////		//1�ܰ� �ְ�̰� �ִ� Ŭ������ �ּ� ã�ư���
////		//2�ܰ� Ŭ���� �ּҰ� ��ũ�� ����Ʈ�� �ִ��� ã�ƾ� ��
////		//#1�ܰ�
////		
////		Board findAddress =null; //ã�� ����� �ּҸ� ���� ���� 
////		for(int i =0 ; i<boardList.size(); i++) {
////			System.out.println(boardList.get(i).writer);
////			if (boardList.get(i).writer.equals("�ְ��") ){
////				System.out.println("�ֽ��ϴ�.");
////				//�ּҸ� ������ ��� ���� "�ְ��"���� �Խñ� ������ ã�� ���� Ǯ��
////				findAddress = boardList.get(i);
////			}	
////		}
////		
////		//"�ְ��"���� �Խñ� ������ ã��
////			System.out.println("ã�� ��� �ְ�̾��� �ۼ��� �Խñ� ������?" + findAddress.contents);
////			
////		//�Խñ� ��ȣ 2���� �ۼ��ڴ� �����ΰ���?	
////			for(int i =0; i<boardList.size(); i++) {
////				System.out.println(boardList.get(i).no);
////				if(boardList.get(i).no == 2 ) {
////					findAddress = boardList.get(i);
////				}
////			}
////			System.out.println(findAddress.writer);
////			
////		//�̼��� �����ϱ�
////		//���� 1�ܰ� �̼��� �ִ� �ּҸ� ã�� 2�ܰ� �ּ� ����
////			for(int i = 0; i<boardList.size(); i++) {
////				if (boardList.get(i).writer.equals("�̼���")) {
////					System.out.println(findAddress + " ~ ");
////				}
////			}
////				boardList.remove(findAddress);
////				
////		
////			for(int i = 0; i<boardList.size(); i++) {
////				 	
////				System.out.println(boardList.get(i).toString() + " ");
////					//�ּ� ����ϸ� �ڵ����� .toString() �� �ڹٰ� �ִ´�.
////					//toString�� Object�� �޼ҵ��Դϴ�.
////					
////		}
////			}
////			
////}		
////	
////
////
////
//////�Խ���
////class Board {
////	
////	int no; //�Խ��� ��ȣ
////	String title; //����
////	String contents; //����
////	String writer; //�ۼ���
////	LocalDateTime writeDate; //�ۼ���
////	
////	public Board(int no, String title, String contents, String writer, LocalDateTime writeDate) {
////		super();
////		this.no = no;
////		this.title = title;
////		this.contents = contents;
////		this.writer = writer;
////		this.writeDate = writeDate;
////	}
////	
////	@Override
////	public String toString() {
////		// TODO Auto-generated method stub
////		return "��ȣ" + no + "����" + title +"����" + contents + "�ۼ���" + writer + "�ۼ���" + writeDate	;
////}
////}