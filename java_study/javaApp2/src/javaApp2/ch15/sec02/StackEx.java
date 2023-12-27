package javaApp2.ch15.sec02;

import java.util.Stack;

public class StackEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Stack<Coin> coinBox = new Stack<Coin>();
		coinBox.push(new Coin(100));
		coinBox.push(new Coin(50));
		coinBox.push(new Coin(500));
		coinBox.push(new Coin(10));
		coinBox.push(new Coin(500));
		coinBox.push(new Coin(500));
		System.out.println(coinBox.size()); //6
		while(!coinBox.isEmpty()) {
			Coin coin = coinBox.pop();
			System.out.println("²¨³»¿Â µ¿Àü : " + coin.getValue());
		}
	}

	
}

class Coin {
	
	private int value;

	public Coin(int value) {
		super();
		this.value = value;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}
	
	
	
	
	
	}
