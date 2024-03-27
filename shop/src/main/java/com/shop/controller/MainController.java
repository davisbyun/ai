package com.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
   
	@GetMapping(value = "/")
	public String main() {
		return "main"; // 메인페이지는 추후 등록된 상품의 목록을 보여주게 작성할 예정임
	}
}