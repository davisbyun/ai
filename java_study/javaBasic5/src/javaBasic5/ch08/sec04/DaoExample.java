package javaBasic5.ch08.sec04;

//Ȯ�ι���7��
public class DaoExample {

	public static void dbWork (DataAccessObject dao) {
		dao.select();
		dao.insert();
		dao.update();
		dao.delete();
		
	}
	
	public static void main(String[] args) {

			dbWork(new OracleDao());
			dbWork(new MySqlDao());
	}

}

//���ҿ� �߻�޼ҵ�
interface DataAccessObject {
	void select();
	void insert();
	void update();
	void delete();
	
}

class OracleDao implements DataAccessObject{

	@Override
	public void select() {
		System.out.println("Oracle DB���� �˻�");
	}

	@Override
	public void insert() {
		System.out.println("Oracle DB���� ����");		
	}

	@Override
	public void update() {
		System.out.println("Oracle DB���� ����");		
	}

	@Override
	public void delete() {
		System.out.println("Oracle DB���� ����");		
	}
	
class MySqlDao implements DataAccessObject {

	@Override
	public void select() {
		System.out.println("Oracle DB���� �˻�");
	}

	@Override
	public void insert() {
		System.out.println("Oracle DB���� ����");		
	}

	@Override
	public void update() {
		System.out.println("Oracle DB���� ����");	
	}

	@Override
	public void delete() {
		System.out.println("Oracle DB���� ����");
	}
	
}	
}

