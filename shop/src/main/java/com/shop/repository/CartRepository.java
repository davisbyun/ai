package com.shop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shop.entity.Cart;

public interface CartRepository extends JpaRepository<Cart, Long> {
//cart라는 Entity의 퀴리문을 만드는 환경
	
	
}