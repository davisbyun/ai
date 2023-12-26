package javaApp2;

import java.time.LocalDateTime;
import java.util.LinkedList;

public class LinkedListEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		LinkedList<Board> boardList = new LinkedList<Board>();
		
		Board b1 = new Board(1, "제목1", "내용1", "홍길동", LocalDateTime.now() );
		Board b2 = new Board(2, "제목2", "내용2", "이순신", LocalDateTime.now() );
		Board b3 = new Board(3, "제목3", "내용3", "최경미", LocalDateTime.now() );
		//삽입하기
		boardList.add( b1 );
		boardList.add( b2 );
		boardList.add( b3 );
		
		System.out.println( boardList.get(0));  // b1의 참조변수값이 나온다. 
		System.out.println( boardList.get(1).title); //b의 참조변수값안에 title을 출력
		System.out.println( boardList.get(2).writer);
		System.out.println( boardList.get(2).writeDate);
		
		Board b0 = new Board(0, "제목0", "내용0", "관리자", LocalDateTime.now() );
		//0번인덱스에 b0을 삽입하세요
		boardList.add(0, b0);
		//"최경미가 있습니까?"
		// 1단계 최경미가 있는 클래스 주소를 찾아야 됨
		
		// 1단계
		Board findAddress = null; //찾는 사람의 주소를 담을 변수 
		
		for ( int i=0; i<boardList.size(); i++) {
			System.out.println( boardList.get(i).writer );
			if ( boardList.get(i).writer.equals("최경미") ) {
				System.out.println( "있습니다.");
				//주소를 변수에 담는다
				findAddress = boardList.get(i);
			}
		}
		// "최경미"씨의 게시글 내용을 찾기 
		System.out.println("찾는 사람 최경미씨가 작성한 게시글 내용은 ? " + findAddress.content );
		
		// 게시글 번호 2번의 게시글 작성자는 누구인가요? 이순신
		for( int i=0; i<boardList.size(); i++) {
			System.out.println( boardList.get(i).no); //전체 게시글 번호
			if( boardList.get(i).no == 2 ) {
				findAddress = boardList.get(i);
			}
		}
		System.out.println( findAddress.writer );
		
		//이순신을 삭제하기
		//1단계 이순신 있는 주소를 찾기 
		
		for( int i=0; i<boardList.size(); i++) {
			
			if( boardList.get(i).writer.equals("이순신") ) {
				findAddress = boardList.get(i);
				System.out.println( findAddress + "~");
			}
		}
		// 2단계 주소를 삭제하기
		boardList.remove(findAddress);
		
		//모든 게시판 내용 출력하기
		for( int i=0; i<boardList.size(); i++) {
			System.out.println( boardList.get(i).toString() );
			//주소 출력하면 자동으로 '.toString()'이 자바 넣어진다
			// toString()은  Object의 메소드입니다. 
		}
		
		
		
		
		
		
		
	}

}

