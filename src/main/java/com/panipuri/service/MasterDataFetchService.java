package com.panipuri.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import com.panipuri.vo.ItemVo;


@Component
@Lazy
public class MasterDataFetchService {
	public List<ItemVo> fetchAllAvailableItem() {
		List<ItemVo> itemList = new ArrayList<ItemVo>();
		ItemVo item1 = new ItemVo();
		item1.setItemId(1212);
		item1.setItemPrice(new BigDecimal(45));
		item1.setItemName("Pack of 8");
		item1.setItemDetails("8 pcs of puri,1 bottle of mineral water(250 ml),75 gms of potato topping,50 gms of onion topping,spoon,paper napkin");
		ItemVo item2 = new ItemVo();
		item2.setItemId(1213);
		item2.setItemPrice(new BigDecimal(80));
		item2.setItemName("Pack of 16");
		item2.setItemDetails("16 pcs of puri,1 bottle of mineral water(500 ml),150 gms of potato topping,100 gms of onion topping,spoon,paper napkin");
		ItemVo item3 = new ItemVo();
		item3.setItemId(1214);
		item3.setItemPrice(new BigDecimal(145));
		item3.setItemName("Pack of 32");
		item3.setItemDetails("32 pcs of puri,1 bottle of mineral water(1000 ml),300 gms of potato topping,200 gms of onion topping,spoon,paper napkin");
		itemList.add(item1);
		itemList.add(item2);
		itemList.add(item3);
		
		return itemList;
	}
}
