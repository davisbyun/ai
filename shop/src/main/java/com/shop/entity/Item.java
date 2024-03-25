package com.shop.entity;

import java.time.LocalDateTime;
import com.shop.constant.ItemSellStatus;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table( name="item" )
@Setter
@Getter
@ToString
public class Item{
   
	@Id
	@Column( name ="item_id" )
	@GeneratedValue( strategy = GenerationType.AUTO )
	private Long id;
	
	@Column( nullable = false, length=50 )
	private String itemNm;
	
	@Column( name="price", nullable=false)
	private int price;
	
	@Column( nullable=false)
	private int stockNumber;
	
	@Lob
	@Column(nullable=false)
	private String itemDetail;
	
	private ItemSellStatus itemSellStatus;
	private LocalDateTime regTime;
	private LocalDateTime updateTime;
	
	
}
