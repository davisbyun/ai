package javaBasic.ch05.sec03;

public class 이차원배열 {

	public static void main(String[] args) {
		int[][] intArr = {{1,2}, {2,3}, {3,4}};
		String[][] stringArr = {{"a","b","c"}, {"d","e","f"}};
		boolean[][] booleanArr = {{false,true},{false,true},{true,false},{true,true}};
		System.out.println(booleanArr[3][0]);
		
		for (int i = 0; i < intArr.length; i++) {
			for (int j = 0; j < intArr[i].length; j++) {
				System.out.print(intArr[i][j]);
			}
			System.out.println();
		}
	}

}
