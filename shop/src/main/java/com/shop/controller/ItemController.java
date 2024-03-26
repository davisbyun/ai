package com.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ItemController {

	@GetMapping(value="/admin/item/new")
	public String imemForm() {
		return "/item/itemForm";
	}
	
	
}
