package javaBasic.ch04.sec01;

public class While¹® {

	public static void main(String[] args) {
//		int a=0;
//		while(a<20) {
//			a=a+1;
//			if(a%5==0) {
//				continue;
//			}
//			else {
//				System.out.println(a);				
//			}
//		}
//		int a = 0;
//		int sum = 0;
//		while(a<100) {
//			a=a+1;
//			sum=sum+a;
//			if(sum>3000) {
//				System.out.println(a + " " + sum);
//				break;
//			}
//		}
		int a = 0;
		int b = 0;
		while(a<100) {
			a = a+1;
			b = b+a;
			System.out.println(a + " " + b);
		}
	}

}
