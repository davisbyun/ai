package javaBasic2.ch05.sec02;

public class ����Ÿ��2 {

	public static void main(String[] args) {
		A aAddr = new A();
		aAddr.name = "ȫ�浿";
		aAddr.kor = 100;
		aAddr.avg = 3.5;
		A aAddr2 = new A();
		System.out.println(aAddr == aAddr2);
		A aAddr3 = aAddr2;
		System.out.println(aAddr3 == aAddr2);
		B bAddr = new B("Jerry");
		System.out.println(bAddr.name);
		System.out.println(aAddr);
	}

}
