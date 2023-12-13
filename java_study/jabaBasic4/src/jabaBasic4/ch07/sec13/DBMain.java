package jabaBasic4.ch07.sec13;

public class DBMain {

	public static void main(String[] args) {
		Connect myConnect = new Connect();
		
		
		//오라클
		
		myConnect.db = new Oracle();
		myConnect.dbRun();
	
		//MySQL
		myConnect.db = new MySQL();
		myConnect.dbRun();
		
		//몽고
		myConnect.db = new MongoDB();
		myConnect.dbRun();
	
	}

}

class Connect {
	
	//필드 선언하는데 부모 타입필드를 선언
	DB db;
	
	public void dbRun() {
		db.equals();
		
	}
	
	

}
