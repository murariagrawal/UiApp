package com.panipuri.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import com.panipuri.vo.AddressVo;

@Component
@Lazy
public class CustomerInformationFetchService {

	
	public List<AddressVo> getDeliveryAddressList(String phonenNumeber) {
		List<AddressVo> addressList = new ArrayList<AddressVo>();
		AddressVo deliveryAddress1 = new AddressVo();
		deliveryAddress1.setAddressId(1121);
		deliveryAddress1.setAddressLine1("D 303, Kool homes");
		deliveryAddress1.setAddressline2("Nda Road, bavdhan");
		deliveryAddress1.setCity("Pune");
		deliveryAddress1.setContactNumber("9673142211");
		deliveryAddress1.setState("Maharashtra");
		deliveryAddress1.setZipcode("411021");
		AddressVo deliveryAddress2 = new AddressVo();
		deliveryAddress2.setAddressId(1121);
		deliveryAddress2.setAddressLine1("D 303, Kool homes");
		deliveryAddress2.setAddressline2("Nda Road, bavdhan");
		deliveryAddress2.setCity("Pune");
		deliveryAddress2.setContactNumber("9673142211");
		deliveryAddress2.setState("Maharashtra");
		deliveryAddress2.setZipcode("411021");
		addressList.add(deliveryAddress1);
		addressList.add(deliveryAddress2);
		return addressList;
	}
	
}
