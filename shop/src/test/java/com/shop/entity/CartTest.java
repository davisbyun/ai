package com.shop.entity;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.TestPropertySource;

import com.shop.dto.MemberFormDto;
import com.shop.repository.CartRepository;
import com.shop.repository.MemberRepository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityNotFoundException;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@SpringBootTest
@Transactional     //All, Nothing 처리
@TestPropertySource(locations="classpath:application.properties")
public class CartTest {
	
	@Autowired
	CartRepository cartRepository;
	
	@Autowired
	MemberRepository memberRepository;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@PersistenceContext
	EntityManager em;   //entity 객체를 관리하는 객체
	
	public Member createMember() {
		MemberFormDto memberFormDto = new MemberFormDto();
		memberFormDto.setEmail("test@email.com");
		memberFormDto.setName("홍길동");
		memberFormDto.setAddress("서울시마포구합정동");
		memberFormDto.setPassword("1234");
		return Member.createMember(memberFormDto, passwordEncoder);
	}
	
	@Test
	@DisplayName("장바구니 회원 엔티티 메핑 조회 테스트")
	
	public void findCartAndMemberTest() {
		Member member = createMember();
		memberRepository.save(member);
		
		Cart cart = new Cart();
		cart.setMember(member);  
		cartRepository.save(cart);  //mysql cart 테이블에 insert
		
		em.flush();  //트랜젝션이 끝날 때 flush() 호출하여 데이터베이스에 반영하라.
		em.clear();  //JPA 영속성 컨텐트를 비워라.
		
		
		Cart savedCart = cartRepository.findById(cart.getId())
                        .orElseThrow(EntityNotFoundException::new );
		assertEquals( savedCart.getMember().getId(), member.getId() );
						//기대값(input)  				 실제값(db)
	}
}