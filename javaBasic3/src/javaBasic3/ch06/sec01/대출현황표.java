package javaBasic3.ch06.sec01;

import java.util.Date;

public class ������Ȳǥ {
	
	//�ɹ��ʵ� 
	
	String �����ȣ;
	String ����;
	Date ������;
	String ��������;
	int ����ݾ�;
	int �Ⱓ;
	
	//soucre -> Generate Constructor using field --> diselect ����
	public ������Ȳǥ() {   
		super();
	}

	//soucre -> Generate Constructor using field --> dselect all ����
	public ������Ȳǥ(String �����ȣ, String ����, Date ������, String ��������, int ����ݾ�, int �Ⱓ) {
		super();
		this.�����ȣ = �����ȣ;
		this.���� = ����;
		this.������ = ������;
		this.�������� = ��������;
		this.����ݾ� = ����ݾ�;
		this.�Ⱓ = �Ⱓ;
	}

	//getter setter -->source -->Generate Getter and Setter
	
	public String get�����ȣ() {
		return �����ȣ;
	}

	public void set�����ȣ(String �����ȣ) {
		this.�����ȣ = �����ȣ;
	}

	public String get����() {
		return ����;
	}

	public void set����(String ����) {
		this.���� = ����;
	}

	public Date get������() {
		return ������;
	}

	public void set������(Date ������) {
		this.������ = ������;
	}

	public String get��������() {
		return ��������;
	}

	public void set��������(String ��������) {
		this.�������� = ��������;
	}

	public int get����ݾ�() {
		return ����ݾ�;
	}

	public void set����ݾ�(int ����ݾ�) {
		this.����ݾ� = ����ݾ�;
	}

	public int get�Ⱓ() {
		return �Ⱓ;
	}

	public void set�Ⱓ(int �Ⱓ) {
		this.�Ⱓ = �Ⱓ;
	}
	
	
	
	
	
	//������
	
	
	
}
