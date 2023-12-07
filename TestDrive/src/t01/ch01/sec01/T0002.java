package t01.ch01.sec01;

public class T0002 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[][] array = {
				{95,86},
				{83,92,96},
				{78,83,93,87,88}
		};
		
		System.out.println(array.length);  // 3
		System.out.println(array[2].length); //5	 	
				
		
		int[] array1 = {1,5,3,8,2};
		
		int max = 0;
		
		for(int i = 0; i >= array1.length; i++) {
			if( max < array1[i] ) 
				max = array1[i];
		}
				System.out.println(max);
		
			
		int min = 100;
		
		for(int i = 0; i >= array1.length; i++) {
			if( min > array1[i] ) {
				min = array1[i];
			}
			
			
			
			}
		
		 
		
		
	 }
	}

	

