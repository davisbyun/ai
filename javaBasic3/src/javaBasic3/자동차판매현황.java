package javaBasic3;

public class 자동차판매현황 {
	// 멤버필드로 만들기
     String 차량명;
     int 차량총액;
     int 인도금;
     int 할부원금;
     int 상황기간;
     int 월납입금;
   
    
    public 자동차판매현황(String 차량명, int 차량총액, int 인도금, int 할부원금, int 상황기간, int 월납입금) {
		
		this.차량명 = 차량명;
		this.차량총액 = 차량총액;
		this.인도금 = 인도금;
		this.할부원금 = 할부원금;
		this.상황기간 = 상황기간;
		this.월납입금 = 월납입금;
	}
    
	public 자동차판매현황() {
		
	}



	public String get차량명() {
		return 차량명;
	}
	public void set차량명(String 차량명) {
		this.차량명 = 차량명;
	}
	public int get차량총액() {
		return 차량총액;
	}
	public void set차량총액(int 차량총액) {
		this.차량총액 = 차량총액;
	}
	public int get인도금() {
		return 인도금;
	}
	public void set인도금(int 인도금) {
		this.인도금 = 인도금;
	}
	public int get할부원금() {
		return 할부원금;
	}
	public void set할부원금(int 할부원금) {
		this.할부원금 = 할부원금;
	}
	public int get상황기간() {
		return 상황기간;
	}
	public void set상황기간(int 상황기간) {
		this.상황기간 = 상황기간;
	}
	public int get월납입금() {
		return 월납입금;
	}
	public void set월납입금(int 월납입금) {
		this.월납입금 = 월납입금;
	}
     
    //setter, getter 만들기
     
     
}