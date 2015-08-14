package com.panipuri.viewbuilder;

import java.util.List;
import java.util.StringTokenizer;

import com.panipuri.vo.ItemVo;

public class ItemViewBuilder {
	public void updateItemListForView(List<ItemVo> itemList) {
		
		
	}
	public void updateItemForView(ItemVo item) {
		if(null != item) {
			if(null != item.getItemDetails()) {
				StringTokenizer tokens = new StringTokenizer(item.getItemDetails(), ",");
				
			}
		}
	}
}
