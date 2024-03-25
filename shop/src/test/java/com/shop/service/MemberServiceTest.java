package com.shop.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.TestPropertySource;
import org.springframework.transaction.annotation.Transactional;

import com.shop.dto.MemberFormDto;
import com.shop.entity.Member;

@SpringBootTest
@Transactional
@TestPropertySource(locations="classpath:application.properties")
public class MemberServiceTest {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	public Member createMember() {
		MemberFormDto memberFormDto = new MemberFormDto();
		memberFormDto.setEmail("test@email.com");
		memberFormDto.setName("변홍길동");
		memberFormDto.setAddress("서울시 강동구 천호동");
		memberFormDto.setPassword("1234");
		return Member.createMember(memberFormDto, passwordEncoder);
		
	}
	
	@Test
	@DisplayName("회원가입 테스트")
	public void saveMember() {
		Member member = createMember();
		Member savedMember = memberService.saveMember(member);
		//자바에 있는 것-->member.getEmail(), DB에서 가저온 것--> savedMember.getEmail()
		assertEquals(member.getEmail(), savedMember.getEmail());
		assertEquals(member.getName(), savedMember.getName());
		assertEquals(member.getAddress(), savedMember.getAddress());
		assertEquals(member.getPassword(), savedMember.getPassword());
		assertEquals(member.getRole(), savedMember.getRole());
	}
	
	@Test
	@DisplayName("중복 회원가입 테스트")
	public void saveDuplicateMemberTest() {
		Member member1 = createMember();
		Member member2 = createMember();
		
		memberService.saveMember(member1);
		
		Throwable e = assertThrows(IllegalStateException.class, ()->{
								   memberService.saveMember(member2); 	});
		assertEquals("이미 가입된 회원입니다.", e.getMessage());
		
		
		
		
	}
}
