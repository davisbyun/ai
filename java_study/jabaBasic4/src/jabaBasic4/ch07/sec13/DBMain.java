package jabaBasic4.ch07.sec13;

public class DBMain {

	public static void main(String[] args) {
		Connect myConnect = new Connect();
		
		
		//����Ŭ
		
		myConnect.db = new Oracle();
		myConnect.dbRun();
	
		//MySQL
		myConnect.db = new MySQL();
		myConnect.dbRun();
		
		//����
		myConnect.db = new MongoDB();
		myConnect.dbRun();
	
	}

}

class Connect {
	
	//�ʵ� �����ϴµ� �θ� Ÿ���ʵ带 ����
	DB db;
	
	public void dbRun() {
		db.equals();
		
	}
	
	

}
