package com.shop.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.dto.ItemDto;
import com.shop.dto.StudentDto;

@Controller
@RequestMapping( value="/th")
public class ThymleafExController {

	@GetMapping( value="/ex08")
	public String thymeleafEx07() {
		return "thymeleafEx07"; 
	}
	
	@GetMapping( value="/ex01")
	public String thymeleafEx01( Model model) {
		model.addAttribute("data",  "어렵지만 해보자!");
		model.addAttribute("data2",  "스프링 해보자!");
		return "thymeleafEx/thymeleafEx01"; 
	}
	
	@GetMapping( value="/ex02")
	public String thymeleafEx02( Model model) {
		ItemDto itemDto = new ItemDto();
		itemDto.setItemDetail("상세 설명");
		itemDto.setItemNm("테스트 상품1");
		itemDto.setPrice(10000);
		itemDto.setRegTime(LocalDateTime.now());
		model.addAttribute("i", itemDto  ); 
		// itemDto객체의 자료를 담아서 i변수 넣는다. i은 클라이언트 넘어갈 변수명
		return "thymeleafEx/thymeleafEx02";
	}
	
	@GetMapping(value="/ex05")
	public String thymeleafEx05(Model model) {
		List itemDtoList =new ArrayList<>();
		for(int i=1; i<=10; i++) {
			ItemDto itemDto = new ItemDto();
			itemDto.setItemDetail("상품 상세 설명" + i);
			itemDto.setItemNm("테스트 상품" + i);
			itemDto.setPrice(10000 + i);
			itemDto.setRegTime(LocalDateTime.now());
			itemDtoList.add(itemDto);
		}
		model.addAttribute("itemDtoList", itemDtoList);
		model.addAttribute("test", "test2");
		return "thymeleafEx/thymeleafEx05";
	}	
	
	@GetMapping(value="/ex06")
	public String thymeleafEx06(Model model) {
		
		return "thymeleafEx/thymeleafEx06";
	}	
	
	@GetMapping(value="/ex09")
    public String thymeleafEx09( Model model) {
		
       List nameList = new ArrayList<>();
       for( int i=0; i < 10; i++) {
          nameList.add("윤혜정"+i);
       }
       model.addAttribute("nameList",nameList);
       return "thymeleafEx/thymeleafEx09";
       }
    
	@GetMapping(value="/ex10")
    public String thymeleafEx10( Model model) {
		
       List<StudentDto> studentList = new ArrayList<StudentDto>();
       for( int i=0; i < 10; i++) {
    	  StudentDto st = new StudentDto();
    	  st.setName("정현희" + i);
    	  st.setPhone("0100" + i);
    	  st.setHobby("컴퓨터" + i);
   
          studentList.add( st );
       }
       model.addAttribute("stList", studentList );
       
       return "thymeleafEx/thymeleafEx10";
     }
	
	@GetMapping(value="/ex11")
    public String thymeleafEx11( String param1, String param2, Model model ) {
		System.out.println( "param1 ==> "+ param1 );
		System.out.println( "param2 ==> "+ param2 );
		String answer =param1 + "!!!!###" + param2;
		model.addAttribute("reponse", answer);
		return "thymeleafEx/th1101"; 
	}
	
	// <a th:href="@{/th/ex12( name='정현희', phone='010', hobby='컴퓨터')}" >
	@GetMapping(value="/ex12")
    public String thymeleafEx12( String name, String phone, String hobby, Model model ) {
		System.out.println( "name==>" + name );
		System.out.println( "phone==>" + phone );
		System.out.println( "hobby==>" + hobby);
		
		StudentDto  st = new StudentDto();
		st.setName(name);
		st.setPhone(phone);
		st.setHobby(hobby);
		
		model.addAttribute("response", name+"님 로그인했어요");
		return "thymeleafEx/th1201";
	}	
	
	@GetMapping(value="/ex13")
    public String thymeleafEx13( String name, String score, Model model ) {
		System.out.println( "name==>" + name );
		System.out.println( "score==>" + score );
		int jumsu = Integer.parseInt(score);
		String ok="불합격";
		if (jumsu >= 60) {
			 ok="합격";
		}
		model.addAttribute("response", name + "님 " + ok + "했습니다.");
		return "thymeleafEx/th1301"; 
	}
}
