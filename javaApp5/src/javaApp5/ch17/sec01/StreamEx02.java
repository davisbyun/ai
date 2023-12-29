package javaApp5.ch17.sec01;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class StreamEx02 {

	public static void main(String[] args) throws URISyntaxException, IOException {
		// 목표: 1단계, 컬렉션, 배열을 스트림으로 만드는 방법
		
		List<Product> list = new ArrayList<Product>();
		
		// 자료넣기
		for (int i = 1 ;i<= 5 ; i++) {
			Product product = new Product(i, "상품"+i,"멋진회사" , (int)(10000*Math.random())); // 0.0<=Math.random<1.0 
			list.add(product);
		}
		
		//위 컬렉션 ---> Stream으로 만들기
		
		Stream<Product> stream = list.stream();
		
		//중간 단꼐 생략 및 최종단계
		stream.forEach(p->System.out.println((p)));
		
		//위의 코드를 줄인 것
		list.stream()
			.forEach(p->System.out.println((p)));
		
		//배열을 스트림으로 
		String[] strArr = {"홍길동", "신용권", "김미나"};
		Stream<String> streamStr = Arrays.stream(strArr); //배열이 스트림으로...
			
		streamStr.filter(t->t.startsWith("신")) 
				.forEach(p->System.out.println(p));
				
		IntStream is = IntStream.range(1, 101); // 1<= nIntStream.range < 101
		System.out.println(is.count()); //100 최종 스트림으로 오리지널 스트림의 재료가 소멸된다. 
		
		is = IntStream.range(1, 101);  // 맥스 값을 구하기 위해서 소진된 오리지널 스트림을 다시 만들어줘야 한다.
		System.out.println(is.max().toString()); //100
		
		is = IntStream.range(1, 101);
		System.out.println(is.min().toString()); //1
		
		//파일로부터 스트림 얻기
		//현재 프로그램으로data.txt 자료를 가지고 오기
		Path path = Paths.get(StreamEx02.class.getResource("data.txt").toURI() );
		//해당 경로의 파일을 스트림으로 바꾸어 준다. Charset.defaultCharset() 문자의 유니코드는 자바의 기본 유니코드(UTF-9)를 이용
		Stream<String> fileStream = Files.lines(path);
		fileStream.forEach(p->System.out.println(p));
		fileStream.close(); //파일의 메모리를 클로즈 하기
	}

}
class Product {
	
	private int pno;
	private String name;
	private String company;
	private int price;
	public Product(int pno, String name, String company, int price) {
		super();
		this.pno = pno;
		this.name = name;
		this.company = company;
		this.price = price;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return pno + " " + name + " " + company + " " + price; 
		
	}
	
}
