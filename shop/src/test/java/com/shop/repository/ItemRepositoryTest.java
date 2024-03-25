package com.shop.repository;

import java.time.LocalDateTime;
import java.util.List;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;

import com.shop.constant.ItemSellStatus;
import com.shop.entity.Item;

@SpringBootTest
@TestPropertySource( locations ="classpath:application.properties")
public class ItemRepositoryTest {
   
	@Autowired
	ItemRepository itemRepository;
	
	
	@DisplayName("상품 저장 테스트")
	public void createItemTest() {
		Item item = new Item();
		item.setItemNm("테스트상품");
		item.setPrice(10000);
		item.setItemDetail("테스트상품 상세설명");
		item.setItemSellStatus(ItemSellStatus.SELL);
		item.setStockNumber(100);
		item.setRegTime(LocalDateTime.now());
		item.setUpdateTime(LocalDateTime.now());
		Item savedItem = itemRepository.save(item);
		System.out.println( savedItem.toString());
	}
	
	
	
	@DisplayName("상품 조회 테스트")
	public void findByItemTest() {
		createItemList();
		List<Item> itemList=itemRepository.findByItemNm("테스트상품1");
		
		for( Item item  : itemList) {
			System.out.println( "이곳은 상품조회 테스트 부분 자료 ==> " + item.toString());
		}
	}


	private void createItemList() {
		
		for( int i=1; i<=10; i++) {
			Item item = new Item();
			item.setItemNm("테스트상품" + i);
			item.setPrice(10000 + i);
			item.setItemDetail("테스트상품 상세설명" + i);
			item.setItemSellStatus(ItemSellStatus.SELL);
			item.setStockNumber(100);
			item.setRegTime(LocalDateTime.now());
			item.setUpdateTime(LocalDateTime.now());
			Item savedItem = itemRepository.save(item);
			System.out.println( savedItem.toString());
		}
		
	}
	
	@Test
	@DisplayName("상풍명, 상품상세설명 or  테스트")
	public void findByItemNmOrItemDetailTest() {
		createItemList();
		List<Item> itemList =
		      itemRepository.findByItemNmOrItemDetail("테스트상품2", "테스트상품상세설명1");
		
		for(Item item   : itemList ) {
			System.out.println( "~~~" +  item.toString());
		}
	}
	
	@Test
	@DisplayName("@Query를 이용한 상품 조회 테스트")
	public void findByItemDetailTest() {
		createItemList();
		List<Item> itemList = itemRepository.findByItemDetail("상세설명");
		for( Item item : itemList ) {
			System.out.println( " @Query를 ==>  "+ item.toString()   );
		}
	}
	
	
	@Test
	@DisplayName("@nativeQuery 이용한 상품 조회 테스트-- 이 방법으로만 해도 돼요!!")
	public void findByItemDetailByNative() {
		createItemList();
		List<Item> itemList = itemRepository.findByItemDetailByNative("상세설명");
		for( Item item : itemList ) {
			System.out.println( " @nativeQuery를 ==>  "+ item.toString()   );
		}
	}
	
	
	
}