// 게시판 
class Board extends Object{
	int no;//게시판 번호
	String title; //제목
	String content; //내용
	String writer; //작성자
	LocalDateTime writeDate; //작성일
	
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
		return "번호 " + no + "제목 " + title + " 내용 " + content + "작성자 " + writer + " 작성일 " + writeDate;
		
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
//		Board b1 = new Board(1, "제목1", "내용1", "홍길동", LocalDateTime.now() );
//		Board b2 = new Board(2, "제목2", "내용2", "이순신", LocalDateTime.now() );
//		Board b3 = new Board(3, "제목3", "내용3", "최경미", LocalDateTime.now() );
//		//삽입하기
//		boardList.add( b1 );
//		boardList.add( b2 );
//		boardList.add( b3 );
//		
//		System.out.println( boardList.get(0));  // b1의 참조변수값이 나온다. 
//		System.out.println( boardList.get(1).title); //b의 참조변수값안에 title을 출력
//		System.out.println( boardList.get(2).writer);
//		System.out.println( boardList.get(2).writeDate);
//		
//		Board b0 = new Board(0, "제목0", "내용0", "관리자", LocalDateTime.now() );
//		//0번인덱스에 b0을 삽입하세요
//		boardList.add(0, b0);
//		//"최경미가 있습니까?"
//		// 1단계 최경미가 있는 클래스 주소를 찾아야 됨
//		
//		// 1단계
//		Board findAddress = null; //찾는 사람의 주소를 담을 변수 
//		
//		for ( int i=0; i<boardList.size(); i++) {
//			System.out.println( boardList.get(i).writer );
//			if ( boardList.get(i).writer.equals("최경미") ) {
//				System.out.println( "있습니다.");
//				//주소를 변수에 담는다
//				findAddress = boardList.get(i);
//			}
//		}
//		// "최경미"씨의 게시글 내용을 찾기 
//		System.out.println("찾는 사람 최경미씨가 작성한 게시글 내용은 ? " + findAddress.content );
//		
//		// 게시글 번호 2번의 게시글 작성자는 누구인가요? 이순신
//		for( int i=0; i<boardList.size(); i++) {
//			System.out.println( boardList.get(i).no); //전체 게시글 번호
//			if( boardList.get(i).no == 2 ) {
//				findAddress = boardList.get(i);
//			}
//		}
//		System.out.println( findAddress.writer );
//		
//		//이순신을 삭제하기
//		//1단계 이순신 있는 주소를 찾기 
//		
//		for( int i=0; i<boardList.size(); i++) {
//			
//			if( boardList.get(i).writer.equals("이순신") ) {
//				findAddress = boardList.get(i);
//				System.out.println( findAddress + "~");
//			}
//		}
//		// 2단계 주소를 삭제하기
//		boardList.remove(findAddress);
//		
//		//모든 게시판 내용 출력하기
//		for( int i=0; i<boardList.size(); i++) {
//			System.out.println( boardList.get(i).toString() );
//			//주소 출력하면 자동으로 '.toString()'이 자바 넣어진다
//			// toString()은  Object의 메소드입니다. 
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
//// 게시판 
//class Board extends Object{
//	int no;//게시판 번호
//	String title; //제목
//	String content; //내용
//	String writer; //작성자
//	LocalDateTime writeDate; //작성일
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
//		return "번호 " + no + "제목 " + title + " 내용 " + content + "작성자 " + writer + " 작성일 " + writeDate;
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
////		Board b1 = new Board(1, "제목1", "내용1", "홍길동", LocalDateTime.now());
////		Board b2 = new Board(2, "제목2", "내용2", "이순신", LocalDateTime.now());
////		Board b3 = new Board(3, "제목3", "내용3", "최경미", LocalDateTime.now());
////		
////		//삽입하기
////		boardList.add(b1);
////		boardList.add(b2);
////		boardList.add(b3);
////		
////		System.out.println(boardList.get(0)); //b1의 참조변수 값이 나온다.
////		System.out.println(boardList.get(1)); //b2의 참조변수 값이 나온다.
////		System.out.println(boardList.get(2)); //b3의 참조변수 값이 나온다.
////		
////		System.out.println(boardList.get(0).writer); //홍길동
////		System.out.println(boardList.get(1).title); //제목2
////		System.out.println(boardList.get(2).writeDate); //최경미의 날짜
////		
////		Board b0 = new Board(0, "제목0", "내용0", "관리자", LocalDateTime.now());
////		//0번 인덱스에 b0를 삽입하세요.
////		boardList.add(0,b0);
////		//"최경미가 있습니까?
////		//1단계 최경미가 있는 클래스의 주소 찾아가기
////		//2단계 클래스 주소가 링크드 리스트에 있는지 찾아야 함
////		//#1단계
////		
////		Board findAddress =null; //찾는 사람의 주소를 담을 변수 
////		for(int i =0 ; i<boardList.size(); i++) {
////			System.out.println(boardList.get(i).writer);
////			if (boardList.get(i).writer.equals("최경미") ){
////				System.out.println("있습니다.");
////				//주소를 변수에 담고 다음 "최경미"씨의 게시글 내용을 찾기 문제 풀기
////				findAddress = boardList.get(i);
////			}	
////		}
////		
////		//"최경미"씨의 게시글 내용을 찾기
////			System.out.println("찾는 사람 최경미씨가 작성한 게시글 내용은?" + findAddress.contents);
////			
////		//게시글 번호 2번의 작성자는 누구인가요?	
////			for(int i =0; i<boardList.size(); i++) {
////				System.out.println(boardList.get(i).no);
////				if(boardList.get(i).no == 2 ) {
////					findAddress = boardList.get(i);
////				}
////			}
////			System.out.println(findAddress.writer);
////			
////		//이순신 삭제하기
////		//생각 1단계 이순신 있는 주소를 찾기 2단계 주소 삭제
////			for(int i = 0; i<boardList.size(); i++) {
////				if (boardList.get(i).writer.equals("이순신")) {
////					System.out.println(findAddress + " ~ ");
////				}
////			}
////				boardList.remove(findAddress);
////				
////		
////			for(int i = 0; i<boardList.size(); i++) {
////				 	
////				System.out.println(boardList.get(i).toString() + " ");
////					//주소 출력하면 자동으로 .toString() 이 자바가 넣는다.
////					//toString은 Object의 메소드입니다.
////					
////		}
////			}
////			
////}		
////	
////
////
////
//////게시판
////class Board {
////	
////	int no; //게시판 번호
////	String title; //제목
////	String contents; //내용
////	String writer; //작성자
////	LocalDateTime writeDate; //작성일
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
////		return "번호" + no + "제목" + title +"내용" + contents + "작성자" + writer + "작성일" + writeDate	;
////}
////}