package com.spring.restaurant.springmvc;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.restaurant.impl.RestaurantDao;
import com.spring.restaurant.impl.RestaurantDo;


@Controller
public class RestaurantControllerSpring {
	
	@Autowired
	RestaurantDao restaurantDao;
	
	@RequestMapping(value="/mainRestaurant.do")
	public String mainRestauant() {
		System.out.println("mainRestaurant() ==> ");
		
		return "mainRestaurantView";
	}
	
	@RequestMapping(value="/insertRestaurant.do")
	public String insertRestauant() {
		System.out.println("insertRestaurant() ==> ");
		
		//뷰어호출
		return "insertRestaurantView";
	}

	@RequestMapping(value="/insertProcRestaurant.do")
	public String insertProcRestaurant(RestaurantDo rdo) {		
		System.out.println("insertProcRestaurant()(Spring JDBC) ==> ");		
		
		System.out.println("name : " + rdo.getName());
		System.out.println("tel : " + rdo.getTel());
		System.out.println("people : " + rdo.getPeople());
		System.out.println("month : " + rdo.getMonth());
		System.out.println("date : " + rdo.getDate());
		System.out.println("time : " + rdo.getTime());
		
		restaurantDao.insertRestaurant(rdo);
		
		return "redirect:getRestaurantList.do";
	}
	
	@RequestMapping(value="/getRestaurant.do")
	public String getRestaurant(RestaurantDo rdo, RestaurantDao rdao, Model model) {
		System.out.println("GetRestaurantController()(Spring JDBC) ==> ");
		
		//DO에 num 값이 제대로 설정되어있는지 확인만 함
		System.out.println("num : " + rdo.getNum());
		
		RestaurantDo restaurant = restaurantDao.getRestaurant(rdo);
		
		model.addAttribute("restaurant", restaurant);
		
		return "getRestaurantView";
	}
		
	@RequestMapping(value="/getRestaurantList.do")
	public String getRestaurantList(RestaurantDo rdo, RestaurantDao rdao, Model model) {
		System.out.println("getRestaurantList()(Spring JDBC) ==> ");
		
		ArrayList<RestaurantDo> rlist = restaurantDao.getRestaurantList();
		
		model.addAttribute("rList", rlist);
		
		return "getRestaurantListView";
	}
	
	@RequestMapping(value="/modifyRestaurant.do")
	public String modifyRestaurant(RestaurantDo rdo, RestaurantDao rdao, Model model) {
		
		System.out.println("ModifyRestaurantController()(Spring JDBC) ==> ");
		System.out.println("num : " + rdo.getNum());
		
		RestaurantDo restaurant = restaurantDao.getRestaurant(rdo);
		
		model.addAttribute("restaurant", restaurant);
		
		return "getModifyView";
	}
	
	@RequestMapping(value="/modifyProcRestaurant.do")
	public String modifyProcRestaurant(RestaurantDo rdo, RestaurantDao rdao, Model model) {
		
		System.out.println("ModifyProcRestaurantController()(Spring JDBC) ==> ");
		
		//수정된 데이터가 DO로 들어오면 DO를 이용하여 저장 (업데이트)
		restaurantDao.updateRestaurant(rdo);
		
		return "redirect:getRestaurantList.do";
	}
	
	@RequestMapping(value="/deleteRestaurant.do")
	public String deleteRestaurant(RestaurantDo rdo, RestaurantDao rdao, Model model) {
		
		System.out.println("DeleteRestaurantController()(Spring JDBC) ==>");
		
		restaurantDao.deleteRestaurant(rdo);
		
		return "redirect:getRestaurantList.do";
		
	}
	
	@RequestMapping(value="/searchRestaurantList.do")
	public String searchRestaurantList(
			@RequestParam(value="searchCon") String searchCon,
			@RequestParam(value="searchKey") String searchKey,
			RestaurantDao rdao,
			Model model) {
		
		System.out.println("searchRestaurantList.do(Spring JDBC) ==> ");
		System.out.println("searchCon : " + searchCon);
		System.out.println("searchKey: " + searchKey);
		
		ArrayList<RestaurantDo> rList = restaurantDao.searchRestaurantList(searchCon, searchKey);
		
		model.addAttribute("rList", rList);
		
		return "getRestaurantListView";
	}
}
