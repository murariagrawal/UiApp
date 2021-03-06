package com.panipuri.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.panipuri.service.CustomerInformationFetchService;
import com.panipuri.vo.AddressVo;
import com.panipuri.vo.ItemVo;

@Controller
public class OrderInitiationController {
	CustomerInformationFetchService customerInformationFetchService;
	
	@RequestMapping(method = RequestMethod.POST, value="/deliveryDetails")
	public ModelAndView showDeliveryDetails(final HttpServletRequest request, @RequestParam(value = "orderId") String orderId) {
		System.out.println("in controller");
		ModelAndView mv = null;
		Enumeration<String> paramNames = request.getParameterNames();
        List<ItemVo> selectedItems = new ArrayList<ItemVo>();
        if (paramNames != null) {
            String paramName = null;
            String itemId = null;
            String itemQuantity = null;
            while (paramNames.hasMoreElements()) {
                paramName = paramNames.nextElement();
                String[] paramValues = paramName.split("~");
                if (null != paramValues) {
                    if ("ITEM".equalsIgnoreCase(paramValues[0])) {
                    	ItemVo selectedItem = new ItemVo();
                    	itemId = paramValues[1];
                    	itemQuantity = request.getParameter(paramName);
                        selectedItem.setItemId(new Long(itemId));
                        if(null!=itemQuantity && !itemQuantity.trim().equals(""))
                        selectedItem.setItemQuantity(new Integer(itemQuantity));
                        if(selectedItem.getItemQuantity() >0) {
                        	selectedItems.add(selectedItem);
                        }                       
                    }
                }
            }            
        }
        
        mv = new ModelAndView("deliveryDetails");
        mv.addObject("orderId", orderId);
		return mv;
	}
	
	@RequestMapping(method = RequestMethod.POST, value="/fetchDeliveryDetails")
	public ModelAndView fetchDeliveryDetails() {
		System.out.println("in fetch deliverydetails controller");
		ModelAndView mv = null;
		List<AddressVo> addressList = getAddressList();
		mv = new ModelAndView("deliveryDetails");
		mv.addObject("addressList",addressList);
		return mv;
	}

	private List<AddressVo> getAddressList() {
		List<AddressVo> addressList = new ArrayList<AddressVo>();
		AddressVo address1= new AddressVo();
		address1.setAddressId(123);
		address1.setAddressLine1("D 303, Kool homes, Behind Maratha mandir");
		address1.setAddressline2("NDA road, Bavdhan");
		address1.setCity("Pune");
		address1.setState("Maharashtra");
		address1.setZipcode("411021");
		AddressVo address2= new AddressVo();
		address2.setAddressId(123);
		address2.setAddressLine1("D 303, Kool homes, Behind Maratha mandir");
		address2.setAddressline2("NDA road, Bavdhan");
		address2.setCity("Pune");
		address2.setState("Maharashtra");
		address2.setZipcode("411021");
		addressList.add(address1);
		addressList.add(address2);
		return addressList;
	}
	
}
