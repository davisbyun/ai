package javaBasic5.ch08.sec04;


//확인문제 7번
public class DaoExample {

	public static void dbWork( DataAccessObject dao) {
		dao.select();
		dao.insert();
		dao.update();
		dao.delete();
	}
	public static void main(String[] args) {
		dbWork( new OracleDao() );
		dbWork( new MySqlDao() );

	}

}
//역할을 추상메소드로 만들기
interface DataAccessObject{
	void select();
	void insert();
	void update();
	void delete();
}

class MySqlDao implements DataAccessObject {

	@Override
	public void select() {
		System.out.println("MySql DB에서 검색");
		
	}

	@Override
	public void insert() {
		System.out.println("MySql DB에서 삽입");
		
	}

	@Override
	public void update() {
		System.out.println("MySql DB에서 수정");
		
	}

	@Override
	public void delete() {
		System.out.println("MySql DB에서 삭제");
		
	}
	
}



class OracleDao implements DataAccessObject{

	@Override
	public void select() {
		System.out.println("Oracle DB에서 검색");
		
	}

	@Override
	public void insert() {
		System.out.println("Oracle DB에서 삽입");
		
	}

	@Override
	public void update() {
		System.out.println("Oracle DB에서 수정");
	}

	@Override
	public void delete() {
		System.out.println("Oracle DB에서 삭제");
		
	}
	
}

//package javaBasic5.ch08.sec04;
//
////확인문제7번
//public class DaoExample {
//
//	public static void dbWork (DataAccessObject dao) {
//		dao.select();
//		dao.insert();
//		dao.update();
//		dao.delete();
//		
//	}
//	
//	public static void main(String[] args) {
//
//			dbWork(new OracleDao());
//			dbWork(new MySqlDao());
//	}
//
//}
//
////역할용 추상메소드
//interface DataAccessObject {
//	void select();
//	void insert();
//	void update();
//	void delete();
//	
//}
//
//class OracleDao implements DataAccessObject{
//
//	@Override
//	public void select() {
//		System.out.println("Oracle DB에서 검색");
//	}
//
//	@Override
//	public void insert() {
//		System.out.println("Oracle DB에서 삽입");		
//	}
//
//	@Override
//	public void update() {
//		System.out.println("Oracle DB에서 수정");		
//	}
//
//	@Override
//	public void delete() {
//		System.out.println("Oracle DB에서 삭제");		
//	}
//	
//class MySqlDao implements DataAccessObject {
//
//	@Override
//	public void select() {
//		System.out.println("Oracle DB에서 검색");
//	}
//
//	@Override
//	public void insert() {
//		System.out.println("Oracle DB에서 삽입");		
//	}
//
//	@Override
//	public void update() {
//		System.out.println("Oracle DB에서 수정");	
//	}
//
//	@Override
//	public void delete() {
//		System.out.println("Oracle DB에서 삭제");
//	}
//	
//}	
//}
//
