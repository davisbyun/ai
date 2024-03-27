package com.shop.entity;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import com.shop.constant.OrderStatus;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="orders")
@Getter
@Setter
public class Order {

	@Id
	@GeneratedValue
	@Column(name="order_id")
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="member_id")
	private Member member;
	
	private LocalDateTime orderDate;
	
	@Enumerated(EnumType.STRING)
	private OrderStatus orderStatus;
	
	@OneToMany(mappedBy="order")  //두개의 단방향을 양방향으로 설정
	private List<OrderItem> orderItems = new ArrayList<OrderItem>();
	
	private LocalDateTime regTime;  //배송기한
	private LocalDateTime updateTime;  
	
	
}