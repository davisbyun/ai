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
		// ��ǥ: 1�ܰ�, �÷���, �迭�� ��Ʈ������ ����� ���
		
		List<Product> list = new ArrayList<Product>();
		
		// �ڷ�ֱ�
		for (int i = 1 ;i<= 5 ; i++) {
			Product product = new Product(i, "��ǰ"+i,"����ȸ��" , (int)(10000*Math.random())); // 0.0<=Math.random<1.0 
			list.add(product);
		}
		
		//�� �÷��� ---> Stream���� �����
		
		Stream<Product> stream = list.stream();
		
		//�߰� �ܲ� ���� �� �����ܰ�
		stream.forEach(p->System.out.println((p)));
		
		//���� �ڵ带 ���� ��
		list.stream()
			.forEach(p->System.out.println((p)));
		
		//�迭�� ��Ʈ������ 
		String[] strArr = {"ȫ�浿", "�ſ��", "��̳�"};
		Stream<String> streamStr = Arrays.stream(strArr); //�迭�� ��Ʈ������...
			
		streamStr.filter(t->t.startsWith("��")) 
				.forEach(p->System.out.println(p));
				
		IntStream is = IntStream.range(1, 101); // 1<= nIntStream.range < 101
		System.out.println(is.count()); //100 ���� ��Ʈ������ �������� ��Ʈ���� ��ᰡ �Ҹ�ȴ�. 
		
		is = IntStream.range(1, 101);  // �ƽ� ���� ���ϱ� ���ؼ� ������ �������� ��Ʈ���� �ٽ� �������� �Ѵ�.
		System.out.println(is.max().toString()); //100
		
		is = IntStream.range(1, 101);
		System.out.println(is.min().toString()); //1
		
		//���Ϸκ��� ��Ʈ�� ���
		//���� ���α׷�����data.txt �ڷḦ ������ ����
		Path path = Paths.get(StreamEx02.class.getResource("data.txt").toURI() );
		//�ش� ����� ������ ��Ʈ������ �ٲپ� �ش�. Charset.defaultCharset() ������ �����ڵ�� �ڹ��� �⺻ �����ڵ�(UTF-9)�� �̿�
		Stream<String> fileStream = Files.lines(path);
		fileStream.forEach(p->System.out.println(p));
		fileStream.close(); //������ �޸𸮸� Ŭ���� �ϱ�
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
