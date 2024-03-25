package com.shop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class ShopApplication {

	public static void main(String[] args) {
		SpringApplication.run(ShopApplication.class, args);
	}

	@GetMapping( "/hello")
	public String helloMethod() {
		return "Hello spring"; 
	}
	
	@GetMapping( "/shop")
	public String shopMethod() {
		return "shop shopping"; 
	}
	
}
