package javaBasic3.ch06.sec12;

public class Computer {
	
	int sum(int ... values) {
		
		int sumVar = 0;
		for(int i = 0; i<values.length ; i++) {
			sumVar += values[i];
		
		}
		return sumVar;
	}
	
	double avg(double...values) {
		double doubleSum =0;
		for(int i = 0; i<values.length ; i++) {
			doubleSum += values[i];
			
	}
	 return doubleSum / values.length;
	}
}
