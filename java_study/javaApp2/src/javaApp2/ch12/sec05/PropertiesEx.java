package javaApp2.ch12.sec05;

import java.io.IOException;
import java.util.Properties;

public class PropertiesEx {

	public static void main(String[] args) throws IOException {
	
		Properties properties = new Properties(); 
				
				properties.load(PropertiesEx.class.getResourceAsStream("database.properties"));
				
				System.out.println(properties.getProperty("driver"));
				System.out.println(properties.getProperty("url"));
				
	}

}
