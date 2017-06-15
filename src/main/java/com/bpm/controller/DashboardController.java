package com.bpm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.bpm.model.DashboardDetails;
import com.bpm.service.DashboardServiceInf;
import com.bpm.service.UserService;
import com.google.gson.Gson;


@RestController
@RequestMapping("/dashboard")
public class DashboardController {

	 
    @Autowired
    UserService userService;  //Service which will do all data retrieval/manipulation work
    
	@Autowired
	DashboardServiceInf dashboardService; 
	
	/**
	 * This service returns Dashboard details
	 * @return String
	 */
	@RequestMapping(value = "/getDashboardDetails", method = RequestMethod.GET)
	public @ResponseBody
	String getDashBoardDetails(HttpServletRequest request) {
		System.out.println("Dashboardcontroller : getDashBoardDetails");
		String response = null;
    	String userId ="rahil";

    	List<DashboardDetails> dashboardBeanList = dashboardService.getDashBoardDetails(userId);
    	response = new Gson().toJson(dashboardBeanList);
    	
    	return response;
	}
	

}
